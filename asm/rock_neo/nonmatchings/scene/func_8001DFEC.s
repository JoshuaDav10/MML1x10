.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DFEC
    /* E7EC 8001DFEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E7F0 8001DFF0 80100500 */  sll        $v0, $a1, 2
    /* E7F4 8001DFF4 21104500 */  addu       $v0, $v0, $a1
    /* E7F8 8001DFF8 1400BFAF */  sw         $ra, 0x14($sp)
    /* E7FC 8001DFFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* E800 8001E000 0400838C */  lw         $v1, 0x4($a0)
    /* E804 8001E004 80100200 */  sll        $v0, $v0, 2
    /* E808 8001E008 21104300 */  addu       $v0, $v0, $v1
    /* E80C 8001E00C 21204000 */  addu       $a0, $v0, $zero
    /* E810 8001E010 00009090 */  lbu        $s0, 0x0($a0)
    /* E814 8001E014 BA7A000C */  jal        func_8001EAE8
    /* E818 8001E018 00000000 */   nop
    /* E81C 8001E01C 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* E820 8001E020 0A80023C */  lui        $v0, %hi(D_800988E8)
    /* E824 8001E024 E888428C */  lw         $v0, %lo(D_800988E8)($v0)
    /* E828 8001E028 80281000 */  sll        $a1, $s0, 2
    /* E82C 8001E02C 06180302 */  srlv       $v1, $v1, $s0
    /* E830 8001E030 0C80013C */  lui        $at, %hi(Scene_work + 0x24)
    /* E834 8001E034 21082500 */  addu       $at, $at, $a1
    /* E838 8001E038 6C4C248C */  lw         $a0, %lo(Scene_work + 0x24)($at)
    /* E83C 8001E03C 25104300 */  or         $v0, $v0, $v1
    /* E840 8001E040 0A80013C */  lui        $at, %hi(D_800988E8)
    /* E844 8001E044 E88822AC */  sw         $v0, %lo(D_800988E8)($at)
    /* E848 8001E048 0B80013C */  lui        $at, %hi(D_800ACD40)
    /* E84C 8001E04C 21082500 */  addu       $at, $at, $a1
    /* E850 8001E050 40CD24AC */  sw         $a0, %lo(D_800ACD40)($at)
    /* E854 8001E054 1400BF8F */  lw         $ra, 0x14($sp)
    /* E858 8001E058 1000B08F */  lw         $s0, 0x10($sp)
    /* E85C 8001E05C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E860 8001E060 0800E003 */  jr         $ra
    /* E864 8001E064 00000000 */   nop
.size func_8001DFEC, . - func_8001DFEC
