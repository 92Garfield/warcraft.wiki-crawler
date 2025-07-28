#!/usr/bin/env python3
"""
WoW API Documentation Scraper
Scrapes API function lists from warcraft.wiki.gg and generates JSDoc documentation.
"""

import requests
from bs4 import BeautifulSoup
import re
import json
import os
from urllib.parse import urljoin, urlparse
import time
from typing import Dict, List, Optional, Tuple


class WoWAPIParser:
    """Parser for WoW API documentation from warcraft.wiki.gg"""
    
    def __init__(self, base_url="https://warcraft.wiki.gg"):
        self.base_url = base_url
        self.session = requests.Session()
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        })
    
    def get_page(self, url: str) -> Optional[BeautifulSoup]:
        """Fetch and parse a web page"""
        try:
            response = self.session.get(url)
            response.raise_for_status()
            return BeautifulSoup(response.content, 'html.parser')
        except Exception as e:
            print(f"Error fetching {url}: {e}")
            return None
    
    def extract_api_list(self, soup: BeautifulSoup) -> List[Dict]:
        """Extract API function list from the main API page"""
        api_functions = []
        
        # Find all API function links
        api_links = soup.find_all('a', href=re.compile(r'/wiki/API_'))
        
        for link in api_links:
            href = link.get('href')
            if not href or 'API_' not in href:
                continue
                
            # Extract function name from href
            function_name = href.split('API_')[-1]
            
            # Skip certain pages that aren't actual functions
            if function_name in ['change_summaries', 'types']:
                continue
            
            # Extract parameters and return values from the link text and surrounding context
            parent = link.parent
            params_match = None
            returns_match = None
            
            if parent:
                text = parent.get_text()
                # Look for parameter pattern: functionName(param1, param2)
                params_match = re.search(r'\\((.*?)\\)', text)
                # Look for return pattern: : returnValue
                returns_match = re.search(r':\\s*([^\\n]+)', text)
            
            api_functions.append({
                'name': function_name,
                'url': urljoin(self.base_url, href),
                'params_preview': params_match.group(1) if params_match else '',
                'returns_preview': returns_match.group(1) if returns_match else ''
            })
        
        return api_functions
    
    def parse_api_detail(self, url: str) -> Optional[Dict]:
        """Parse detailed API function documentation"""
        soup = self.get_page(url)
        if not soup:
            return None
        
        # Extract function name from URL
        function_name = url.split('API_')[-1]
        
        # Find the function signature
        signature = self._extract_signature(soup)
        
        # Extract description
        description = self._extract_description(soup)
        
        # Extract arguments
        arguments = self._extract_arguments(soup)
        
        # Extract return values
        returns = self._extract_returns(soup)
        
        # Extract additional info
        patch_info = self._extract_patch_info(soup)
        properties = self._extract_properties(soup)
        
        return {
            'name': function_name,
            'signature': signature,
            'description': description,
            'arguments': arguments,
            'returns': returns,
            'patch_info': patch_info,
            'properties': properties,
            'url': url
        }
    
    def _extract_signature(self, soup: BeautifulSoup) -> str:
        """Extract function signature from the page"""
        # Look for <pre> tag containing the function signature
        pre_tags = soup.find_all('pre')
        for pre in pre_tags:
            text = pre.get_text().strip()
            if '(' in text and ')' in text and not text.startswith('/'):
                return text
        return ""
    
    def _extract_description(self, soup: BeautifulSoup) -> str:
        """Extract function description"""
        # Find the first paragraph after the navigation
        content_div = soup.find('div', class_='mw-parser-output')
        if content_div:
            # Get first meaningful paragraph
            for p in content_div.find_all('p'):
                text = p.get_text().strip()
                if text and len(text) > 20:  # Skip very short paragraphs
                    return text
        return ""
    
    def _extract_arguments(self, soup: BeautifulSoup) -> List[Dict]:
        """Extract function arguments/parameters"""
        arguments = []
        
        # Look for Arguments section
        args_section = soup.find('span', {'id': 'Arguments'})
        if args_section:
            # Find the next dl element
            dl = args_section.find_parent().find_next('dl')
            if dl:
                arguments = self._parse_definition_list(dl)
        
        return arguments
    
    def _extract_returns(self, soup: BeautifulSoup) -> List[Dict]:
        """Extract return values"""
        returns = []
        
        # Look for Returns section
        returns_section = soup.find('span', {'id': 'Returns'})
        if returns_section:
            # Find the next dl element
            dl = returns_section.find_parent().find_next('dl')
            if dl:
                returns = self._parse_definition_list(dl)
        
        return returns
    
    def _parse_definition_list(self, dl) -> List[Dict]:
        """Parse a definition list (dl) into structured data"""
        items = []
        current_item = None
        
        for child in dl.children:
            if child.name == 'dt':
                if current_item:
                    items.append(current_item)
                current_item = {
                    'name': child.get_text().strip(),
                    'type': '',
                    'description': ''
                }
            elif child.name == 'dd' and current_item:
                text = child.get_text().strip()
                
                # Extract type information (often in colored font tags)
                type_elem = child.find('font')
                if type_elem:
                    current_item['type'] = type_elem.get_text().strip()
                    # Remove type from description
                    type_elem.decompose()
                    text = child.get_text().strip()
                
                current_item['description'] = text
            elif child.name == 'dl' and current_item:
                # Nested definition list
                nested_items = self._parse_definition_list(child)
                if nested_items:
                    current_item['nested'] = nested_items
        
        if current_item:
            items.append(current_item)
        
        return items
    
    def _extract_patch_info(self, soup: BeautifulSoup) -> str:
        """Extract patch information"""
        patch_section = soup.find('span', {'id': 'Patch'}) or soup.find('span', {'id': 'Patch_changes'})
        if patch_section:
            next_elem = patch_section.find_parent().find_next('td')
            if next_elem:
                return next_elem.get_text().strip()
        return ""
    
    def _extract_properties(self, soup: BeautifulSoup) -> List[str]:
        """Extract function properties"""
        properties = []
        
        # Look for Properties section in sidebar
        props_section = soup.find('th', string='Properties')
        if props_section:
            next_td = props_section.find_next('td')
            if next_td:
                for div in next_td.find_all('div'):
                    prop_text = div.get_text().strip()
                    if prop_text:
                        properties.append(prop_text)
        
        return properties


