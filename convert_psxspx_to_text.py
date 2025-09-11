#!/usr/bin/env python3
"""
PSXSPX Specifications HTML to Text Converter
Converts the PSXSPX specifications HTML file to text format.
"""

import re
from pathlib import Path

def extract_html_text(html_path):
    """Extract text from HTML using simple text extraction"""
    try:
        with open(html_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # Remove script and style elements
        content = re.sub(r'<script[^>]*>.*?</script>', '', content, flags=re.DOTALL | re.IGNORECASE)
        content = re.sub(r'<style[^>]*>.*?</style>', '', content, flags=re.DOTALL | re.IGNORECASE)
        
        # Convert HTML entities
        content = content.replace('&amp;', '&')
        content = content.replace('&lt;', '<')
        content = content.replace('&gt;', '>')
        content = content.replace('&quot;', '"')
        content = content.replace('&nbsp;', ' ')
        
        # Remove HTML tags but preserve structure
        content = re.sub(r'<br\s*/?>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'</p>', '\n\n', content, flags=re.IGNORECASE)
        content = re.sub(r'<h[1-6][^>]*>', '\n\n', content, flags=re.IGNORECASE)
        content = re.sub(r'</h[1-6]>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'<li[^>]*>', '\n• ', content, flags=re.IGNORECASE)
        content = re.sub(r'</li>', '', content, flags=re.IGNORECASE)
        content = re.sub(r'<ul[^>]*>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'</ul>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'<ol[^>]*>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'</ol>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'<table[^>]*>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'</table>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'<tr[^>]*>', '\n', content, flags=re.IGNORECASE)
        content = re.sub(r'</tr>', '', content, flags=re.IGNORECASE)
        content = re.sub(r'<td[^>]*>', ' | ', content, flags=re.IGNORECASE)
        content = re.sub(r'</td>', '', content, flags=re.IGNORECASE)
        content = re.sub(r'<th[^>]*>', ' | ', content, flags=re.IGNORECASE)
        content = re.sub(r'</th>', '', content, flags=re.IGNORECASE)
        
        # Remove remaining HTML tags
        content = re.sub(r'<[^>]+>', '', content)
        
        # Clean up whitespace
        content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)  # Multiple newlines to double
        content = re.sub(r'[ \t]+', ' ', content)  # Multiple spaces to single
        content = re.sub(r'\n ', '\n', content)  # Remove leading spaces on new lines
        
        # Clean up specific patterns
        content = re.sub(r'\| \|', '|', content)  # Fix table separators
        content = re.sub(r'^\s*\|\s*$', '', content, flags=re.MULTILINE)  # Remove empty table rows
        
        return content.strip()
    except Exception as e:
        return f"[HTML EXTRACTION ERROR: {html_path} - {str(e)}]\n"

def main():
    html_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/PSXSPX Specifications.html")
    output_file = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/PSXSPX_Specifications.txt")
    
    print("🔍 PSXSPX Specifications HTML to Text Converter")
    print("=" * 60)
    
    if not html_file.exists():
        print(f"❌ HTML file not found: {html_file}")
        return
    
    print(f"📄 Input file: {html_file}")
    print(f"📊 File size: {html_file.stat().st_size / (1024*1024):.1f} MB")
    
    # Extract text
    print("🔄 Converting HTML to text...")
    text_content = extract_html_text(html_file)
    
    # Add header
    header = f"""PSXSPX PLAYSTATION SPECIFICATIONS
{'='*80}
Source: https://problemkaputt.de/psx-spx.htm
Converted: {__import__('subprocess').run(['date'], capture_output=True, text=True).stdout.strip()}
File size: {len(text_content)} characters
{'='*80}

"""
    
    full_content = header + text_content
    
    # Write output
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(full_content)
    
    print(f"✅ Conversion complete!")
    print(f"📁 Output file: {output_file}")
    print(f"📊 Output size: {len(full_content)} characters")
    print(f"📄 Lines: {len(full_content.splitlines())}")
    
    # Check if file is small enough to read in one go
    if len(full_content) < 100000:  # Less than 100KB
        print("✅ File is small enough to read in one go")
    else:
        print("⚠️  File is large - consider chunking for better reference")

if __name__ == "__main__":
    main()
