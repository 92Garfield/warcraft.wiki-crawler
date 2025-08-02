#!/usr/bin/env python3
"""
Lua Documentation Generator
Generates Lua documentation files from JSON API data.
"""

import json
import os
import sys
from pathlib import Path
from typing import Dict, List, Any

from lua_doc_formatter import LuaDocFormatter
from lua_file_writer import LuaDocFileWriter


class LuaDocGenerator:
    """Main generator class that coordinates documentation generation"""

    def __init__(self, output_dir: str = "../../lua_docs"):
        self.formatter = LuaDocFormatter()
        self.file_writer = LuaDocFileWriter(output_dir)

    def load_json_data(self, json_file: str) -> Dict[str, Any]:
        """Load JSON data from file"""
        try:
            with open(json_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        except Exception as e:
            print(f"Error loading JSON file {json_file}: {e}")
            return {}

    def group_functions_by_namespace(self, functions: Dict[str, Any]) -> tuple[Dict[str, List[str]], Dict[str, List[str]]]:
        """Group functions by namespace and generate documentation"""
        namespaces = {}
        namespace_function_names = {}

        for func_name, func_data in functions.items():
            # Extract namespace (everything before the first dot)
            if '.' in func_name:
                namespace = func_name.split('.')[0]
            else:
                namespace = 'Global'

            if namespace not in namespaces:
                namespaces[namespace] = []
                namespace_function_names[namespace] = []

            # Generate documentation for this function
            func_doc = self.formatter.format_function_doc(func_data)
            namespaces[namespace].append(func_doc)
            namespace_function_names[namespace].append(func_name)

        return namespaces, namespace_function_names

    def generate_docs(self, json_file: str):
        """Generate all documentation from JSON file"""
        print(f"Loading JSON data from {json_file}...")
        data = self.load_json_data(json_file)

        if not data or 'functions' not in data:
            print("Error: No functions found in JSON data")
            return

        functions = data['functions']
        print(f"Found {len(functions)} functions")

        # Group by namespace and generate documentation
        print("Grouping functions by namespace...")
        namespaces, namespace_function_names = self.group_functions_by_namespace(functions)

        print(f"Found {len(namespaces)} namespaces:")
        for namespace, funcs in namespaces.items():
            print(f"  - {namespace}: {len(funcs)} functions")

        # Create documentation files
        print(f"\nGenerating documentation files...")
        for namespace, functions_docs in namespaces.items():
            function_names = namespace_function_names[namespace]
            self.file_writer.write_namespace_file(namespace, functions_docs, function_names)

        # Create index file
        self.file_writer.write_index_file(namespaces)

        print(f"\n✅ Documentation generation complete!")
        print(f"📁 Output directory: {self.file_writer.output_dir.absolute()}")
        print(f"📊 Generated {len(namespaces)} namespace files")
        print(f"🔧 Total functions documented: {sum(len(funcs) for funcs in namespaces.values())}")


def main():
    """Main function"""
    import argparse

    parser = argparse.ArgumentParser(description="Generate Lua documentation from JSON API data")
    parser.add_argument("json_file", help="Input JSON file with API data")
    parser.add_argument("-o", "--output", default="../../lua_docs",
                       help="Output directory for Lua docs (default: ../../lua_docs)")

    args = parser.parse_args()

    if not os.path.exists(args.json_file):
        print(f"Error: JSON file '{args.json_file}' not found")
        sys.exit(1)

    generator = LuaDocGenerator(args.output)
    generator.generate_docs(args.json_file)


if __name__ == "__main__":
    main()
