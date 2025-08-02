#!/usr/bin/env python3
"""
Batch Lua API Stub Generator

Processes large JSON files in batches to generate Lua function stubs.
Handles memory efficiently for files with thousands of functions.
"""

import json
import os
import argparse
from pathlib import Path
from lua_stub_generator import LuaStubGenerator


class BatchLuaStubGenerator(LuaStubGenerator):
    def __init__(self, input_file: str, output_dir: str, batch_size: int = 1000):
        super().__init__(input_file, output_dir)
        self.batch_size = batch_size

    def process_in_batches(self):
        """Process the JSON file in batches to handle large datasets efficiently."""
        print(f"Processing {self.input_file} in batches of {self.batch_size}...")

        # Load all functions
        functions = self.load_functions()
        total_functions = len(functions)
        print(f"Total functions to process: {total_functions}")

        # Group by class first
        classes = self.group_functions_by_class(functions)
        print(f"Found {len(classes)} classes")

        # Process each class
        for i, (class_name, methods) in enumerate(classes.items(), 1):
            print(f"[{i}/{len(classes)}] Processing {class_name} ({len(methods)} methods)...")

            # Generate file content
            file_content = self.generate_class_file(class_name, methods)

            # Write to file
            filename = f"{self.sanitize_filename(class_name)}.lua"
            file_path = self.output_dir / filename

            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(file_content)

            print(f"  → Created {file_path}")

        print(f"\n✅ Batch processing complete!")
        print(f"Generated {len(classes)} Lua files in {self.output_dir}")

        # Print summary
        self.print_summary(classes)

    def print_summary(self, classes):
        """Print a summary of generated files."""
        print("\n📊 Summary:")
        print(f"{'Class Name':<30} {'Methods':<10} {'File'}")
        print("-" * 60)

        total_methods = 0
        for class_name, methods in sorted(classes.items()):
            method_count = len(methods)
            total_methods += method_count
            filename = f"{self.sanitize_filename(class_name)}.lua"
            print(f"{class_name:<30} {method_count:<10} {filename}")

        print("-" * 60)
        print(f"{'TOTAL':<30} {total_methods:<10} {len(classes)} files")


def main():
    parser = argparse.ArgumentParser(description='Generate Lua API stubs from JSON data')
    parser.add_argument('input_file', help='Input JSON file containing function data')
    parser.add_argument('-o', '--output', default='../../lua_api',
                       help='Output directory for Lua files (default: ../../lua_api)')
    parser.add_argument('-b', '--batch-size', type=int, default=1000,
                       help='Batch size for processing (default: 1000)')

    args = parser.parse_args()

    # Validate input file
    if not os.path.exists(args.input_file):
        print(f"❌ Error: Input file '{args.input_file}' not found")
        return 1

    # Create generator and process
    generator = BatchLuaStubGenerator(args.input_file, args.output, args.batch_size)
    generator.process_in_batches()

    return 0


if __name__ == "__main__":
    exit(main())
