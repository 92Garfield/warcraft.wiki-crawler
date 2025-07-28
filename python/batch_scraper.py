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

    def __init__(self, batch_size=100):
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
        start_idx = progress_data['current_batch'] * self.batch_size
        end_idx = start_idx + self.batch_size

        # Get pending functions in the current batch
        pending_functions = [
            func for func in progress_data['functions'][start_idx:end_idx]
            if func['status'] == 'pending'
        ]

        return pending_functions

    def process_batch(self):
        """Process the current batch"""
        progress_data = self.load_progress()

        # Load existing data if available
        if os.path.exists(self.data_file):
            try:
                self.db.load_from_json(self.data_file)
                print(f"Loaded existing data: {len(self.db.get_all_functions())} functions")
            except Exception as e:
                print(f"Error loading existing data: {e}")

        current_batch = self.get_current_batch(progress_data)

        if not current_batch:
            print("No pending functions in current batch. Moving to next batch or completing.")
            self._advance_batch(progress_data)
            return

        batch_num = progress_data['current_batch'] + 1
        total_batches = (progress_data['total_functions'] + self.batch_size - 1) // self.batch_size

        print(f"\nProcessing Batch {batch_num}/{total_batches}")
        print(f"Functions in this batch: {len(current_batch)}")
        print(f"Overall progress: {progress_data['completed_functions']}/{progress_data['total_functions']} completed")
        print("-" * 60)

        batch_successful = 0
        batch_failed = 0

        for i, func_info in enumerate(current_batch):
            print(f"[{i+1}/{len(current_batch)}] Processing {func_info['name']}...")

            try:
                api_func = self.parser.parse_function_details(func_info['url'])

                if api_func:
                    self.db.add_function(api_func)
                    func_info['status'] = 'completed'
                    func_info['processed_at'] = datetime.now().isoformat()
                    progress_data['completed_functions'] += 1
                    batch_successful += 1
                    print(f"  ✓ Success")
                else:
                    func_info['status'] = 'failed'
                    func_info['processed_at'] = datetime.now().isoformat()
                    progress_data['failed_functions'].append(func_info['name'])
                    batch_failed += 1
                    print(f"  ✗ Failed to parse")

                # Save progress every 10 functions
                if (i + 1) % 10 == 0:
                    progress_data['last_updated'] = datetime.now().isoformat()
                    self.save_progress(progress_data)
                    self.db.save_to_json(self.data_file)
                    print(f"  💾 Progress saved (every 10 functions)")

                # Rate limiting
                time.sleep(0.5)

            except Exception as e:
                print(f"  ✗ Error: {e}")
                func_info['status'] = 'failed'
                func_info['processed_at'] = datetime.now().isoformat()
                progress_data['failed_functions'].append(func_info['name'])
                batch_failed += 1

        # Save final progress and data
        progress_data['last_updated'] = datetime.now().isoformat()
        self.save_progress(progress_data)
        self.db.save_to_json(self.data_file)

        print(f"\nBatch {batch_num} completed:")
        print(f"  ✓ Successful: {batch_successful}")
        print(f"  ✗ Failed: {batch_failed}")
        print(f"  📊 Overall: {progress_data['completed_functions']}/{progress_data['total_functions']} completed")

        # Check if batch is complete
        if not self.get_current_batch(progress_data):
            self._advance_batch(progress_data)

    def _advance_batch(self, progress_data):
        """Advance to the next batch or complete the scraping"""
        progress_data['current_batch'] += 1
        total_batches = (progress_data['total_functions'] + self.batch_size - 1) // self.batch_size

        if progress_data['current_batch'] >= total_batches:
            print(f"\n🎉 All batches completed!")
            print(f"Total functions processed: {progress_data['completed_functions']}")
            print(f"Total failed: {len(progress_data['failed_functions'])}")
            if progress_data['failed_functions']:
                print(f"Failed functions: {progress_data['failed_functions'][:10]}...")
        else:
            next_batch = progress_data['current_batch'] + 1
            print(f"\n➡️  Ready for batch {next_batch}/{total_batches}")
            print(f"Run the script again to process the next batch.")

        self.save_progress(progress_data)

    def show_status(self):
        """Show current scraping status"""
        progress_data = self.load_progress()

        total_batches = (progress_data['total_functions'] + self.batch_size - 1) // self.batch_size
        current_batch_num = progress_data['current_batch'] + 1

        print(f"\n📊 Scraping Status Report")
        print(f"=" * 50)
        print(f"Total Functions: {progress_data['total_functions']}")
        print(f"Completed: {progress_data['completed_functions']}")
        print(f"Failed: {len(progress_data['failed_functions'])}")
        print(f"Remaining: {progress_data['total_functions'] - progress_data['completed_functions'] - len(progress_data['failed_functions'])}")
        print(f"")
        print(f"Current Batch: {current_batch_num}/{total_batches}")
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
        else:
            if current_batch_num <= total_batches:
                print(f"\n✅ Current batch complete. Ready to advance to next batch.")
            else:
                print(f"\n🎉 All batches completed!")

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
