#!/usr/bin/env python3
"""
PSYQ Documentation Consolidation Script
Extracts text from all PDF and HTML files and consolidates into a single text file.
"""

import os
import subprocess
import sys
from pathlib import Path

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
    psyq_dir = Path("/home/deck/MML_Decomp_Project/# Reference Documentation/PSX Development/PSYQ")
    output_file = Path("/home/deck/MML_Decomp_Project/# Reference Documentation/PSX Development/PSYQ/PSYQ_COMPLETE_DOCUMENTATION.txt")
    
    print("🔍 PSYQ Documentation Consolidation Script")
    print("=" * 50)
    
    # Find all PDF and HTML files
    pdf_files = list(psyq_dir.rglob("*.pdf"))
    html_files = list(psyq_dir.rglob("*.html"))
    
    print(f"Found {len(pdf_files)} PDF files")
    print(f"Found {len(html_files)} HTML files")
    print(f"Total files to process: {len(pdf_files) + len(html_files)}")
    
    with open(output_file, 'w', encoding='utf-8') as outfile:
        outfile.write("PSYQ COMPLETE DOCUMENTATION\n")
        outfile.write("=" * 50 + "\n")
        outfile.write("Source: https://psx.arthus.net/sdk/Psy-Q/DOCS/\n")
        outfile.write(f"Consolidated on: {subprocess.run(['date'], capture_output=True, text=True).stdout.strip()}\n")
        outfile.write(f"Total files processed: {len(pdf_files) + len(html_files)}\n")
        outfile.write("=" * 50 + "\n\n")
        
        # Process PDF files
        print("\n📄 Processing PDF files...")
        for i, pdf_file in enumerate(pdf_files, 1):
            print(f"  [{i}/{len(pdf_files)}] {pdf_file.name}")
            outfile.write(f"\n\n{'='*80}\n")
            outfile.write(f"PDF FILE: {pdf_file.relative_to(psyq_dir)}\n")
            outfile.write(f"{'='*80}\n\n")
            
            text = extract_pdf_text(str(pdf_file))
            outfile.write(text)
            outfile.write("\n\n")
        
        # Process HTML files
        print("\n🌐 Processing HTML files...")
        for i, html_file in enumerate(html_files, 1):
            print(f"  [{i}/{len(html_files)}] {html_file.name}")
            outfile.write(f"\n\n{'='*80}\n")
            outfile.write(f"HTML FILE: {html_file.relative_to(psyq_dir)}\n")
            outfile.write(f"{'='*80}\n\n")
            
            text = extract_html_text(str(html_file))
            outfile.write(text)
            outfile.write("\n\n")
    
    # Get file size
    file_size = output_file.stat().st_size
    file_size_mb = file_size / (1024 * 1024)
    
    print(f"\n✅ Consolidation complete!")
    print(f"📁 Output file: {output_file}")
    print(f"📊 File size: {file_size_mb:.2f} MB")
    print(f"📄 Total files processed: {len(pdf_files) + len(html_files)}")

if __name__ == "__main__":
    main()
