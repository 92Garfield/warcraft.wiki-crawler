#!/usr/bin/env python3
"""
Lua API Stub Generator

Generates Lua function stubs from JSON API data, organizing functions by their class prefixes.
Functions like "C_PetBattles.GetMaxHealth" will be grouped into class-based files.
"""

import json
import os
import re
from pathlib import Path
from typing import Dict, List, Any
from collections import defaultdict


class LuaStubGenerator:
    def __init__(self, input_file: str, output_dir: str):
        self.input_file = input_file
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)

    def load_functions(self) -> Dict[str, Any]:
        """Load function data from JSON file."""
        with open(self.input_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
        return data.get('functions', {})

    def group_functions_by_class(self, functions: Dict[str, Any]) -> Dict[str, List[tuple]]:
        """Group functions by their class prefix (e.g., C_PetBattles, C_AccountInfo)."""
        classes = defaultdict(list)

        for func_name, func_data in functions.items():
            # Extract class prefix (everything before the last dot)
            if '.' in func_name:
                class_name = func_name.rsplit('.', 1)[0]
                method_name = func_name.rsplit('.', 1)[1]
            else:
                # Global functions without class prefix
                class_name = '_Global'
                method_name = func_name

            classes[class_name].append((method_name, func_data))

        return dict(classes)

    def format_type(self, param_type: str) -> str:
        """Format parameter types for Lua documentation."""
        type_mapping = {
            'string': 'string',
            'number': 'number',
            'boolean': 'boolean',
            'table': 'table',
            'function': 'function',
            'userdata': 'userdata',
            'nil': 'nil'
        }
        return type_mapping.get(param_type.lower(), param_type)

    def generate_function_stub(self, method_name: str, func_data: Dict[str, Any], class_name: str) -> str:
        """Generate a Lua function stub with documentation."""
        lines = []

        # Add function documentation header
        lines.append("---" + func_data.get('description', 'No description available.'))

        # Add parameter documentation
        for arg in func_data.get('arguments', []):
            param_type = self.format_type(arg.get('type', 'any'))
            param_name = arg.get('name', 'param')
            param_desc = arg.get('description', '').strip(':').strip()
            optional = ' (optional)' if arg.get('optional', False) else ''
            lines.append(f"---@param {param_name} {param_type}{optional} {param_desc}")

        # Add return documentation
        returns = func_data.get('returns', [])
        if returns:
            for ret in returns:
                ret_type = self.format_type(ret.get('type', 'any'))
                ret_name = ret.get('name', 'result')
                ret_desc = ret.get('description', '').strip()
                lines.append(f"---@return {ret_type} {ret_name} {ret_desc}")

        # Add patch information if available
        patch_info = func_data.get('patch_info', '')
        if patch_info:
            lines.append(f"---@since {patch_info}")

        # Generate function signature
        params = []
        for arg in func_data.get('arguments', []):
            param_name = arg.get('name', 'param')
            params.append(param_name)

        param_str = ', '.join(params)

        if class_name == '_Global':
            func_signature = f"function {method_name}({param_str})"
        else:
            func_signature = f"function {class_name}.{method_name}({param_str})"

        lines.append(func_signature)
        lines.append("end")
        lines.append("")  # Empty line between functions

        return '\n'.join(lines)

    def generate_class_file(self, class_name: str, methods: List[tuple]) -> str:
        """Generate a complete Lua file for a class."""
        lines = []

        # File header
        lines.append(f"-- {class_name} API")
        lines.append(f"-- Auto-generated Lua API stubs")
        lines.append("-- https://warcraft.wiki.gg/")
        lines.append("")

        if class_name != '_Global':
            lines.append(f"---@class {class_name}")
            lines.append(f"{class_name} = {{}}")
            lines.append("")

        # Generate all method stubs
        for method_name, func_data in sorted(methods):
            stub = self.generate_function_stub(method_name, func_data, class_name)
            lines.append(stub)

        return '\n'.join(lines)

    def sanitize_filename(self, class_name: str) -> str:
        """Sanitize class name for use as filename."""
        # Replace invalid filename characters
        sanitized = re.sub(r'[<>:"/\\|?*]', '_', class_name)
        return sanitized

    def generate_all_stubs(self):
        """Generate all Lua stub files."""
        print(f"Loading functions from {self.input_file}...")
        functions = self.load_functions()
        print(f"Loaded {len(functions)} functions")

        print("Grouping functions by class...")
        classes = self.group_functions_by_class(functions)
        print(f"Found {len(classes)} classes")

        for class_name, methods in classes.items():
            print(f"Generating {class_name}.lua with {len(methods)} methods...")

            # Generate file content
            file_content = self.generate_class_file(class_name, methods)

            # Write to file
            filename = f"{self.sanitize_filename(class_name)}.lua"
            file_path = self.output_dir / filename

            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(file_content)

            print(f"  → {file_path}")

        print(f"\nGeneration complete! Created {len(classes)} files in {self.output_dir}")


def main():
    # Default paths
    input_file = "sample.json"
    output_dir = "../../lua_api"

    generator = LuaStubGenerator(input_file, output_dir)
    generator.generate_all_stubs()


if __name__ == "__main__":
    main()
