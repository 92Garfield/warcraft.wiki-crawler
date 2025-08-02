#!/usr/bin/env python3
"""
Lua API Utilities

Utility functions for managing and validating generated Lua API files.
"""

import json
import os
import re
from pathlib import Path
from typing import Dict, List, Set


class LuaAPIUtils:
    def __init__(self, lua_api_dir: str):
        self.lua_api_dir = Path(lua_api_dir)

    def validate_generated_files(self, json_file: str) -> Dict[str, any]:
        """Validate that all functions from JSON are present in generated Lua files."""
        # Load original function data
        with open(json_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
        original_functions = set(data.get('functions', {}).keys())

        # Scan generated Lua files
        found_functions = set()
        lua_files = list(self.lua_api_dir.glob('*.lua'))

        for lua_file in lua_files:
            functions_in_file = self._extract_functions_from_lua(lua_file)
            found_functions.update(functions_in_file)

        # Compare
        missing = original_functions - found_functions
        extra = found_functions - original_functions

        return {
            'total_original': len(original_functions),
            'total_found': len(found_functions),
            'missing': list(missing),
            'extra': list(extra),
            'lua_files_count': len(lua_files),
            'validation_passed': len(missing) == 0 and len(extra) == 0
        }

    def _extract_functions_from_lua(self, lua_file: Path) -> Set[str]:
        """Extract function names from a Lua file."""
        functions = set()

        with open(lua_file, 'r', encoding='utf-8') as f:
            content = f.read()

        # Match function declarations
        # Pattern for both global and class methods
        patterns = [
            r'function\s+([A-Za-z_][A-Za-z0-9_.]*)\s*\(',  # function Name(
            r'function\s+([A-Za-z_][A-Za-z0-9_]*\.[A-Za-z_][A-Za-z0-9_.]*)\s*\('  # function Class.Method(
        ]

        for pattern in patterns:
            matches = re.findall(pattern, content)
            functions.update(matches)

        return functions

    def get_file_statistics(self) -> Dict[str, any]:
        """Get statistics about generated Lua files."""
        lua_files = list(self.lua_api_dir.glob('*.lua'))

        stats = {
            'total_files': len(lua_files),
            'files': []
        }

        for lua_file in lua_files:
            functions = self._extract_functions_from_lua(lua_file)
            file_size = lua_file.stat().st_size

            stats['files'].append({
                'name': lua_file.name,
                'function_count': len(functions),
                'size_bytes': file_size,
                'size_kb': round(file_size / 1024, 2)
            })

        # Sort by function count descending
        stats['files'].sort(key=lambda x: x['function_count'], reverse=True)

        return stats

    def clean_output_directory(self):
        """Clean the output directory of old Lua files."""
        lua_files = list(self.lua_api_dir.glob('*.lua'))

        for lua_file in lua_files:
            lua_file.unlink()

        print(f"Cleaned {len(lua_files)} Lua files from {self.lua_api_dir}")

    def print_validation_report(self, json_file: str):
        """Print a detailed validation report."""
        print("🔍 Validating generated Lua files...")
        validation = self.validate_generated_files(json_file)

        print(f"\n📊 Validation Results:")
        print(f"Original functions: {validation['total_original']}")
        print(f"Found in Lua files: {validation['total_found']}")
        print(f"Generated Lua files: {validation['lua_files_count']}")

        if validation['validation_passed']:
            print("✅ Validation PASSED - All functions accounted for!")
        else:
            print("❌ Validation FAILED")

            if validation['missing']:
                print(f"\n⚠️  Missing functions ({len(validation['missing'])}):")
                for func in sorted(validation['missing'])[:10]:  # Show first 10
                    print(f"  - {func}")
                if len(validation['missing']) > 10:
                    print(f"  ... and {len(validation['missing']) - 10} more")

            if validation['extra']:
                print(f"\n➕ Extra functions ({len(validation['extra'])}):")
                for func in sorted(validation['extra'])[:10]:  # Show first 10
                    print(f"  + {func}")
                if len(validation['extra']) > 10:
                    print(f"  ... and {len(validation['extra']) - 10} more")

    def print_file_statistics(self):
        """Print statistics about generated files."""
        stats = self.get_file_statistics()

        print(f"\n📈 File Statistics:")
        print(f"Total Lua files: {stats['total_files']}")
        print(f"\n{'File Name':<40} {'Functions':<10} {'Size (KB)'}")
        print("-" * 65)

        total_functions = 0
        total_size = 0

        for file_info in stats['files'][:20]:  # Show top 20
            total_functions += file_info['function_count']
            total_size += file_info['size_kb']
            print(f"{file_info['name']:<40} {file_info['function_count']:<10} {file_info['size_kb']}")

        if len(stats['files']) > 20:
            remaining = len(stats['files']) - 20
            for file_info in stats['files'][20:]:
                total_functions += file_info['function_count']
                total_size += file_info['size_kb']
            print(f"... and {remaining} more files")

        print("-" * 65)
        print(f"{'TOTAL':<40} {total_functions:<10} {round(total_size, 2)}")


def main():
    import argparse

    parser = argparse.ArgumentParser(description='Lua API utilities')
    parser.add_argument('command', choices=['validate', 'stats', 'clean'],
                       help='Command to execute')
    parser.add_argument('-d', '--lua-dir', default='../../lua_api',
                       help='Lua API directory (default: ../../lua_api)')
    parser.add_argument('-j', '--json-file',
                       help='JSON file for validation (required for validate command)')

    args = parser.parse_args()

    utils = LuaAPIUtils(args.lua_dir)

    if args.command == 'validate':
        if not args.json_file:
            print("❌ Error: --json-file is required for validate command")
            return 1
        utils.print_validation_report(args.json_file)

    elif args.command == 'stats':
        utils.print_file_statistics()

    elif args.command == 'clean':
        utils.clean_output_directory()

    return 0


if __name__ == "__main__":
    exit(main())
