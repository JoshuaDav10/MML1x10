#!/usr/bin/env python3
"""
Progress Tracker - Real Numbers Only
This script prevents bullshit by counting actual files and giving real progress.
"""

import os
import glob

def count_real_progress():
    """Count actual extracted functions vs available functions"""
    
    print("=== REAL PROGRESS TRACKER - NO BULLSHIT ===\n")
    
    # Count extracted functions
    extracted_funcs = glob.glob("src/rock_neo/func_8001*.c")
    extracted_cd_funcs = glob.glob("src/rock_neo/Cd_*.c")
    
    total_extracted = len(extracted_funcs) + len(extracted_cd_funcs)
    
    # Count available functions
    available_funcs = glob.glob("asm/rock_neo/nonmatchings/cd/func_8001*.s")
    available_cd_funcs = glob.glob("asm/rock_neo/nonmatchings/cd/Cd_*.s")
    
    total_available = len(available_funcs) + len(available_cd_funcs)
    
    # Calculate real progress
    remaining = total_available - total_extracted
    progress_percent = (total_extracted / total_available) * 100 if total_available > 0 else 0
    
    print(f"📁 EXTRACTED FUNCTIONS: {total_extracted}")
    print(f"📁 AVAILABLE FUNCTIONS: {total_available}")
    print(f"📁 REMAINING TO EXTRACT: {remaining}")
    print(f"📊 PROGRESS: {progress_percent:.1f}%")
    
    print(f"\n📋 EXTRACTED FUNCTIONS:")
    for func in sorted(extracted_funcs + extracted_cd_funcs):
        print(f"  ✅ {os.path.basename(func)}")
    
    print(f"\n📋 REMAINING FUNCTIONS:")
    extracted_names = {os.path.basename(f).replace('.c', '') for f in extracted_funcs + extracted_cd_funcs}
    available_names = {os.path.basename(f).replace('.s', '') for f in available_funcs + available_cd_funcs}
    
    remaining_names = available_names - extracted_names
    for func in sorted(remaining_names):
        print(f"  ❌ {func}")
    
    print(f"\n=== REAL NUMBERS ONLY ===")
    print(f"DO NOT TRUST ANY OTHER PROGRESS REPORTS")
    print(f"RUN THIS SCRIPT TO GET THE TRUTH")
    
    return total_extracted, total_available, remaining

if __name__ == "__main__":
    count_real_progress()
