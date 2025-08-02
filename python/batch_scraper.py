#!/usr/bin/env python3
"""
Batch WoW API Scraper
Scrapes API functions in batches of 100 and tracks progress for manual execution.
"""

import os
import json
import time
from datetime import datetime
from enhanced_parser import EnhancedWoWAPIParser
from models import APIDatabase


class BatchScraper:
    """Manages batch scraping with progress tracking"""

    def __init__(self, batch_size=10):
        self.batch_size = batch_size
        self.progress_file = 'E:\\JavaScript\\WoW\\warcraft.wiki-crawler\\python\\scrape_progress.json'
        self.data_file = 'E:\\JavaScript\\WoW\\warcraft.wiki-crawler\\python\\api_data.json'
        self.parser = EnhancedWoWAPIParser()
        self.db = APIDatabase()

    def load_progress(self):
        """Load progress from file"""
        if os.path.exists(self.progress_file):
            try:
                with open(self.progress_file, 'r', encoding='utf-8') as f:
                    return json.load(f)
            except Exception as e:
                print(f"Error loading progress: {e}")
                return self._create_initial_progress()
        else:
            return self._create_initial_progress()

    def save_progress(self, progress_data):
        """Save progress to file"""
        try:
            with open(self.progress_file, 'w', encoding='utf-8') as f:
                json.dump(progress_data, f, indent=2, ensure_ascii=False)
        except Exception as e:
            print(f"Error saving progress: {e}")

    def _create_initial_progress(self):
        """Create initial progress structure"""
        print("Creating initial progress file...")
        print("Fetching list of all API functions...")

        # Get all functions from the main page
        functions = self.parser.extract_api_functions_from_main_page()

        progress = {
            'total_functions': len(functions),
            'current_batch': 0,
            'completed_functions': 0,
            'failed_functions': [],
            'last_updated': datetime.now().isoformat(),
            'batch_size': self.batch_size,
            'functions': [
                {
                    'name': func['name'],
                    'url': func['url'],
                    'status': 'pending',  # pending, completed, failed
                    'processed_at': None
                }
                for func in functions
            ]
        }

        self.save_progress(progress)
        print(f"Found {len(functions)} functions to process")
        return progress

    def get_current_batch(self, progress_data):
        """Get the current batch of functions to process"""
        # Load existing completed functions from JSON
        completed_function_names = set()
        if os.path.exists(self.data_file):
            try:
                self.db.load_from_json(self.data_file)
                completed_function_names = set(func.name for func in self.db.get_all_functions())
                print(f"Found {len(completed_function_names)} already completed functions in JSON")
            except Exception as e:
                print(f"Error loading existing data: {e}")

        # Get current online list of functions
        print("Fetching current online function list...")
        online_functions = self.parser.extract_api_functions_from_main_page()
        print(f"Found {len(online_functions)} functions online")

        # Find first uncompleted function
        uncompleted_functions = []
        for func in online_functions:
            if func['name'] not in completed_function_names:
                uncompleted_functions.append(func)

        print(f"Found {len(uncompleted_functions)} uncompleted functions")

        # Return the first batch_size functions that need to be processed
        current_batch = uncompleted_functions[:self.batch_size]

        if current_batch:
            print(f"Next batch: starting with '{current_batch[0]['name']}', {len(current_batch)} functions")

        return current_batch

    def process_batch(self):
        """Process the current batch"""
        progress_data = self.load_progress()

        current_batch = self.get_current_batch(progress_data)

        if not current_batch:
            print("No more functions to process.")
            self._advance_batch(progress_data)
            return

        print(f"\nProcessing batch of {len(current_batch)} functions")
        print("-" * 60)

        batch_successful = 0
        batch_failed = 0

        for i, func_info in enumerate(current_batch):
            print(f"[{i+1}/{len(current_batch)}] Processing {func_info['name']}...")

            try:
                api_func = self.parser.parse_function_details(func_info['url'])

                if api_func:
                    self.db.add_function(api_func)
                    batch_successful += 1
                    print(f"  ✓ Success")
                else:
                    batch_failed += 1
                    print(f"  ✗ Failed to parse")

                # Save progress every 10 functions
                if (i + 1) % 10 == 0:
                    self.db.save_to_json(self.data_file)
                    print(f"  💾 Progress saved (every 10 functions)")

                # Rate limiting
                time.sleep(5)

            except Exception as e:
                print(f"  ✗ Error: {e}")
                batch_failed += 1

        # Save final progress and data
        self.db.save_to_json(self.data_file)

        print(f"\nBatch completed:")
        print(f"  ✓ Successful: {batch_successful}")
        print(f"  ✗ Failed: {batch_failed}")

        # Check if there are more functions to process
        self._advance_batch(progress_data)

    def _advance_batch(self, progress_data):
        """Advance to the next batch or complete the scraping"""
        # Load existing completed functions from JSON
        completed_function_names = set()
        if os.path.exists(self.data_file):
            try:
                self.db.load_from_json(self.data_file)
                completed_function_names = set(func.name for func in self.db.get_all_functions())
            except Exception as e:
                print(f"Error loading existing data: {e}")

        # Get current online list of functions
        online_functions = self.parser.extract_api_functions_from_main_page()

        # Find uncompleted functions
        uncompleted_functions = []
        for func in online_functions:
            if func['name'] not in completed_function_names:
                uncompleted_functions.append(func)

        if len(uncompleted_functions) == 0:
            print(f"\n🎉 All functions completed!")
            print(f"Total completed: {len(completed_function_names)}")
            print(f"Total online: {len(online_functions)}")
        else:
            print(f"\n➡️  Ready for next batch")
            print(f"Completed so far: {len(completed_function_names)}")
            print(f"Remaining functions: {len(uncompleted_functions)}")
            print(f"Run the script again to process the next batch.")

    def show_status(self):
        """Show current scraping status"""
        progress_data = self.load_progress()

        # Just count what we have, no calculations
        pending_functions = [func for func in progress_data['functions'] if func['status'] == 'pending']

        print(f"\n📊 Scraping Status Report")
        print(f"=" * 50)
        print(f"Total Functions: {progress_data['total_functions']}")
        print(f"Completed: {progress_data['completed_functions']}")
        print(f"Failed: {len(progress_data['failed_functions'])}")
        print(f"Pending: {len(pending_functions)}")
        print(f"")
        print(f"Current Batch Number: {progress_data['current_batch'] + 1}")
        print(f"Batch Size: {self.batch_size}")
        print(f"Last Updated: {progress_data['last_updated']}")

        if progress_data['failed_functions']:
            print(f"\nFailed Functions ({len(progress_data['failed_functions'])}):")
            for i, func_name in enumerate(progress_data['failed_functions'][:10]):
                print(f"  {i+1}. {func_name}")
            if len(progress_data['failed_functions']) > 10:
                print(f"  ... and {len(progress_data['failed_functions']) - 10} more")

        # Check if there are pending functions in current batch
        current_batch = self.get_current_batch(progress_data)
        if current_batch:
            print(f"\n⏳ Next batch ready: {len(current_batch)} functions to process")
        elif len(pending_functions) > 0:
            print(f"\n⏳ {len(pending_functions)} functions remaining, but none in current batch range")
            print(f"   Will advance to next batch when you run the scraper")
        else:
            print(f"\n🎉 All functions completed!")

    def reset_progress(self):
        """Reset progress (use with caution)"""
        if os.path.exists(self.progress_file):
            os.remove(self.progress_file)
            print("Progress file deleted. Next run will start fresh.")
        else:
            print("No progress file found.")

    def retry_failed(self):
        """Retry failed functions"""
        progress_data = self.load_progress()

        if not progress_data['failed_functions']:
            print("No failed functions to retry.")
            return

        print(f"Retrying {len(progress_data['failed_functions'])} failed functions...")

        # Load existing data
        if os.path.exists(self.data_file):
            self.db.load_from_json(self.data_file)

        # Find failed function details
        failed_functions = []
        for func in progress_data['functions']:
            if func['name'] in progress_data['failed_functions']:
                failed_functions.append(func)

        retry_successful = 0
        retry_failed = 0

        for i, func_info in enumerate(failed_functions):
            print(f"[{i+1}/{len(failed_functions)}] Retrying {func_info['name']}...")

            try:
                api_func = self.parser.parse_function_details(func_info['url'])

                if api_func:
                    self.db.add_function(api_func)
                    func_info['status'] = 'completed'
                    func_info['processed_at'] = datetime.now().isoformat()
                    progress_data['completed_functions'] += 1
                    progress_data['failed_functions'].remove(func_info['name'])
                    retry_successful += 1
                    print(f"  ✓ Success on retry")
                else:
                    retry_failed += 1
                    print(f"  ✗ Failed again")

                # Rate limiting
                time.sleep(0.5)

            except Exception as e:
                print(f"  ✗ Error on retry: {e}")
                retry_failed += 1

        # Save results
        progress_data['last_updated'] = datetime.now().isoformat()
        self.save_progress(progress_data)
        self.db.save_to_json(self.data_file)

        print(f"\nRetry completed:")
        print(f"  ✓ Successful: {retry_successful}")
        print(f"  ✗ Still failed: {retry_failed}")

    def rebuild_json(self):
        """Rebuild JSON file from progress data for completed functions"""
        progress_data = self.load_progress()

        # Get all completed functions from progress
        completed_functions = [func for func in progress_data['functions'] if func['status'] == 'completed']

        print(f"Found {len(completed_functions)} completed functions in progress data")
        print("Rebuilding JSON file...")

        # Clear the database and rebuild from scratch
        self.db = APIDatabase()

        successful_rebuilds = 0
        failed_rebuilds = 0

        for i, func_info in enumerate(completed_functions):
            print(f"[{i+1}/{len(completed_functions)}] Rebuilding {func_info['name']}...")

            try:
                # Re-scrape the function to get the data
                api_func = self.parser.parse_function_details(func_info['url'])

                if api_func:
                    self.db.add_function(api_func)
                    successful_rebuilds += 1
                    print(f"  ✓ Rebuilt")
                else:
                    failed_rebuilds += 1
                    print(f"  ✗ Failed to rebuild")

                # Rate limiting
                time.sleep(0.5)

            except Exception as e:
                print(f"  ✗ Error rebuilding: {e}")
                failed_rebuilds += 1

        # Save the rebuilt data
        self.db.save_to_json(self.data_file)

        print(f"\nRebuild completed:")
        print(f"  ✓ Successfully rebuilt: {successful_rebuilds}")
        print(f"  ✗ Failed to rebuild: {failed_rebuilds}")
        print(f"  📄 JSON file now has {len(self.db.get_all_functions())} functions")


def main():
    """Main function with command handling"""
    import sys

    scraper = BatchScraper()

    if len(sys.argv) > 1:
        command = sys.argv[1].lower()

        if command == 'status':
            scraper.show_status()
        elif command == 'reset':
            scraper.reset_progress()
        elif command == 'retry':
            scraper.retry_failed()
        elif command == 'help':
            print("Available commands:")
            print("  python batch_scraper.py          - Process next batch")
            print("  python batch_scraper.py status   - Show current status")
            print("  python batch_scraper.py retry    - Retry failed functions")
            print("  python batch_scraper.py reset    - Reset progress (start over)")
            print("  python batch_scraper.py help     - Show this help")
        else:
            print(f"Unknown command: {command}")
            print("Use 'help' to see available commands.")
    else:
        # Default action: process next batch
        scraper.process_batch()


if __name__ == "__main__":
    main()
