#!/usr/bin/env python3
"""
Enhanced WoW API Parser
Advanced parsing for WoW API documentation with improved accuracy.
"""

import requests
from bs4 import BeautifulSoup, Tag
import re
import time
from typing import Dict, List, Optional, Tuple, Union
from urllib.parse import urljoin
from models import APIFunction, APIArgument, APIReturn, APIDatabase


class EnhancedWoWAPIParser:
    """Enhanced parser for WoW API documentation"""
    
    def __init__(self, base_url="https://warcraft.wiki.gg"):
        self.base_url = base_url
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36'
        })
        self.db = APIDatabase()
    
    def get_page(self, url: str, retries: int = 3) -> Optional[BeautifulSoup]:
        """Fetch and parse a web page with retry logic"""
        for attempt in range(retries):
            try:
                response = self.session.get(url, timeout=30)
                response.raise_for_status()
                return BeautifulSoup(response.content, 'html.parser')
            except requests.exceptions.HTTPError as e:
                if response.status_code == 404:
                    print(f"Page not found (404) for {url}: {e}")
                    return None  # Don't retry on 404, page doesn't exist
                print(f"HTTP error on attempt {attempt + 1} for {url}: {e}")
                if attempt < retries - 1:
                    time.sleep(2 ** attempt)  # Exponential backoff
                else:
                    print(f"Failed to fetch {url} after {retries} attempts")
                    return None
            except Exception as e:
                print(f"Attempt {attempt + 1} failed for {url}: {e}")
                if attempt < retries - 1:
                    time.sleep(2 ** attempt)  # Exponential backoff
                else:
                    print(f"Failed to fetch {url} after {retries} attempts")
                    return None
    
    def extract_api_functions_from_main_page(self) -> List[Dict]:
        """Extract all API functions from the main WoW API page"""
        main_url = f"{self.base_url}/wiki/World_of_Warcraft_API"
        soup = self.get_page(main_url)
        
        if not soup:
            return []
        
        api_functions = []
        
        # Find all links to API pages
        api_links = soup.find_all('a', href=re.compile(r'/wiki/API_'))
        
        for link in api_links:
            href = link.get('href')
            if not href:
                continue
            
            # Extract function name
            function_name = href.split('/wiki/API_')[-1]
            
            # Skip non-function pages
            if function_name.lower() in ['change_summaries', 'types', 'events']:
                continue
            
            # Get preview information from link context
            context_info = self._extract_link_context(link)
            
            api_functions.append({
                'name': function_name,
                'url': urljoin(self.base_url, href),
                'context': context_info
            })
        
        return api_functions
    
    def _extract_link_context(self, link: Tag) -> Dict:
        """Extract context information from around the API link"""
        context = {
            'params_preview': '',
            'returns_preview': '',
            'description_preview': ''
        }
        
        # Check parent elements for context
        parent = link.parent
        if parent:
            text = parent.get_text()
            
            # Extract parameters: functionName(param1, param2)
            params_match = re.search(r'\\(([^)]+)\\)', text)
            if params_match:
                context['params_preview'] = params_match.group(1)
            
            # Extract return values: : returnValue
            returns_match = re.search(r':\\s*([^\\n]+)', text)
            if returns_match:
                context['returns_preview'] = returns_match.group(1)
        
        return context
    
    def parse_function_details(self, url: str) -> Optional[APIFunction]:
        """Parse detailed information for a single API function"""
        soup = self.get_page(url)
        if not soup:
            return None
        
        try:
            # Extract function name from URL
            function_name = url.split('/wiki/API_')[-1]
            
            # Create APIFunction object
            api_func = APIFunction(name=function_name, url=url)
            
            # Extract main content
            content_div = soup.find('div', class_='mw-parser-output')
            if not content_div:
                return api_func
            
            # Extract signature
            api_func.signature = self._extract_function_signature(content_div)
            
            # Extract description
            api_func.description = self._extract_function_description(content_div)
            
            # Extract arguments
            api_func.arguments = self._extract_function_arguments(content_div)
            
            # Extract return values
            api_func.returns = self._extract_function_returns(content_div)
            
            # Extract additional information
            api_func.patch_info = self._extract_patch_information(content_div)
            api_func.properties = self._extract_function_properties(soup)
            api_func.examples = self._extract_examples(content_div)
            api_func.see_also = self._extract_see_also(content_div)
            
            return api_func
            
        except Exception as e:
            print(f"Error parsing {url}: {e}")
            return None
    
    def _extract_function_signature(self, content: Tag) -> str:
        """Extract the function signature"""
        # Look for <pre> tags containing function signatures
        pre_tags = content.find_all('pre')
        
        for pre in pre_tags:
            text = pre.get_text().strip()
            # Skip command examples (start with /)
            if text.startswith('/'):
                continue
            # Look for assignment patterns (returnValues = functionCall())
            if '=' in text and ('(' in text and ')' in text):
                return text
            # Look for simple function calls
            if '(' in text and ')' in text and not text.startswith('>'):
                return text
        
        return ""
    
    def _extract_function_description(self, content: Tag) -> str:
        """Extract the function description"""
        # Find the first meaningful paragraph
        paragraphs = content.find_all('p')
        
        for p in paragraphs:
            text = p.get_text().strip()
            # Skip empty or very short paragraphs
            if len(text) > 20 and not text.startswith('From') and 'API reference' not in text:
                return self._clean_description_text(text)
        
        return ""
    
    def _clean_description_text(self, text: str) -> str:
        """Clean description text"""
        # Remove wiki markup artifacts
        text = re.sub(r'\\[\\d+\\]', '', text)  # Remove citation numbers
        text = re.sub(r'\\s+', ' ', text)  # Normalize whitespace
        return text.strip()
    
    def _extract_function_arguments(self, content: Tag) -> List[APIArgument]:
        """Extract function arguments"""
        arguments = []
        
        # Find Arguments section
        args_header = self._find_section_header(content, 'Arguments')
        if not args_header:
            return arguments
        
        # Find the definition list following the Arguments header
        dl = self._find_next_definition_list(args_header)
        if dl:
            arguments = self._parse_parameter_list(dl)
        
        return arguments
    
    def _extract_function_returns(self, content: Tag) -> List[APIReturn]:
        """Extract function return values"""
        returns = []
        
        # Find Returns section
        returns_header = self._find_section_header(content, 'Returns')
        if not returns_header:
            return returns
        
        # Find the definition list following the Returns header
        dl = self._find_next_definition_list(returns_header)
        if dl:
            returns = self._parse_return_list(dl)
        
        return returns
    
    def _find_section_header(self, content: Tag, section_name: str) -> Optional[Tag]:
        """Find a section header by name"""
        # Look for span with id containing the section name
        header = content.find('span', {'id': section_name})
        if not header:
            # Try case-insensitive search
            header = content.find('span', {'id': re.compile(section_name, re.IGNORECASE)})
        return header
    
    def _find_next_definition_list(self, header: Tag) -> Optional[Tag]:
        """Find the next definition list after a header"""
        if not header:
            return None
        
        # Look for dl in the same parent or next elements
        current = header.parent
        
        # Check current element and next siblings
        for _ in range(10):  # Limit search depth
            if current:
                dl = current.find('dl')
                if dl:
                    return dl
                current = current.find_next_sibling()
            else:
                break
        
        return None
    
    def _parse_parameter_list(self, dl: Tag) -> List[APIArgument]:
        """Parse a definition list into APIArgument objects"""
        arguments = []
        current_arg = None
        
        for child in dl.children:
            if hasattr(child, 'name'):
                if child.name == 'dt':
                    # Save previous argument
                    if current_arg:
                        arguments.append(current_arg)
                    
                    # Start new argument
                    param_name = child.get_text().strip()
                    current_arg = APIArgument(name=param_name)
                
                elif child.name == 'dd' and current_arg:
                    # Extract type and description
                    type_info, description = self._parse_parameter_details(child)
                    current_arg.type = type_info
                    current_arg.description = description
                
                elif child.name == 'dl' and current_arg:
                    # Nested parameters
                    nested_args = self._parse_parameter_list(child)
                    current_arg.nested = nested_args
        
        # Don't forget the last argument
        if current_arg:
            arguments.append(current_arg)
        
        return arguments
    
    def _parse_return_list(self, dl: Tag) -> List[APIReturn]:
        """Parse a definition list into APIReturn objects"""
        returns = []
        current_ret = None
        
        for child in dl.children:
            if hasattr(child, 'name'):
                if child.name == 'dt':
                    # Save previous return value
                    if current_ret:
                        returns.append(current_ret)
                    
                    # Start new return value
                    ret_name = child.get_text().strip()
                    current_ret = APIReturn(name=ret_name)
                
                elif child.name == 'dd' and current_ret:
                    # Extract type and description
                    type_info, description = self._parse_parameter_details(child)
                    current_ret.type = type_info
                    current_ret.description = description
                
                elif child.name == 'dl' and current_ret:
                    # Nested return values
                    nested_rets = self._parse_return_list(child)
                    current_ret.nested = nested_rets
        
        # Don't forget the last return value
        if current_ret:
            returns.append(current_ret)
        
        return returns
    
    def _parse_parameter_details(self, dd_element: Tag) -> Tuple[str, str]:
        """Parse parameter details from a dd element"""
        # Extract type information (usually in font tags)
        type_info = ""
        font_elem = dd_element.find('font')
        if font_elem:
            type_info = font_elem.get_text().strip()
            # Remove font element to get clean description
            font_elem.decompose()
        
        # Get description
        description = dd_element.get_text().strip()
        description = self._clean_description_text(description)
        
        return type_info, description
    
    def _extract_patch_information(self, content: Tag) -> str:
        """Extract patch information"""
        # Look for patch sections
        for section_name in ['Patch', 'Patch_changes', 'Patch changes']:
            patch_header = self._find_section_header(content, section_name)
            if patch_header:
                # Find next text content
                next_elem = patch_header.parent
                while next_elem:
                    if next_elem.name == 'ul':
                        # Extract from list items
                        items = next_elem.find_all('li')
                        if items:
                            return items[0].get_text().strip()
                    elif next_elem.name == 'p':
                        text = next_elem.get_text().strip()
                        if text:
                            return text
                    next_elem = next_elem.find_next_sibling()
        
        return ""
    
    def _extract_function_properties(self, soup: BeautifulSoup) -> List[str]:
        """Extract function properties from sidebar"""
        properties = []
        
        # Look for Properties section in sidebar tables
        props_header = soup.find('th', string='Properties')
        if props_header:
            props_cell = props_header.find_next('td')
            if props_cell:
                for div in props_cell.find_all('div'):
                    prop_text = div.get_text().strip()
                    if prop_text:
                        properties.append(prop_text)
        
        return properties
    
    def _extract_examples(self, content: Tag) -> List[str]:
        """Extract code examples"""
        examples = []
        
        # Look for Example section
        example_header = self._find_section_header(content, 'Example')
        if example_header:
            # Find pre tags after the example header
            current = example_header.parent
            while current:
                pre_tags = current.find_all('pre')
                for pre in pre_tags:
                    example_text = pre.get_text().strip()
                    if example_text and not example_text.startswith('>'):
                        examples.append(example_text)
                current = current.find_next_sibling()
                if len(examples) >= 3:  # Limit number of examples
                    break
        
        return examples
    
    def _extract_see_also(self, content: Tag) -> List[str]:
        """Extract 'See also' references"""
        see_also = []
        
        # Look for See also section
        see_also_header = self._find_section_header(content, 'See_also')
        if see_also_header:
            # Find next ul element
            ul = see_also_header.parent.find_next('ul')
            if ul:
                for li in ul.find_all('li'):
                    link = li.find('a')
                    if link:
                        see_also.append(link.get_text().strip())
        
        return see_also
    
    def scrape_all_functions(self, limit: Optional[int] = None) -> APIDatabase:
        """Scrape all API functions and return populated database"""
        print("Fetching list of API functions...")
        functions = self.extract_api_functions_from_main_page()
        
        if limit:
            functions = functions[:limit]
        
        print(f"Found {len(functions)} functions to process")
        
        successful = 0
        failed = 0
        
        for i, func_info in enumerate(functions):
            print(f"Processing {func_info['name']} ({i+1}/{len(functions)})...")
            
            try:
                api_func = self.parse_function_details(func_info['url'])
                if api_func:
                    self.db.add_function(api_func)
                    successful += 1
                else:
                    failed += 1
                    print(f"  Failed to parse {func_info['name']}")
                
                # Rate limiting
                time.sleep(0.5)
                
            except Exception as e:
                print(f"  Error processing {func_info['name']}: {e}")
                failed += 1
        
        print(f"\nScraping completed:")
        print(f"  Successful: {successful}")
        print(f"  Failed: {failed}")
        
        return self.db


if __name__ == "__main__":
    parser = EnhancedWoWAPIParser()
    
    # Test with a small number of functions first
    db = parser.scrape_all_functions(limit=10)
    
    # Save results
    db.save_to_json('E:\\JavaScript\\WoW\\warcraft.wiki-crawler\\python\\api_data.json')

    # Print statistics
    stats = db.get_statistics()
    print("\nDatabase Statistics:")
    for key, value in stats.items():
        print(f"  {key}: {value}")
