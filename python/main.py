#!/usr/bin/env python3
"""
Main execution script for WoW API documentation scraper
"""

import os
import sys
import argparse
from enhanced_parser import EnhancedWoWAPIParser
from jsdoc_generator import AdvancedJSDocGenerator
from models import APIDatabase


def main():
    parser = argparse.ArgumentParser(description='WoW API Documentation Scraper')
    parser.add_argument('--limit', type=int, help='Limit number of functions to process (for testing)')
    parser.add_argument('--output-dir', default='/workspaces/warcraft.wiki-crawler/jsdocs', 
                       help='Output directory for generated files')
    parser.add_argument('--data-file', default='/workspaces/warcraft.wiki-crawler/python/api_data.json',
                       help='JSON file to save/load API data')
    parser.add_argument('--skip-scraping', action='store_true',
                       help='Skip scraping and use existing data file')
    parser.add_argument('--only-scrape', action='store_true',
                       help='Only scrape data, do not generate documentation')
    
    args = parser.parse_args()
    
    print("WoW API Documentation Scraper")
    print("============================")
    
    # Initialize database
    db = APIDatabase()
    
    # Scraping phase
    if not args.skip_scraping:
        print("\\nPhase 1: Scraping API documentation...")
        api_parser = EnhancedWoWAPIParser()
        db = api_parser.scrape_all_functions(limit=args.limit)
        
        # Save scraped data
        print(f"\\nSaving data to {args.data_file}...")
        db.save_to_json(args.data_file)
        
        # Print statistics
        stats = db.get_statistics()
        print("\\nScraping Statistics:")
        for key, value in stats.items():
            print(f"  {key}: {value}")
    
    else:
        # Load existing data
        if os.path.exists(args.data_file):
            print(f"\\nLoading existing data from {args.data_file}...")
            db.load_from_json(args.data_file)
            print(f"Loaded {len(db.get_all_functions())} functions")
        else:
            print(f"Error: Data file {args.data_file} not found!")
            return 1
    
    # Documentation generation phase
    if not args.only_scrape:
        print("\\nPhase 2: Generating documentation...")
        doc_generator = AdvancedJSDocGenerator(args.output_dir)
        
        print("Generating individual JSDoc files...")
        doc_generator.generate_individual_files(db)
        
        print("Generating combined JSDoc file...")
        doc_generator.generate_combined_file(db)
        
        print("Generating TypeScript definitions...")
        doc_generator.generate_typescript_definitions(db)
        
        print("Generating documentation index...")
        doc_generator.generate_documentation_index(db)
        
        print(f"\\nDocumentation generated in: {args.output_dir}")
    
    print("\\nProcess completed successfully!")
    return 0


if __name__ == "__main__":
    sys.exit(main())
