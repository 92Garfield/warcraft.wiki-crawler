#!/usr/bin/env python3
"""
Lua Documentation File Writer
Handles writing documentation files to disk.
"""

import os
from pathlib import Path
from typing import Dict, List
from datetime import datetime


class LuaDocFileWriter:
    """Handles writing Lua documentation files to disk"""

    def __init__(self, output_dir: str):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)

    def write_namespace_file(self, namespace: str, functions_docs: List[str], function_names: List[str]) -> None:
        """Write a Lua documentation file for a namespace"""
        filename = f"{namespace}.lua" if namespace != 'Global' else "Global_Functions.lua"
        filepath = self.output_dir / filename

        lines = []

        # File header
        lines.append("--[=[")
        lines.append(f"-- {namespace} API Documentation")
        lines.append("-- Generated from warcraft.wiki.gg")
        lines.append(f"-- Generated on: {self._get_current_date()}")
        lines.append(f"-- Functions: {len(functions_docs)}")
        lines.append("--]=]")
        lines.append("")

        # Add namespace description
        if namespace != 'Global':
            lines.append(f"--- @class {namespace}")
            lines.append(f"--- {namespace} namespace contains {len(functions_docs)} functions")
            lines.append(f"local {namespace} = {{}}")
            lines.append("")

            # Add function list as comments
            lines.append("--[=[")
            lines.append(f"-- {namespace} Functions:")
            for name in sorted(function_names):
                lines.append(f"-- - {name}")
            lines.append("--]=]")
            lines.append("")

        # Add all function documentation
        for func_doc in functions_docs:
            lines.append(func_doc)

        # Write to file
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))

        print(f"Generated {filename} with {len(functions_docs)} functions")

    def write_index_file(self, namespaces: Dict[str, List[str]]) -> None:
        """Write an index README.md file listing all namespaces and functions"""
        filepath = self.output_dir / "README.md"

        lines = []
        lines.append("# WoW API Lua Documentation")
        lines.append("")
        lines.append("Generated Lua documentation for World of Warcraft API functions.")
        lines.append("")
        lines.append(f"Generated on: {self._get_current_date()}")
        lines.append("")

        # Summary
        total_functions = sum(len(funcs) for funcs in namespaces.values())
        lines.append("## Summary")
        lines.append("")
        lines.append(f"- **Total Namespaces**: {len(namespaces)}")
        lines.append(f"- **Total Functions**: {total_functions}")
        lines.append("")

        # Namespace listing
        lines.append("## Namespaces")
        lines.append("")

        for namespace, functions_docs in sorted(namespaces.items()):
            filename = f"{namespace}.lua" if namespace != 'Global' else "Global_Functions.lua"
            lines.append(f"- **{namespace}** ({len(functions_docs)} functions) - [`{filename}`](./{filename})")

        lines.append("")
        lines.append("## Usage")
        lines.append("")
        lines.append("These files contain Lua documentation comments that can be used with:")
        lines.append("- Lua Language Server")
        lines.append("- LuaDoc")
        lines.append("- Any IDE that supports Lua documentation comments")
        lines.append("")
        lines.append("## Format")
        lines.append("")
        lines.append("The documentation follows standard Lua documentation comment format:")
        lines.append("```lua")
        lines.append("--- Function description")
        lines.append("--- @param paramName type Description")
        lines.append("--- @return type Description")
        lines.append("-- function FunctionName()")
        lines.append("-- end")
        lines.append("```")

        with open(filepath, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))

        print(f"Generated README.md")

    def _get_current_date(self) -> str:
        """Get current date string"""
        return datetime.now().strftime("%Y-%m-%d %H:%M:%S")
