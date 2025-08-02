#!/usr/bin/env python3
"""
Lua API Generator Runner

Simple script to generate Lua API stubs from JSON data.
Usage: python run_generator.py [json_file]
"""

import sys
import os
from pathlib import Path

# Add current directory to path for imports
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from batch_lua_generator import BatchLuaStubGenerator
from lua_utils import LuaAPIUtils


def main():
    # Default input file
    input_file = "sample.json"
    if len(sys.argv) > 1:
        input_file = sys.argv[1]

    # Check if input file exists
    if not os.path.exists(input_file):
        print(f"❌ Error: Input file '{input_file}' not found")
        print(f"Usage: python {sys.argv[0]} [json_file]")
        return 1

    output_dir = "../../lua_api"

    print("🚀 Starting Lua API stub generation...")
    print(f"Input file: {input_file}")
    print(f"Output directory: {output_dir}")
    print()

    # Clean previous files
    utils = LuaAPIUtils(output_dir)
    if Path(output_dir).exists() and list(Path(output_dir).glob('*.lua')):
        print("🧹 Cleaning previous Lua files...")
        utils.clean_output_directory()
        print()

    # Generate stubs
    generator = BatchLuaStubGenerator(input_file, output_dir)
    generator.process_in_batches()

    print()

    # Validate results
    print("🔍 Validating generated files...")
    utils.print_validation_report(input_file)

    print()

    # Show statistics
    utils.print_file_statistics()

    print("\n🎉 Generation complete!")
    return 0


if __name__ == "__main__":
    exit(main())
