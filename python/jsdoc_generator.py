#!/usr/bin/env python3
"""
JSDoc Generator
Generates JSDoc documentation files from parsed WoW API data.
"""

import os
import re
from typing import List, Dict, Any
from models import APIFunction, APIArgument, APIReturn, APIDatabase, map_wow_type_to_typescript


class AdvancedJSDocGenerator:
    """Advanced JSDoc generator with multiple output formats"""
    
    def __init__(self, output_dir: str):
        self.output_dir = output_dir
        os.makedirs(output_dir, exist_ok=True)
    
    def generate_function_jsdoc(self, func: APIFunction) -> str:
        """Generate JSDoc for a single function"""
        lines = ['/**']
        
        # Description
        if func.description:
            # Split long descriptions into multiple lines
            desc_lines = self._wrap_text(func.description, 70)
            for line in desc_lines:
                lines.append(f' * {line}')
            lines.append(' *')
        
        # Parameters
        for arg in func.arguments:
            param_line = self._generate_param_jsdoc(arg)
            lines.append(param_line)
        
        # Return values
        if func.returns:
            if len(func.returns) == 1:
                ret_line = self._generate_return_jsdoc(func.returns[0])
                lines.append(ret_line)
            else:
                # Multiple return values as tuple
                return_types = [map_wow_type_to_typescript(ret.type) for ret in func.returns]
                lines.append(f' * @returns {{[{", ".join(return_types)}]}} Multiple return values')
                for ret in func.returns:
                    lines.append(f' * @returns {ret.name} - {ret.description}')
        
        # Additional metadata
        if func.patch_info:
            lines.append(f' * @since {func.patch_info}')
        
        for prop in func.properties:
            lines.append(f' * @note {prop}')
        
        if func.examples:
            lines.append(' * @example')
            for example in func.examples[:2]:  # Limit to 2 examples
                example_lines = example.split('\\n')
                for ex_line in example_lines:
                    lines.append(f' * {ex_line}')
        
        if func.see_also:
            for see_ref in func.see_also[:3]:  # Limit to 3 references
                lines.append(f' * @see {see_ref}')
        
        if func.url:
            lines.append(f' * @see {func.url}')
        
        lines.append(' */')
        
        # Function signature
        js_signature = self._convert_to_js_signature(func)
        lines.append(js_signature)
        
        return '\\n'.join(lines)
    
    def _generate_param_jsdoc(self, arg: APIArgument) -> str:
        """Generate JSDoc parameter line"""
        js_type = map_wow_type_to_typescript(arg.type)
        optional_marker = '=' if arg.optional else ''
        
        param_line = f' * @param {{{js_type}}} {arg.name}{optional_marker}'
        
        if arg.description:
            param_line += f' {arg.description}'
        
        return param_line
    
    def _generate_return_jsdoc(self, ret: APIReturn) -> str:
        """Generate JSDoc return line"""
        js_type = map_wow_type_to_typescript(ret.type)
        
        ret_line = f' * @returns {{{js_type}}}'
        
        if ret.name and ret.description:
            ret_line += f' {ret.name} - {ret.description}'
        elif ret.description:
            ret_line += f' {ret.description}'
        elif ret.name:
            ret_line += f' {ret.name}'
        
        return ret_line
    
    def _convert_to_js_signature(self, func: APIFunction) -> str:
        """Convert function to JavaScript signature"""
        # Extract parameters
        params = []
        for arg in func.arguments:
            param_name = self._clean_param_name(arg.name)
            if arg.optional:
                param_name += ' = null'
            params.append(param_name)
        
        param_str = ', '.join(params)
        
        # Clean function name for JavaScript
        js_func_name = self._clean_function_name(func.name)
        
        return f'function {js_func_name}({param_str}) {{}}'
    
    def _clean_function_name(self, name: str) -> str:
        """Clean function name for JavaScript"""
        # Replace dots with underscores, remove special characters
        cleaned = re.sub(r'[^a-zA-Z0-9_]', '_', name)
        # Ensure it doesn't start with a number
        if cleaned and cleaned[0].isdigit():
            cleaned = '_' + cleaned
        return cleaned or 'unknownFunction'
    
    def _clean_param_name(self, name: str) -> str:
        """Clean parameter name for JavaScript"""
        # Remove special characters, keep camelCase
        cleaned = re.sub(r'[^a-zA-Z0-9_]', '_', name)
        return cleaned or 'param'
    
    def _wrap_text(self, text: str, width: int) -> List[str]:
        """Wrap text to specified width"""
        words = text.split()
        lines = []
        current_line = []
        current_length = 0
        
        for word in words:
            if current_length + len(word) + 1 > width and current_line:
                lines.append(' '.join(current_line))
                current_line = [word]
                current_length = len(word)
            else:
                current_line.append(word)
                current_length += len(word) + 1
        
        if current_line:
            lines.append(' '.join(current_line))
        
        return lines
    
    def generate_individual_files(self, db: APIDatabase):
        """Generate individual JSDoc files for each function"""
        for func in db.get_all_functions():
            jsdoc_content = self.generate_function_jsdoc(func)
            
            # Create filename
            filename = f"{self._clean_function_name(func.name)}.js"
            filepath = os.path.join(self.output_dir, filename)
            
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(jsdoc_content)
            
            print(f"Generated: {filename}")
    
    def generate_combined_file(self, db: APIDatabase, filename: str = 'wow-api-combined.js'):
        """Generate a single combined JSDoc file"""
        lines = [
            '/**',
            ' * World of Warcraft API Documentation',
            ' * Generated from warcraft.wiki.gg',
            f' * Total functions: {len(db.get_all_functions())}',
            ' */',
            ''
        ]
        
        # Group functions by category
        categories = {}
        for func in db.get_all_functions():
            category = self._extract_category(func.name)
            if category not in categories:
                categories[category] = []
            categories[category].append(func)
        
        # Generate documentation by category
        for category, functions in sorted(categories.items()):
            lines.append(f'// ============================================')
            lines.append(f'// {category} Functions ({len(functions)} total)')
            lines.append(f'// ============================================')
            lines.append('')
            
            for func in sorted(functions, key=lambda f: f.name):
                jsdoc = self.generate_function_jsdoc(func)
                lines.append(jsdoc)
                lines.append('')
        
        # Write combined file
        filepath = os.path.join(self.output_dir, filename)
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write('\\n'.join(lines))
        
        print(f"Generated combined file: {filename}")
    
    def generate_typescript_definitions(self, db: APIDatabase, filename: str = 'wow-api.d.ts'):
        """Generate TypeScript definition file"""
        lines = [
            '/**',
            ' * World of Warcraft API TypeScript Definitions',
            ' * Generated from warcraft.wiki.gg',
            ' */',
            '',
            'declare namespace WoWAPI {'
        ]
        
        # Group by category for better organization
        categories = {}
        for func in db.get_all_functions():
            category = self._extract_category(func.name)
            if category not in categories:
                categories[category] = []
            categories[category].append(func)
        
        for category, functions in sorted(categories.items()):
            lines.append(f'  // {category} Functions')
            
            for func in sorted(functions, key=lambda f: f.name):
                ts_definition = self._generate_typescript_definition(func)
                lines.extend([f'  {line}' for line in ts_definition.split('\\n')])
                lines.append('')
        
        lines.append('}')
        
        # Write TypeScript definitions
        filepath = os.path.join(self.output_dir, filename)
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write('\\n'.join(lines))
        
        print(f"Generated TypeScript definitions: {filename}")
    
    def _generate_typescript_definition(self, func: APIFunction) -> str:
        """Generate TypeScript function definition"""
        # Parameters
        params = []
        for arg in func.arguments:
            param_type = map_wow_type_to_typescript(arg.type)
            param_name = self._clean_param_name(arg.name)
            optional_marker = '?' if arg.optional else ''
            params.append(f'{param_name}{optional_marker}: {param_type}')
        
        param_str = ', '.join(params)
        
        # Return type
        if not func.returns:
            return_type = 'void'
        elif len(func.returns) == 1:
            return_type = map_wow_type_to_typescript(func.returns[0].type)
        else:
            return_types = [map_wow_type_to_typescript(ret.type) for ret in func.returns]
            return_type = f'[{", ".join(return_types)}]'
        
        # Function definition
        clean_name = self._clean_function_name(func.name)
        
        definition = f'function {clean_name}({param_str}): {return_type};'
        
        # Add description as comment
        if func.description:
            desc_lines = self._wrap_text(func.description, 60)
            comment_lines = ['/**'] + [f' * {line}' for line in desc_lines] + [' */']
            definition = '\\n'.join(comment_lines) + '\\n' + definition
        
        return definition
    
    def _extract_category(self, function_name: str) -> str:
        """Extract category from function name"""
        if function_name.startswith('C_'):
            # Handle C_ namespace functions
            parts = function_name.split('.')
            if len(parts) >= 2:
                return parts[0] + '.' + parts[1]
            return 'C_Functions'
        elif '_' in function_name:
            return function_name.split('_')[0]
        elif '.' in function_name:
            return function_name.split('.')[0]
        else:
            return 'Core'
    
    def generate_documentation_index(self, db: APIDatabase):
        """Generate an index/README for the documentation"""
        stats = db.get_statistics()
        
        lines = [
            '# World of Warcraft API Documentation',
            '',
            'Generated from warcraft.wiki.gg',
            '',
            '## Statistics',
            f'- Total Functions: {stats["total_functions"]}',
            f'- Total Arguments: {stats["total_arguments"]}',
            f'- Total Return Values: {stats["total_returns"]}',
            f'- Average Arguments per Function: {stats["avg_args_per_function"]:.1f}',
            f'- Average Returns per Function: {stats["avg_returns_per_function"]:.1f}',
            '',
            '## Categories',
            ''
        ]
        
        for category, count in sorted(stats['categories'].items()):
            lines.append(f'- {category}: {count} functions')
        
        lines.extend([
            '',
            '## Files',
            '- `wow-api-combined.js` - All functions in one JSDoc file',
            '- `wow-api.d.ts` - TypeScript definitions',
            '- Individual `.js` files for each function',
            '',
            '## Usage',
            '',
            '### JSDoc',
            '```javascript',
            '// Include the combined file in your project',
            '// Functions are documented with full JSDoc comments',
            '```',
            '',
            '### TypeScript',
            '```typescript',
            '// Add the .d.ts file to your TypeScript project',
            '// Get full type safety for WoW API functions',
            '```'
        ])
        
        # Write README
        readme_path = os.path.join(self.output_dir, 'README.md')
        with open(readme_path, 'w', encoding='utf-8') as f:
            f.write('\\n'.join(lines))
        
        print("Generated documentation index: README.md")


def main():
    """Main execution for JSDoc generation"""
    from models import APIDatabase
    
    # Load the API database (assuming it was generated by the parser)
    db = APIDatabase()
    
    # For testing, let's load from JSON if it exists
    json_path = '/workspaces/warcraft.wiki-crawler/python/api_data.json'
    if os.path.exists(json_path):
        db.load_from_json(json_path)
        print(f"Loaded {len(db.get_all_functions())} functions from JSON")
    else:
        print("No API data found. Run the parser first.")
        return
    
    # Generate documentation
    generator = AdvancedJSDocGenerator('/workspaces/warcraft.wiki-crawler/jsdocs')
    
    print("Generating individual JSDoc files...")
    generator.generate_individual_files(db)
    
    print("Generating combined JSDoc file...")
    generator.generate_combined_file(db)
    
    print("Generating TypeScript definitions...")
    generator.generate_typescript_definitions(db)
    
    print("Generating documentation index...")
    generator.generate_documentation_index(db)
    
    print("Documentation generation complete!")


if __name__ == "__main__":
    main()
