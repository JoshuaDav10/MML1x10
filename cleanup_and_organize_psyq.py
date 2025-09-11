#!/usr/bin/env python3
"""
PSYQ Documentation Cleanup and Organization Script
Removes fluff files and reorganizes by topic/area for easy reference.
"""

import os
import shutil
from pathlib import Path

def main():
    base_dir = Path("/home/deck/MML_Decomp_Project/reference/# Reference Documentation/psyq/individual_text_files")
    
    print("🧹 PSYQ Documentation Cleanup and Organization")
    print("=" * 60)
    
    # Step 1: Remove fluff files (6-line index files with sorting parameters)
    print("\n🗑️  Removing fluff files...")
    fluff_patterns = [
        "index.html?C=*.txt",
        "index.html?C=D;O=A.txt",
        "index.html?C=D;O=D.txt", 
        "index.html?C=M;O=A.txt",
        "index.html?C=M;O=D.txt",
        "index.html?C=N;O=A.txt",
        "index.html?C=N;O=D.txt",
        "index.html?C=S;O=A.txt",
        "index.html?C=S;O=D.txt"
    ]
    
    removed_count = 0
    for pattern in fluff_patterns:
        for file_path in base_dir.rglob(pattern):
            if file_path.is_file():
                print(f"  Removing: {file_path.relative_to(base_dir)}")
                file_path.unlink()
                removed_count += 1
    
    print(f"  Removed {removed_count} fluff files")
    
    # Step 2: Create organized directory structure
    print("\n📁 Creating organized directory structure...")
    
    organized_dirs = {
        "01_Core_Library": "Core PSYQ library functions and API reference",
        "02_Hardware": "Hardware specifications and low-level programming",
        "03_Graphics": "GPU, GTE, and graphics programming",
        "04_Audio": "Sound system and audio programming", 
        "05_CDROM": "CD-ROM system and file formats",
        "06_System": "OS, kernel, and system programming",
        "07_Development": "Development tools and guidelines",
        "08_Conferences": "Conference materials and presentations",
        "09_Technical_Notes": "Technical notes and specialized topics",
        "10_FAQ": "Frequently asked questions and troubleshooting"
    }
    
    for dir_name, description in organized_dirs.items():
        dir_path = base_dir / dir_name
        dir_path.mkdir(exist_ok=True)
        print(f"  Created: {dir_name} - {description}")
    
    # Step 3: Categorize and move files
    print("\n📂 Categorizing and moving files...")
    
    # Define file categorization rules
    categories = {
        "01_Core_Library": [
            "LibRef47.txt", "LibOver47.txt", "libpdfaq.txt", "user205.txt",
            "dev1.txt", "intro.txt", "psyq10.txt"
        ],
        "02_Hardware": [
            "Hardware.txt", "armref.txt", "pdahware.txt", "PDAKern.txt",
            "os.txt", "os2.txt", "memcard.txt", "controll.txt"
        ],
        "03_Graphics": [
            "3dgraph.txt", "Sprite.txt", "gpu6.txt", "gte7.txt", "adv_gpu.txt",
            "adv_gte.txt", "graph.txt", "anim.txt", "art5.txt", "artpath.txt"
        ],
        "04_Audio": [
            "sound.txt", "snd3.txt", "Sound20.txt", "sounread.txt", "xa_sound.txt",
            "Fmv_tips.txt", "rvsndpg.txt"
        ],
        "05_CDROM": [
            "cd4.txt", "cdrom.txt", "cd_ovw.txt", "cdmaster.txt", "adv_cd.txt",
            "Cdgen.txt", "Cdemul.txt", "FileFormat47.txt", "Filefrmt.txt"
        ],
        "06_System": [
            "optimize.txt", "Dataconv.txt", "overlay.txt", "fsinlin.txt",
            "fslnklb.txt", "fsdbovl.txt", "fsgpont.txt", "dcenvmp.txt",
            "dcglddsk.txt", "bdldex.txt", "bdmcard.txt"
        ],
        "07_Development": [
            "emul_faq.txt", "pretech.txt", "note520.txt", "note588.txt",
            "tech205.txt", "Dtlh2000.txt", "Dtlh2500.txt", "Inlinref.txt",
            "sdevtc.txt", "ordtbl.txt", "palguide.txt", "readme.txt"
        ],
        "08_Conferences": [
            "scee_dev.txt", "scee_bbs.txt", "scea_bbs.txt", "scej_bbs.txt",
            "sceenews.txt", "webmsg.txt", "perfpapr.txt", "mtrc13.txt",
            "epda1.txt", "epda2.txt", "mdecnote.txt", "Ds_servc.txt",
            "shft_jis.txt", "NeGcon.txt", "Guncont.txt", "Analog.txt",
            "joystk.txt", "lcable.txt", "tgpasqa.txt", "snide.txt",
            "mfanlog.txt", "mfmovi.txt", "upgtelt.txt", "upgtedv.txt",
            "mfprfanl.txt", "rvsart.txt", "mflibds.txt", "swsart.txt"
        ],
        "09_Technical_Notes": [
            "XATUT.txt", "mdec.txt", "gs.txt", "gs8.txt", "sio9.txt",
            "doc11.txt", "libpdfaq.txt", "H2700.txt", "Fmv_tips.txt"
        ],
        "10_FAQ": [
            "emul_faq.txt"
        ]
    }
    
    moved_count = 0
    for category, files in categories.items():
        category_dir = base_dir / category
        for filename in files:
            # Find the file in the current structure
            for file_path in base_dir.rglob(filename):
                if file_path.is_file() and file_path.parent != category_dir:
                    target_path = category_dir / filename
                    if not target_path.exists():
                        print(f"  Moving {filename} -> {category}")
                        shutil.move(str(file_path), str(target_path))
                        moved_count += 1
                    break
    
    # Move remaining files to appropriate categories
    print("\n📋 Moving remaining files...")
    remaining_files = list(base_dir.rglob("*.txt"))
    remaining_files = [f for f in remaining_files if f.parent.name not in organized_dirs.keys()]
    
    for file_path in remaining_files:
        filename = file_path.name
        if "bbs" in filename.lower() or "conf" in filename.lower():
            target_dir = base_dir / "08_Conferences"
        elif "faq" in filename.lower():
            target_dir = base_dir / "10_FAQ"
        elif "tech" in filename.lower() or "note" in filename.lower():
            target_dir = base_dir / "09_Technical_Notes"
        else:
            target_dir = base_dir / "07_Development"
        
        target_path = target_dir / filename
        if not target_path.exists():
            print(f"  Moving {filename} -> {target_dir.name}")
            shutil.move(str(file_path), str(target_path))
            moved_count += 1
    
    # Step 4: Create index files for each category
    print("\n📝 Creating category index files...")
    
    for category, description in organized_dirs.items():
        category_dir = base_dir / category
        if category_dir.exists():
            files = list(category_dir.glob("*.txt"))
            if files:
                index_content = f"""PSYQ DOCUMENTATION - {description}
{'='*80}
Category: {category}
Description: {description}
Files: {len(files)}

FILES IN THIS CATEGORY:
"""
                for file_path in sorted(files):
                    file_size = file_path.stat().st_size
                    file_size_kb = file_size / 1024
                    index_content += f"  {file_path.name} ({file_size_kb:.1f} KB)\n"
                
                index_file = category_dir / "INDEX.txt"
                with open(index_file, 'w', encoding='utf-8') as f:
                    f.write(index_content)
                print(f"  Created index for {category}")
    
    # Step 5: Create main index
    print("\n📋 Creating main index...")
    main_index = base_dir / "MAIN_INDEX.txt"
    
    index_content = f"""PSYQ DOCUMENTATION - MAIN INDEX
{'='*80}
Organized PSYQ Documentation for Mega Man Legends Decompilation
Generated: {os.popen('date').read().strip()}

CATEGORIES:
"""
    
    for category, description in organized_dirs.items():
        category_dir = base_dir / category
        if category_dir.exists():
            files = list(category_dir.glob("*.txt"))
            index_content += f"\n{category}: {description}\n"
            index_content += f"  Files: {len(files)}\n"
            for file_path in sorted(files):
                if file_path.name != "INDEX.txt":
                    index_content += f"    {file_path.name}\n"
    
    with open(main_index, 'w', encoding='utf-8') as f:
        f.write(index_content)
    
    print(f"\n✅ Organization complete!")
    print(f"📁 Organized directory: {base_dir}")
    print(f"📊 Files moved: {moved_count}")
    print(f"🗑️  Fluff files removed: {removed_count}")
    print(f"📋 Main index: MAIN_INDEX.txt")

if __name__ == "__main__":
    main()
