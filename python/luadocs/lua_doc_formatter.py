#!/usr/bin/env python3
"""
Lua Documentation Formatter
Handles formatting of individual function documentation.
"""

from typing import Dict, Any, List


class LuaDocFormatter:
    """Handles formatting of Lua documentation for individual functions"""

    def __init__(self):
        self.type_mapping = {
            'string': 'string',
            'number': 'number',
            'boolean': 'boolean',
            'table': 'table',
            'function': 'function',
            'nil': 'nil',
            'any': 'any'
        }

    def format_lua_type(self, lua_type: str) -> str:
        """Format Lua type for documentation"""
        return self.type_mapping.get(lua_type.lower(), lua_type)

    def format_function_doc(self, func_data: Dict[str, Any]) -> str:
        """Generate Lua documentation for a single function"""
        lines = []

        # Function header with description
        lines.append("---" + "=" * 70)
        lines.append(f"--- {func_data.get('name', 'Unknown Function')}")
        lines.append("---" + "=" * 70)

        # Description
        if func_data.get('description'):
            lines.append(f"--- {func_data['description']}")
            lines.append("---")

        # Arguments
        if func_data.get('arguments'):
            lines.append("--- Arguments:")
            for arg in func_data['arguments']:
                self._format_parameter(lines, arg)
            lines.append("---")

        # Returns
        if func_data.get('returns'):
            lines.append("--- Returns:")
            for ret in func_data['returns']:
                self._format_return_value(lines, ret)
            lines.append("---")

        # Additional information
        self._format_additional_info(lines, func_data)

        # Function signature
        signature = func_data.get('signature', '')
        if signature:
            lines.append("---")
            lines.append(f"--- Usage: {signature}")

        # Examples
        if func_data.get('examples'):
            self._format_examples(lines, func_data['examples'])

        # See also
        if func_data.get('see_also'):
            self._format_see_also(lines, func_data['see_also'])

        # Function declaration (commented out since it's documentation)
        func_name = func_data.get('name', 'UnknownFunction')
        lines.append("---")
        lines.append(f"-- function {func_name}()")
        lines.append("-- end")
        lines.append("")

        return '\n'.join(lines)

    def _format_parameter(self, lines: List[str], arg: Dict[str, Any]) -> None:
        """Format a single parameter"""
        arg_name = arg.get('name', '')
        arg_type = self.format_lua_type(arg.get('type', 'any'))
        arg_desc = arg.get('description', '').strip()
        optional = " (optional)" if arg.get('optional', False) else ""

        if arg_desc:
            lines.append(f"--- @param {arg_name} {arg_type}{optional} {arg_desc}")
        else:
            lines.append(f"--- @param {arg_name} {arg_type}{optional}")

        # Handle nested parameters
        if arg.get('nested'):
            for nested in arg['nested']:
                nested_name = nested.get('name', '')
                nested_type = self.format_lua_type(nested.get('type', 'any'))
                nested_desc = nested.get('description', '').strip()
                lines.append(f"---   {nested_name} ({nested_type}): {nested_desc}")

    def _format_return_value(self, lines: List[str], ret: Dict[str, Any]) -> None:
        """Format a single return value"""
        ret_name = ret.get('name', '')
        ret_type = self.format_lua_type(ret.get('type', 'any'))
        ret_desc = ret.get('description', '').strip()

        if ret_desc:
            lines.append(f"--- @return {ret_type} {ret_name} {ret_desc}")
        else:
            lines.append(f"--- @return {ret_type} {ret_name}")

        # Handle nested return values
        if ret.get('nested'):
            for nested in ret['nested']:
                nested_name = nested.get('name', '')
                nested_type = self.format_lua_type(nested.get('type', 'any'))
                nested_desc = nested.get('description', '').strip()
                lines.append(f"---   {nested_name} ({nested_type}): {nested_desc}")

    def _format_additional_info(self, lines: List[str], func_data: Dict[str, Any]) -> None:
        """Format additional information like patch info and properties"""
        if func_data.get('patch_info'):
            lines.append(f"--- @since {func_data['patch_info']}")

        if func_data.get('properties'):
            for prop in func_data['properties']:
                lines.append(f"--- @note {prop}")

        if func_data.get('url'):
            lines.append(f"--- @see {func_data['url']}")

    def _format_examples(self, lines: List[str], examples: List[str]) -> None:
        """Format examples section"""
        lines.append("---")
        lines.append("--- Examples:")
        for i, example in enumerate(examples, 1):
            lines.append(f"--- Example {i}:")
            for line in example.split('\n'):
                lines.append(f"---   {line}")

    def _format_see_also(self, lines: List[str], see_also: List[str]) -> None:
        """Format see also section"""
        lines.append("---")
        lines.append("--- See also:")
        for item in see_also:
            lines.append(f"--- - {item}")