class JSDocGenerator:
    """Generates JSDoc documentation from parsed API data"""
    
    def __init__(self, output_dir: str):
        self.output_dir = output_dir
        os.makedirs(output_dir, exist_ok=True)
    
    def generate_jsdoc(self, api_data: Dict) -> str:
        """Generate JSDoc string for a single API function"""
        lines = ['/**']
        
        # Description
        if api_data.get('description'):
            lines.append(f" * {api_data['description']}")
            lines.append(' *')
        
        # Parameters
        if api_data.get('arguments'):
            for arg in api_data['arguments']:
                param_type = self._map_wow_type_to_js(arg.get('type', 'any'))
                param_name = arg.get('name', '')
                param_desc = arg.get('description', '')
                lines.append(f" * @param {{{param_type}}} {param_name} {param_desc}")
        
        # Returns
        if api_data.get('returns'):
            if len(api_data['returns']) == 1:
                ret = api_data['returns'][0]
                ret_type = self._map_wow_type_to_js(ret.get('type', 'any'))
                ret_desc = ret.get('description', '')
                lines.append(f" * @returns {{{ret_type}}} {ret_desc}")
            else:
                # Multiple return values - use tuple or object
                return_types = []
                for ret in api_data['returns']:
                    ret_type = self._map_wow_type_to_js(ret.get('type', 'any'))
                    return_types.append(ret_type)
                lines.append(f" * @returns {{[{', '.join(return_types)}]}} Multiple return values")
                for ret in api_data['returns']:
                    ret_name = ret.get('name', '')
                    ret_desc = ret.get('description', '')
                    lines.append(f" * @returns {ret_name} {ret_desc}")
        
        # Additional info
        if api_data.get('patch_info'):
            lines.append(f" * @since {api_data['patch_info']}")
        
        if api_data.get('properties'):
            for prop in api_data['properties']:
                lines.append(f" * @note {prop}")
        
        if api_data.get('url'):
            lines.append(f" * @see {api_data['url']}")
        
        lines.append(' */')
        
        # Function declaration
        signature = api_data.get('signature', '')
        if signature:
            # Clean up signature for JavaScript
            js_signature = self._convert_signature_to_js(signature)
            lines.append(js_signature)
        else:
            function_name = api_data.get('name', 'unknownFunction')
            lines.append(f"function {function_name}() {{}}")
        
        return '\\n'.join(lines)
    
    def _map_wow_type_to_js(self, wow_type: str) -> str:
        """Map WoW API types to JavaScript/JSDoc types"""
        type_mapping = {
            'string': 'string',
            'number': 'number',
            'boolean': 'boolean',
            'table': 'object',
            'function': 'function',
            'nil': 'null',
            'UnitToken': 'string',
            'UnitId': 'string'
        }
        
        # Clean the type string
        clean_type = wow_type.lower().strip()
        return type_mapping.get(clean_type, 'any')
    
    def _convert_signature_to_js(self, signature: str) -> str:
        """Convert Lua function signature to JavaScript"""
        # Simple conversion - more sophisticated parsing could be added
        if '=' in signature:
            # Split return values and function call
            parts = signature.split('=', 1)
            if len(parts) == 2:
                returns = parts[0].strip()
                func_call = parts[1].strip()
                
                # Extract function name and parameters
                if '(' in func_call:
                    func_name = func_call[:func_call.index('(')]
                    params = func_call[func_call.index('(')+1:func_call.rindex(')')]
                    
                    # Convert to JavaScript function
                    return f"function {func_name}({params}) {{}}"
        
        return f"function {signature.split('(')[0] if '(' in signature else signature}() {{}}"
    
    def save_function_doc(self, api_data: Dict):
        """Save JSDoc for a single function to a file"""
        function_name = api_data.get('name', 'unknown')
        jsdoc = self.generate_jsdoc(api_data)
        
        filename = f"{function_name}.js"
        filepath = os.path.join(self.output_dir, filename)
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(jsdoc)
        
        print(f"Generated JSDoc for {function_name}")
    
    def generate_combined_doc(self, all_api_data: List[Dict]):
        """Generate a combined JSDoc file with all functions"""
        lines = ['/**']
        lines.append(' * World of Warcraft API Documentation')
        lines.append(' * Generated from warcraft.wiki.gg')
        lines.append(' */')
        lines.append('')
        
        for api_data in all_api_data:
            jsdoc = self.generate_jsdoc(api_data)
            lines.append(jsdoc)
            lines.append('')
        
        filepath = os.path.join(self.output_dir, 'wow-api.js')
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write('\\n'.join(lines))
        
        print(f"Generated combined JSDoc file: {filepath}")


