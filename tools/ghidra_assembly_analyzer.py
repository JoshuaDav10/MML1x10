#!/usr/bin/env python3
"""
Ghidra Assembly Analyzer - Complete Program Structure Analysis
This tool analyzes the Ghidra assembly export format to extract:
- All function boundaries (start/end addresses)
- All jump table structures
- All global variable references
- Complete program structure mapping for perfect splat.yaml
"""

import os
import re
import sys
from collections import defaultdict, OrderedDict

class GhidraAssemblyAnalyzer:
    def __init__(self, assembly_file_path):
        self.assembly_file_path = assembly_file_path
        self.functions = OrderedDict()
        self.jump_tables = {}
        self.global_vars = set()
        self.function_calls = defaultdict(set)
        self.current_function = None
        self.current_address = None
        
    def analyze_complete_assembly(self):
        """Analyze the entire assembly file to extract all structural information"""
        print("🔍 GHIDRA ASSEMBLY ANALYSIS STARTING")
        print(f"📁 Analyzing: {self.assembly_file_path}")
        print(f"📊 File size: {os.path.getsize(self.assembly_file_path) / (1024*1024):.1f} MB")
        
        # Track analysis progress
        line_count = 0
        function_count = 0
        
        try:
            with open(self.assembly_file_path, 'r', encoding='utf-8', errors='ignore') as f:
                for line in f:
                    line_count += 1
                    
                    # Progress indicator
                    if line_count % 10000 == 0:
                        print(f"📈 Processed {line_count:,} lines, found {function_count} functions...")
                    
                    # Analyze each line
                    if self.is_function_start(line):
                        function_count += 1
                        self.extract_function_start(line)
                    elif self.is_function_end(line):
                        self.extract_function_end(line)
                    
                    # Extract jump tables
                    if self.is_jump_table(line):
                        self.extract_jump_table(line)
                    
                    # Extract global variables
                    if self.is_global_var(line):
                        self.extract_global_var(line)
                    
                    # Extract function calls
                    if self.is_function_call(line):
                        self.extract_function_call(line)
                        
        except Exception as e:
            print(f"❌ Error reading assembly file: {e}")
            return False
            
        print(f"✅ Analysis complete! Processed {line_count:,} lines")
        return True
    
    def is_function_start(self, line):
        """Check if line indicates start of a function"""
        # Look for function labels like:
        # FUN_8001XXXX
        # func_8001XXXX
        # LAB_8001XXXX
        return re.search(r'(?:FUN_|func_|LAB_)([0-9a-fA-F]{8})', line)
    
    def is_function_end(self, line):
        """Check if line indicates end of a function"""
        # Look for return instructions
        return 'jr         ra' in line or 'jr    $ra' in line or 'jr $ra' in line
    
    def is_jump_table(self, line):
        """Check if line contains jump table information"""
        return 'jtbl_' in line or 'jump table' in line.lower()
    
    def is_global_var(self, line):
        """Check if line contains global variable reference"""
        return re.search(r'D_[0-9a-fA-F]{8}', line)
    
    def is_function_call(self, line):
        """Check if line contains function call"""
        return 'jal' in line and re.search(r'(?:FUN_|func_|LAB_)([0-9a-fA-F]{8})', line)
    
    def extract_function_start(self, line):
        """Extract function start information"""
        match = re.search(r'(?:FUN_|func_|LAB_)([0-9a-fA-F]{8})', line)
        if match:
            addr = match.group(1)
            self.current_function = addr
            self.current_address = int(addr, 16)
            
            # Extract function name
            func_name_match = re.search(r'(FUN_|func_|LAB_)([0-9a-fA-F]{8})', line)
            if func_name_match:
                prefix = func_name_match.group(1)
                addr = func_name_match.group(2)
                func_name = f"{prefix}{addr}"
                
                if addr not in self.functions:
                    self.functions[addr] = {
                        'name': func_name,
                        'start': int(addr, 16),
                        'end': None,
                        'size': None,
                        'calls': set(),
                        'called_by': set()
                    }
                    print(f"🔍 Found function: {func_name} at 0x{addr}")
    
    def extract_function_end(self, line):
        """Extract function end information"""
        if self.current_function:
            # Find the address from the current line
            addr_match = re.match(r'^ram:([0-9a-fA-F]{8})', line)
            if addr_match:
                end_addr = int(addr_match.group(1), 16)
                func_addr = self.current_function
                
                if func_addr in self.functions:
                    self.functions[func_addr]['end'] = end_addr
                    self.functions[func_addr]['size'] = end_addr - self.functions[func_addr]['start']
                    print(f"✅ Function {self.functions[func_addr]['name']} ends at 0x{end_addr:08X}, size: {self.functions[func_addr]['size']} bytes")
                
                self.current_function = None
                self.current_address = None
    
    def extract_jump_table(self, line):
        """Extract jump table information"""
        match = re.search(r'jtbl_([0-9a-fA-F]{8})', line)
        if match:
            jtbl_addr = match.group(1)
            if jtbl_addr not in self.jump_tables:
                self.jump_tables[jtbl_addr] = {
                    'address': int(jtbl_addr, 16),
                    'targets': set(),
                    'references': set()
                }
                print(f"🎯 Found jump table: jtbl_{jtbl_addr}")
    
    def extract_global_var(self, line):
        """Extract global variable reference"""
        matches = re.findall(r'D_[0-9a-fA-F]{8}', line)
        for var in matches:
            self.global_vars.add(var)
    
    def extract_function_call(self, line):
        """Extract function call information"""
        if self.current_function:
            match = re.search(r'(?:FUN_|func_|LAB_)([0-9a-fA-F]{8})', line)
            if match:
                called_func = match.group(1)
                self.function_calls[self.current_function].add(called_func)
                
                # Update called_by relationships
                if called_func in self.functions:
                    self.functions[called_func]['called_by'].add(self.current_function)
    
    def generate_splat_yaml(self):
        """Generate perfect splat.yaml configuration"""
        print("\n🔧 GENERATING PERFECT SPLAT.YAML")
        
        yaml_content = []
        yaml_content.append("# Auto-generated splat.yaml from complete assembly analysis")
        yaml_content.append("options:")
        yaml_content.append("  platform: psx")
        yaml_content.append("  basename: rock_neo")
        yaml_content.append("  base_path: ../")
        yaml_content.append("  target_path: disks/us/ROCK_NEO.EXE")
        yaml_content.append("  asm_path: asm/rock_neo")
        yaml_content.append("  src_path: src/rock_neo")
        yaml_content.append("  find_file_boundaries: yes")
        yaml_content.append("  use_legacy_include_asm: no")
        yaml_content.append("")
        yaml_content.append("segments:")
        yaml_content.append("  - [0x800, header]")
        yaml_content.append("  - name: main")
        yaml_content.append("    type: code")
        yaml_content.append("    start: 0x800")
        yaml_content.append("    vram: 0x80010000")
        yaml_content.append("    subalign: 4")
        yaml_content.append("    subsegments:")
        
        # Add all functions in address order
        sorted_functions = sorted(self.functions.items(), key=lambda x: x[1]['start'])
        
        for addr, func_info in sorted_functions:
            if func_info['end'] and func_info['size']:
                # Convert to relative offset
                rel_start = func_info['start'] - 0x800
                rel_end = func_info['end'] - 0x800
                
                yaml_content.append(f"      - [0x{rel_start:X}, c, {func_info['name']}, 0x{rel_end:X}]")
        
        # Add final segment
        yaml_content.append("      - [0x2C640, c, player]")
        
        return "\n".join(yaml_content)
    
    def generate_analysis_report(self):
        """Generate comprehensive analysis report"""
        print("\n📊 GENERATING COMPREHENSIVE ANALYSIS REPORT")
        
        report = []
        report.append("=== COMPLETE ASSEMBLY ANALYSIS REPORT ===")
        report.append(f"Total Functions Found: {len(self.functions)}")
        report.append(f"Total Jump Tables: {len(self.jump_tables)}")
        report.append(f"Total Global Variables: {len(self.global_vars)}")
        report.append("")
        
        # Function statistics
        report.append("=== FUNCTION STATISTICS ===")
        total_size = 0
        size_distribution = defaultdict(int)
        
        for addr, func_info in self.functions.items():
            if func_info['size']:
                total_size += func_info['size']
                size_range = (func_info['size'] // 100) * 100
                size_distribution[size_range] += 1
        
        report.append(f"Total Code Size: {total_size:,} bytes ({total_size/1024:.1f} KB)")
        report.append("Size Distribution:")
        for size_range, count in sorted(size_distribution.items()):
            report.append(f"  {size_range}-{size_range+99} bytes: {count} functions")
        
        # Jump table analysis
        report.append("")
        report.append("=== JUMP TABLE ANALYSIS ===")
        for jtbl_addr, jtbl_info in self.jump_tables.items():
            report.append(f"jtbl_{jtbl_addr}: {len(jtbl_info['targets'])} targets")
        
        # Global variable analysis
        report.append("")
        report.append("=== GLOBAL VARIABLE ANALYSIS ===")
        report.append(f"Total D_ symbols: {len(self.global_vars)}")
        
        return "\n".join(report)
    
    def save_results(self):
        """Save all analysis results to files"""
        print("\n💾 SAVING ANALYSIS RESULTS")
        
        # Save function boundaries
        with open("complete_function_boundaries.csv", "w") as f:
            f.write("function_name,start_address,end_address,size_bytes\n")
            for addr, func_info in self.functions.items():
                if func_info['end'] and func_info['size']:
                    f.write(f"{func_info['name']},0x{func_info['start']:08X},0x{func_info['end']:08X},{func_info['size']}\n")
        
        # Save jump table information
        with open("jump_table_analysis.txt", "w") as f:
            f.write("=== JUMP TABLE ANALYSIS ===\n")
            for jtbl_addr, jtbl_info in self.jump_tables.items():
                f.write(f"jtbl_{jtbl_addr}: 0x{jtbl_info['address']:08X}\n")
                for target in jtbl_info['targets']:
                    f.write(f"  -> {target}\n")
        
        # Save global variables
        with open("global_variables.txt", "w") as f:
            f.write("=== GLOBAL VARIABLES ===\n")
            for var in sorted(self.global_vars):
                f.write(f"{var}\n")
        
        # Save perfect splat.yaml
        with open("perfect_splat.yaml", "w") as f:
            f.write(self.generate_splat_yaml())
        
        # Save analysis report
        with open("complete_analysis_report.txt", "w") as f:
            f.write(self.generate_analysis_report())
        
        print("✅ All results saved to files:")
        print("  - complete_function_boundaries.csv")
        print("  - jump_table_analysis.txt")
        print("  - global_variables.txt")
        print("  - perfect_splat.yaml")
        print("  - complete_analysis_report.txt")

def main():
    """Main analysis function"""
    assembly_file = "reference/rock_neo.exe.txt"
    
    if not os.path.exists(assembly_file):
        print(f"❌ Assembly file not found: {assembly_file}")
        return
    
    print("🚀 GHIDRA ASSEMBLY ANALYZER STARTING")
    print("=" * 50)
    
    analyzer = GhidraAssemblyAnalyzer(assembly_file)
    
    # Perform complete analysis
    if analyzer.analyze_complete_assembly():
        # Generate and save results
        analyzer.save_results()
        
        print("\n🎉 ANALYSIS COMPLETE!")
        print("=" * 50)
        print("📊 Results:")
        print(f"  Functions: {len(analyzer.functions)}")
        print(f"  Jump Tables: {len(analyzer.jump_tables)}")
        print(f"  Global Variables: {len(analyzer.global_vars)}")
        print("\n💡 Next Steps:")
        print("  1. Review perfect_splat.yaml")
        print("  2. Replace current splat.yaml with perfect version")
        print("  3. Run splat to extract all functions")
        print("  4. Achieve stable build with complete function map")
    else:
        print("❌ Analysis failed!")

if __name__ == "__main__":
    main()
