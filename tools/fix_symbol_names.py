#!/usr/bin/env python3
"""
Automated Symbol Naming Fixer for Mega Man Legends Decompilation

This tool automatically detects and fixes wrong symbol names in INCLUDE_ASM directives.
It identifies patterns like func_8002XXXX that should be func_8001XXXX and corrects them.
It also fixes incorrect INCLUDE_ASM paths.
"""

import os
import re
import argparse
from pathlib import Path
from typing import List, Tuple, Dict

class SymbolNameFixer:
    def __init__(self, project_root: str):
        self.project_root = Path(project_root)
        self.src_dir = self.project_root / "src" / "rock_neo"
        self.fixes_applied = []
        self.errors_found = []
        
    def scan_for_include_asm(self) -> List[Path]:
        """Find all C files with INCLUDE_ASM directives."""
        c_files = []
        if self.src_dir.exists():
            for c_file in self.src_dir.glob("*.c"):
                if self.has_include_asm(c_file):
                    c_files.append(c_file)
        return c_files
    
    def has_include_asm(self, file_path: Path) -> bool:
        """Check if a file contains INCLUDE_ASM directives."""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
                return "INCLUDE_ASM" in content
        except Exception as e:
            self.errors_found.append(f"Error reading {file_path}: {e}")
            return False
    
    def extract_symbol_names(self, file_path: Path) -> List[Tuple[str, str, int]]:
        """
        Extract INCLUDE_ASM directives and their symbol names.
        Returns: [(full_line, symbol_name, line_number), ...]
        """
        symbols = []
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                for line_num, line in enumerate(f, 1):
                    # Match INCLUDE_ASM("path", symbol_name);
                    match = re.search(r'INCLUDE_ASM\("([^"]+)",\s*([^)]+)\);', line)
                    if match:
                        path, symbol = match.groups()
                        symbols.append((line.strip(), path.strip(), symbol.strip(), line_num))
        except Exception as e:
            self.errors_found.append(f"Error parsing {file_path}: {e}")
        return symbols
    
    def detect_wrong_symbols(self, symbols: List[Tuple[str, str, str, int]]) -> List[Tuple[str, str, str, str, int]]:
        """
        Detect wrong symbol names that need fixing.
        Returns: [(full_line, old_path, old_symbol, new_symbol, line_number), ...]
        """
        wrong_symbols = []
        
        for full_line, path, symbol, line_num in symbols:
            # Pattern: func_8002XXXX should be func_8001XXXX
            if symbol.startswith("func_8002"):
                # Extract the function number
                func_match = re.search(r'func_8002([0-9A-F]{4})', symbol)
                if func_match:
                    func_num = func_match.group(1)
                    # Convert to correct range (8001XXXX)
                    new_symbol = f"func_8001{func_num}"
                    wrong_symbols.append((full_line, path, symbol, new_symbol, line_num))
            
            # Pattern: func_8003XXXX should be func_8001XXXX  
            elif symbol.startswith("func_8003"):
                func_match = re.search(r'func_8003([0-9A-F]{4})', symbol)
                if func_match:
                    func_num = func_match.group(1)
                    new_symbol = f"func_8001{func_num}"
                    wrong_symbols.append((full_line, path, symbol, new_symbol, line_num))
            
            # Pattern: func_8004XXXX should be func_8001XXXX
            elif symbol.startswith("func_8004"):
                func_match = re.search(r'func_8004([0-9A-F]{4})', symbol)
                if func_match:
                    func_num = func_match.group(1)
                    new_symbol = f"func_8001{func_num}"
                    wrong_symbols.append((full_line, path, symbol, new_symbol, line_num))
            
            # Pattern: Function name mismatch - symbol doesn't match path
            elif symbol.startswith("func_8001"):
                # Extract function name from path
                path_func_match = re.search(r'func_8001([0-9A-F]{4})', path)
                if path_func_match:
                    path_func_num = path_func_match.group(1)
                    # Extract function name from symbol
                    symbol_func_match = re.search(r'func_8001([0-9A-F]{4})', symbol)
                    if symbol_func_match:
                        symbol_func_num = symbol_func_match.group(1)
                        # If they don't match, fix the symbol
                        if path_func_num != symbol_func_num:
                            new_symbol = f"func_8001{path_func_num}"
                            wrong_symbols.append((full_line, path, symbol, new_symbol, line_num))
        
        return wrong_symbols
    
    def detect_wrong_paths(self, symbols: List[Tuple[str, str, str, int]]) -> List[Tuple[str, str, str, str, int]]:
        """
        Detect wrong INCLUDE_ASM paths that need fixing.
        Returns: [(full_line, old_path, new_path, symbol, line_number), ...]
        """
        wrong_paths = []
        
        for full_line, path, symbol, line_num in symbols:
            # Pattern: config/../asm/rock_neo/nonmatchings/func_8001XXXX should be asm/rock_neo/nonmatchings/cd/func_8001XXXX
            if "config/../asm/rock_neo/nonmatchings/func_8001" in path:
                # Extract the function name
                func_match = re.search(r'func_8001([0-9A-F]{4})', path)
                if func_match:
                    func_num = func_match.group(1)
                    # Convert to correct path structure
                    new_path = f"asm/rock_neo/nonmatchings/cd/func_8001{func_num}"
                    wrong_paths.append((full_line, path, new_path, symbol, line_num))
            
            # Pattern: asm/rock_neo/nonmatchings/func_8001XXXX should be asm/rock_neo/nonmatchings/cd/func_8001XXXX
            elif "asm/rock_neo/nonmatchings/func_8001" in path and "/cd/" not in path:
                # Extract the function name
                func_match = re.search(r'func_8001([0-9A-F]{4})', path)
                if func_match:
                    func_num = func_match.group(1)
                    # Convert to correct path structure
                    new_path = f"asm/rock_neo/nonmatchings/cd/func_8001{func_num}"
                    wrong_paths.append((full_line, path, new_path, symbol, line_num))
        
        return wrong_paths
    
    def fix_symbol_names(self, file_path: Path, wrong_symbols: List[Tuple[str, str, str, str, int]], dry_run: bool = True) -> int:
        """
        Fix wrong symbol names in a file.
        Returns: Number of fixes applied
        """
        if not wrong_symbols:
            return 0
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            
            fixes_applied = 0
            
            for full_line, old_path, old_symbol, new_symbol, line_num in wrong_symbols:
                if line_num <= len(lines):
                    old_line = lines[line_num - 1].strip()
                    if old_line == full_line:
                        # Create new line with corrected symbol
                        new_line = full_line.replace(old_symbol, new_symbol)
                        lines[line_num - 1] = new_line + '\n'
                        
                        if not dry_run:
                            self.fixes_applied.append({
                                'file': str(file_path),
                                'line': line_num,
                                'type': 'symbol',
                                'old': old_symbol,
                                'new': new_symbol,
                                'old_line': full_line,
                                'new_line': new_line
                            })
                        
                        fixes_applied += 1
            
            # Write back to file if not dry run
            if not dry_run and fixes_applied > 0:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.writelines(lines)
            
            return fixes_applied
            
        except Exception as e:
            self.errors_found.append(f"Error fixing {file_path}: {e}")
            return 0
    
    def fix_paths(self, file_path: Path, wrong_paths: List[Tuple[str, str, str, str, int]], dry_run: bool = True) -> int:
        """
        Fix wrong INCLUDE_ASM paths in a file.
        Returns: Number of fixes applied
        """
        if not wrong_paths:
            return 0
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            
            fixes_applied = 0
            
            for full_line, old_path, new_path, symbol, line_num in wrong_paths:
                if line_num <= len(lines):
                    old_line = lines[line_num - 1].strip()
                    if old_line == full_line:
                        # Create new line with corrected path
                        new_line = full_line.replace(old_path, new_path)
                        lines[line_num - 1] = new_line + '\n'
                        
                        if not dry_run:
                            self.fixes_applied.append({
                                'file': str(file_path),
                                'line': line_num,
                                'type': 'path',
                                'old': old_path,
                                'new': new_path,
                                'old_line': full_line,
                                'new_line': new_line
                            })
                        
                        fixes_applied += 1
            
            # Write back to file if not dry run
            if not dry_run and fixes_applied > 0:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.writelines(lines)
            
            return fixes_applied
            
        except Exception as e:
            self.errors_found.append(f"Error fixing {file_path}: {e}")
            return 0
    
    def run(self, dry_run: bool = True) -> Dict:
        """Run the symbol name fixer."""
        print(f"🔍 Scanning for INCLUDE_ASM directives...")
        
        c_files = self.scan_for_include_asm()
        print(f"📁 Found {len(c_files)} C files with INCLUDE_ASM directives")
        
        total_symbols = 0
        total_wrong_symbols = 0
        total_wrong_paths = 0
        total_fixes = 0
        
        for c_file in c_files:
            print(f"\n📄 Processing: {c_file.name}")
            
            # Extract symbols
            symbols = self.extract_symbol_names(c_file)
            total_symbols += len(symbols)
            print(f"   Found {len(symbols)} INCLUDE_ASM directives")
            
            # Detect wrong symbols
            wrong_symbols = self.detect_wrong_symbols(symbols)
            total_wrong_symbols += len(wrong_symbols)
            
            # Detect wrong paths
            wrong_paths = self.detect_wrong_paths(symbols)
            total_wrong_paths += len(wrong_paths)
            
            if wrong_symbols:
                print(f"   ⚠️  Found {len(wrong_symbols)} wrong symbol names:")
                for _, _, old_symbol, new_symbol, line_num in wrong_symbols:
                    print(f"      Line {line_num}: {old_symbol} → {new_symbol}")
                
                # Fix symbols
                fixes = self.fix_symbol_names(c_file, wrong_symbols, dry_run)
                total_fixes += fixes
                
                if dry_run:
                    print(f"   🔍 Would fix {fixes} symbols (dry run)")
                else:
                    print(f"   ✅ Fixed {fixes} symbols")
            
            if wrong_paths:
                print(f"   ⚠️  Found {len(wrong_paths)} wrong paths:")
                for _, old_path, new_path, _, line_num in wrong_paths:
                    print(f"      Line {line_num}: {old_path} → {new_path}")
                
                # Fix paths
                fixes = self.fix_paths(c_file, wrong_paths, dry_run)
                total_fixes += fixes
                
                if dry_run:
                    print(f"   🔍 Would fix {fixes} paths (dry run)")
                else:
                    print(f"   ✅ Fixed {fixes} paths")
            
            if not wrong_symbols and not wrong_paths:
                print(f"   ✅ All symbols and paths look correct")
        
        # Generate report
        report = {
            'total_files': len(c_files),
            'total_symbols': total_symbols,
            'total_wrong_symbols': total_wrong_symbols,
            'total_wrong_paths': total_wrong_paths,
            'total_fixes': total_fixes,
            'fixes_applied': self.fixes_applied,
            'errors_found': self.errors_found
        }
        
        return report
    
    def print_report(self, report: Dict):
        """Print a summary report."""
        print("\n" + "="*60)
        print("📊 SYMBOL NAMING FIXER REPORT")
        print("="*60)
        print(f"📁 Files processed: {report['total_files']}")
        print(f"🔗 Total INCLUDE_ASM directives: {report['total_symbols']}")
        print(f"⚠️  Wrong symbol names found: {report['total_wrong_symbols']}")
        print(f"⚠️  Wrong paths found: {report['total_wrong_paths']}")
        print(f"✅ Total fixes: {report['total_fixes']}")
        
        if report['errors_found']:
            print(f"\n❌ Errors encountered:")
            for error in report['errors_found']:
                print(f"   {error}")
        
        if report['fixes_applied']:
            print(f"\n🔧 Fixes applied:")
            for fix in report['fixes_applied']:
                if fix['type'] == 'symbol':
                    print(f"   {fix['file']}:{fix['line']} SYMBOL: {fix['old']} → {fix['new']}")
                else:
                    print(f"   {fix['file']}:{fix['line']} PATH: {fix['old']} → {fix['new']}")
        
        print("="*60)