def main():
    """Main execution function"""
    print("Starting WoW API documentation scraper...")
    
    # Initialize components
    parser = WoWAPIParser()
    jsdoc_generator = JSDocGenerator('/workspaces/warcraft.wiki-crawler/jsdocs')
    
    # First, get the main API page to extract function list
    print("Fetching main API page...")
    main_api_url = "https://warcraft.wiki.gg/wiki/World_of_Warcraft_API"
    soup = parser.get_page(main_api_url)
    
    if not soup:
        print("Failed to fetch main API page")
        return
    
    # Extract list of API functions
    print("Extracting API function list...")
    api_functions = parser.extract_api_list(soup)
    print(f"Found {len(api_functions)} API functions")
    
    # Parse detailed information for each function
    all_api_data = []
    failed_functions = []
    
    for i, func_info in enumerate(api_functions[:50]):  # Limit to first 50 for testing
        print(f"Processing {func_info['name']} ({i+1}/{min(50, len(api_functions))})...")
        
        try:
            api_detail = parser.parse_api_detail(func_info['url'])
            if api_detail:
                all_api_data.append(api_detail)
                jsdoc_generator.save_function_doc(api_detail)
            else:
                failed_functions.append(func_info['name'])
            
            # Be respectful to the server
            time.sleep(0.5)
            
        except Exception as e:
            print(f"Error processing {func_info['name']}: {e}")
            failed_functions.append(func_info['name'])
    
    # Generate combined documentation
    if all_api_data:
        print("Generating combined documentation...")
        jsdoc_generator.generate_combined_doc(all_api_data)
    
    # Report results
    print(f"\\nCompleted processing:")
    print(f"- Successfully processed: {len(all_api_data)} functions")
    print(f"- Failed: {len(failed_functions)} functions")
    
    if failed_functions:
        print("Failed functions:", failed_functions[:10])  # Show first 10 failures


if __name__ == "__main__":
    main()
