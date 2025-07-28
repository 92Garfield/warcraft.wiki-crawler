#!/usr/bin/env python3
"""
API Data Models and Utilities
Data structures and helper functions for WoW API documentation.
"""

from dataclasses import dataclass, field
from typing import List, Optional, Dict, Any
import json


@dataclass
class APIArgument:
    """Represents a function argument/parameter"""
    name: str
    type: str = ""
    description: str = ""
    optional: bool = False
    nested: List['APIArgument'] = field(default_factory=list)


@dataclass
class APIReturn:
    """Represents a function return value"""
    name: str
    type: str = ""
    description: str = ""
    nested: List['APIReturn'] = field(default_factory=list)


@dataclass
class APIFunction:
    """Represents a complete API function"""
    name: str
    signature: str = ""
    description: str = ""
    arguments: List[APIArgument] = field(default_factory=list)
    returns: List[APIReturn] = field(default_factory=list)
    patch_info: str = ""
    properties: List[str] = field(default_factory=list)
    url: str = ""
    examples: List[str] = field(default_factory=list)
    see_also: List[str] = field(default_factory=list)
    
    def to_dict(self) -> Dict[str, Any]:
        """Convert to dictionary for JSON serialization"""
        return {
            'name': self.name,
            'signature': self.signature,
            'description': self.description,
            'arguments': [
                {
                    'name': arg.name,
                    'type': arg.type,
                    'description': arg.description,
                    'optional': arg.optional,
                    'nested': [n.__dict__ for n in arg.nested]
                } for arg in self.arguments
            ],
            'returns': [
                {
                    'name': ret.name,
                    'type': ret.type,
                    'description': ret.description,
                    'nested': [n.__dict__ for n in ret.nested]
                } for ret in self.returns
            ],
            'patch_info': self.patch_info,
            'properties': self.properties,
            'url': self.url,
            'examples': self.examples,
            'see_also': self.see_also
        }
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> 'APIFunction':
        """Create APIFunction from dictionary"""
        func = cls(
            name=data.get('name', ''),
            signature=data.get('signature', ''),
            description=data.get('description', ''),
            patch_info=data.get('patch_info', ''),
            properties=data.get('properties', []),
            url=data.get('url', ''),
            examples=data.get('examples', []),
            see_also=data.get('see_also', [])
        )
        
        # Convert arguments
        for arg_data in data.get('arguments', []):
            arg = APIArgument(
                name=arg_data.get('name', ''),
                type=arg_data.get('type', ''),
                description=arg_data.get('description', ''),
                optional=arg_data.get('optional', False)
            )
            for nested_data in arg_data.get('nested', []):
                nested_arg = APIArgument(**nested_data)
                arg.nested.append(nested_arg)
            func.arguments.append(arg)
        
        # Convert returns
        for ret_data in data.get('returns', []):
            ret = APIReturn(
                name=ret_data.get('name', ''),
                type=ret_data.get('type', ''),
                description=ret_data.get('description', '')
            )
            for nested_data in ret_data.get('nested', []):
                nested_ret = APIReturn(**nested_data)
                ret.nested.append(nested_ret)
            func.returns.append(ret)
        
        return func


class APIDatabase:
    """Manages a collection of API functions"""
    
    def __init__(self):
        self.functions: Dict[str, APIFunction] = {}
    
    def add_function(self, func: APIFunction):
        """Add a function to the database"""
        self.functions[func.name] = func
    
    def get_function(self, name: str) -> Optional[APIFunction]:
        """Get a function by name"""
        return self.functions.get(name)
    
    def get_all_functions(self) -> List[APIFunction]:
        """Get all functions as a list"""
        return list(self.functions.values())
    
    def search_functions(self, query: str) -> List[APIFunction]:
        """Search functions by name or description"""
        query = query.lower()
        results = []
        
        for func in self.functions.values():
            if (query in func.name.lower() or 
                query in func.description.lower()):
                results.append(func)
        
        return results
    
    def get_functions_by_category(self, category: str) -> List[APIFunction]:
        """Get functions by category (based on name prefix)"""
        category = category.lower()
        results = []
        
        for func in self.functions.values():
            if func.name.lower().startswith(category):
                results.append(func)
        
        return results
    
    def save_to_json(self, filepath: str):
        """Save database to JSON file"""
        data = {
            'functions': {name: func.to_dict() for name, func in self.functions.items()},
            'metadata': {
                'total_functions': len(self.functions),
                'generated_by': 'WoW API Scraper'
            }
        }
        
        with open(filepath, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
    
    def load_from_json(self, filepath: str):
        """Load database from JSON file"""
        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        self.functions = {}
        for name, func_data in data.get('functions', {}).items():
            func = APIFunction.from_dict(func_data)
            self.functions[name] = func
    
    def get_statistics(self) -> Dict[str, Any]:
        """Get database statistics"""
        categories = {}
        total_args = 0
        total_returns = 0
        
        for func in self.functions.values():
            # Categorize by first part of name (before underscore or dot)
            category = func.name.split('_')[0].split('.')[0]
            if category not in categories:
                categories[category] = 0
            categories[category] += 1
            
            total_args += len(func.arguments)
            total_returns += len(func.returns)
        
        return {
            'total_functions': len(self.functions),
            'categories': categories,
            'total_arguments': total_args,
            'total_returns': total_returns,
            'avg_args_per_function': total_args / len(self.functions) if self.functions else 0,
            'avg_returns_per_function': total_returns / len(self.functions) if self.functions else 0
        }


# Type mapping utilities
WOW_TYPE_MAPPINGS = {
    'string': 'string',
    'number': 'number',
    'boolean': 'boolean',
    'table': 'object',
    'function': 'function',
    'nil': 'null',
    'unittoken': 'string',
    'unitid': 'string',
    'guid': 'string',
    'filedata': 'number',
    'texture': 'string',
    'void': 'void'
}

def map_wow_type_to_typescript(wow_type: str) -> str:
    """Map WoW API type to TypeScript type"""
    clean_type = wow_type.lower().strip()
    return WOW_TYPE_MAPPINGS.get(clean_type, 'any')

def clean_function_name(name: str) -> str:
    """Clean function name for use in file names"""
    # Remove special characters and replace with underscores
    import re
    return re.sub(r'[^a-zA-Z0-9_]', '_', name)

def extract_category_from_name(function_name: str) -> str:
    """Extract category from function name"""
    # Handle C_ prefix functions
    if function_name.startswith('C_'):
        parts = function_name.split('.')
        if len(parts) >= 2:
            return parts[0] + '.' + parts[1]  # e.g., "C_Macro"
        return function_name.split('_')[0]  # e.g., "C_"
    
    # Handle regular functions
    if '_' in function_name:
        return function_name.split('_')[0]
    elif '.' in function_name:
        return function_name.split('.')[0]
    else:
        return 'Misc'