def main():
    parser = argparse.ArgumentParser(
        description="Automated Symbol Naming Fixer for Mega Man Legends Decompilation"
    )
    parser.add_argument(
        "--dry-run", 
        action="store_true", 
        default=True,
        help="Show what would be fixed without making changes (default: True)"
    )
    parser.add_argument(
        "--execute", 
        action="store_true", 
        help="Actually apply the fixes (use with caution!)"
    )
    parser.add_argument(
        "--project-root", 
        default=".",
        help="Project root directory (default: current directory)"
    )
    
    args = parser.parse_args()
    
    # Determine if this is a dry run
    dry_run = not args.execute
    
    if not dry_run:
        print("⚠️  WARNING: This will modify files! Are you sure? (Ctrl+C to cancel)")
        try:
            input("Press Enter to continue...")
        except KeyboardInterrupt:
            print("\n❌ Cancelled by user")
            return
    
    # Run the fixer
    fixer = SymbolNameFixer(args.project_root)
    report = fixer.run(dry_run=dry_run)
    fixer.print_report(report)
    
    if dry_run and (report['total_wrong_symbols'] > 0 or report['total_wrong_paths'] > 0):
        print(f"\n💡 To apply these fixes, run: python3 tools/fix_symbol_names.py --execute")
    elif dry_run:
        print(f"\n✅ No symbol naming or path issues found!")

if __name__ == "__main__":
    main()
