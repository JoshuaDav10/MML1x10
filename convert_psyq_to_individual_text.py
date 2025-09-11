#!/usr/bin/env python3
"""
PSYQ Individual Text File Converter
Converts all PDF and HTML files to individual text files while preserving directory structure.
"""

import os
import subprocess
import sys
from pathlib import Path
import shutil

def extract_pdf_text(pdf_path):
    """Extract text from PDF using pdftotext"""
    try:
        result = subprocess.run(['pdftotext', '-layout', pdf_path, '-'], 
                              capture_output=True, text=True, timeout=30)
        if result.returncode == 0:
            return result.stdout
        else:
            print(f"Error extracting PDF {pdf_path}: {result.stderr}")
            return f"[PDF EXTRACTION ERROR: {pdf_path}]\n"
    except subprocess.TimeoutExpired:
        return f"[PDF EXTRACTION TIMEOUT: {pdf_path}]\n"
    except FileNotFoundError:
        return f"[PDF EXTRACTION FAILED - pdftotext not found: {pdf_path}]\n"

def extract_html_text(html_path):
    """Extract text from HTML using BeautifulSoup or simple text extraction"""
    try:
        with open(html_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # Simple HTML tag removal (basic approach)
        import re
        # Remove script and style elements
        content = re.sub(r'<script[^>]*>.*?</script>', '', content, flags=re.DOTALL | re.IGNORECASE)
        content = re.sub(r'<style[^>]*>.*?</style>', '', content, flags=re.DOTALL | re.IGNORECASE)
        # Remove HTML tags
        content = re.sub(r'<[^>]+>', '', content)
        # Clean up whitespace
        content = re.sub(r'\s+', ' ', content)
        content = re.sub(r'\n\s*\n', '\n\n', content)
        
        return content.strip()
    except Exception as e:
        return f"[HTML EXTRACTION ERROR: {html_path} - {str(e)}]\n"

def main():
    # Source directory (original downloaded files)
    source_dir = Path("/home/deck/MML_Decomp_Project/# Reference Documentation/PSX Development/PSYQ/psx.arthus.net/sdk/Psy-Q/DOCS")
    
    # Target directory (individual text files)
    target_dir = Path("/home/deck/MML_Decomp_Project/reference/psx_docs/Software/psyq/individual_text_files")
    
    # Desktop copy directory
    desktop_dir = Path("/home/deck/Desktop/PSYQ_Documentation/individual_text_files")
    
    print("🔍 PSYQ Individual Text File Converter")
    print("=" * 50)
    
    # Create target directories
    target_dir.mkdir(parents=True, exist_ok=True)
    desktop_dir.mkdir(parents=True, exist_ok=True)
    
    # Find all PDF and HTML files
    pdf_files = list(source_dir.rglob("*.pdf"))
    html_files = list(source_dir.rglob("*.html"))
    
    print(f"Found {len(pdf_files)} PDF files")
    print(f"Found {len(html_files)} HTML files")
    print(f"Total files to process: {len(pdf_files) + len(html_files)}")
    
    processed_count = 0
    error_count = 0
    
    # Process PDF files
    print("\n📄 Processing PDF files...")
    for i, pdf_file in enumerate(pdf_files, 1):
        print(f"  [{i}/{len(pdf_files)}] {pdf_file.name}")
        
        # Calculate relative path from source
        rel_path = pdf_file.relative_to(source_dir)
        
        # Create target file path (replace .pdf with .txt)
        target_file = target_dir / rel_path.with_suffix('.txt')
        desktop_file = desktop_dir / rel_path.with_suffix('.txt')
        
        # Create target directories
        target_file.parent.mkdir(parents=True, exist_ok=True)
        desktop_file.parent.mkdir(parents=True, exist_ok=True)
        
        # Extract text
        text = extract_pdf_text(str(pdf_file))
        
        # Add header
        header = f"PSYQ DOCUMENTATION - {rel_path}\n"
        header += "=" * 80 + "\n"
        header += f"Source: {pdf_file}\n"
        header += f"Converted: {subprocess.run(['date'], capture_output=True, text=True).stdout.strip()}\n"
        header += "=" * 80 + "\n\n"
        
        full_text = header + text
        
        # Write to both locations
        try:
            with open(target_file, 'w', encoding='utf-8') as f:
                f.write(full_text)
            with open(desktop_file, 'w', encoding='utf-8') as f:
                f.write(full_text)
            processed_count += 1
        except Exception as e:
            print(f"    Error writing {target_file}: {e}")
            error_count += 1
    
    # Process HTML files
    print("\n🌐 Processing HTML files...")
    for i, html_file in enumerate(html_files, 1):
        print(f"  [{i}/{len(html_files)}] {html_file.name}")
        
        # Calculate relative path from source
        rel_path = html_file.relative_to(source_dir)
        
        # Create target file path (replace .html with .txt)
        target_file = target_dir / rel_path.with_suffix('.txt')
        desktop_file = desktop_dir / rel_path.with_suffix('.txt')
        
        # Create target directories
        target_file.parent.mkdir(parents=True, exist_ok=True)
        desktop_file.parent.mkdir(parents=True, exist_ok=True)
        
        # Extract text
        text = extract_html_text(str(html_file))
        
        # Add header
        header = f"PSYQ DOCUMENTATION - {rel_path}\n"
        header += "=" * 80 + "\n"
        header += f"Source: {html_file}\n"
        header += f"Converted: {subprocess.run(['date'], capture_output=True, text=True).stdout.strip()}\n"
        header += "=" * 80 + "\n\n"
        
        full_text = header + text
        
        # Write to both locations
        try:
            with open(target_file, 'w', encoding='utf-8') as f:
                f.write(full_text)
            with open(desktop_file, 'w', encoding='utf-8') as f:
                f.write(full_text)
            processed_count += 1
        except Exception as e:
            print(f"    Error writing {target_file}: {e}")
            error_count += 1
    
    # Create index files
    print("\n📋 Creating index files...")
    
    # Create main index
    index_content = f"""PSYQ DOCUMENTATION INDEX
{'='*50}
Generated: {subprocess.run(['date'], capture_output=True, text=True).stdout.strip()}
Total files processed: {processed_count}
Errors: {error_count}

PDF FILES ({len(pdf_files)}):
"""
    
    for pdf_file in sorted(pdf_files):
        rel_path = pdf_file.relative_to(source_dir)
        index_content += f"  {rel_path}\n"
    
    index_content += f"\nHTML FILES ({len(html_files)}):\n"
    
    for html_file in sorted(html_files):
        rel_path = html_file.relative_to(source_dir)
        index_content += f"  {rel_path}\n"
    
    # Write index to both locations
    with open(target_dir / "INDEX.txt", 'w', encoding='utf-8') as f:
        f.write(index_content)
    with open(desktop_dir / "INDEX.txt", 'w', encoding='utf-8') as f:
        f.write(index_content)
    
    print(f"\n✅ Conversion complete!")
    print(f"📁 MML Reference: {target_dir}")
    print(f"📁 Desktop Copy: {desktop_dir}")
    print(f"📊 Files processed: {processed_count}")
    print(f"❌ Errors: {error_count}")
    print(f"📋 Index file: INDEX.txt")

if __name__ == "__main__":
    main()
