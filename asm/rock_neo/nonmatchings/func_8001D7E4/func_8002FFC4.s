.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FFC4
    /* 207C4 8002FFC4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 207C8 8002FFC8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 207CC 8002FFCC 21888000 */  addu       $s1, $a0, $zero
    /* 207D0 8002FFD0 2800B0AF */  sw         $s0, 0x28($sp)
    /* 207D4 8002FFD4 2180A000 */  addu       $s0, $a1, $zero
    /* 207D8 8002FFD8 1800A427 */  addiu      $a0, $sp, 0x18
    /* 207DC 8002FFDC 2128C000 */  addu       $a1, $a2, $zero
    /* 207E0 8002FFE0 00340700 */  sll        $a2, $a3, 16
    /* 207E4 8002FFE4 4800A387 */  lh         $v1, 0x48($sp)
    /* 207E8 8002FFE8 4C00A287 */  lh         $v0, 0x4C($sp)
    /* 207EC 8002FFEC 03340600 */  sra        $a2, $a2, 16
    /* 207F0 8002FFF0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 207F4 8002FFF4 21386000 */  addu       $a3, $v1, $zero
    /* 207F8 8002FFF8 16C0000C */  jal        func_80030058
    /* 207FC 8002FFFC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 20800 80030000 0000028E */  lw         $v0, 0x0($s0)
    /* 20804 80030004 1800A38F */  lw         $v1, 0x18($sp)
    /* 20808 80030008 00000000 */  nop
    /* 2080C 8003000C 21104300 */  addu       $v0, $v0, $v1
    /* 20810 80030010 000002AE */  sw         $v0, 0x0($s0)
    /* 20814 80030014 0400028E */  lw         $v0, 0x4($s0)
    /* 20818 80030018 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 2081C 8003001C 21200002 */  addu       $a0, $s0, $zero
    /* 20820 80030020 21104300 */  addu       $v0, $v0, $v1
    /* 20824 80030024 040082AC */  sw         $v0, 0x4($a0)
    /* 20828 80030028 0800828C */  lw         $v0, 0x8($a0)
    /* 2082C 8003002C 2000A38F */  lw         $v1, 0x20($sp)
    /* 20830 80030030 21282002 */  addu       $a1, $s1, $zero
    /* 20834 80030034 21104300 */  addu       $v0, $v0, $v1
    /* 20838 80030038 54C0000C */  jal        func_80030150
    /* 2083C 8003003C 080082AC */   sw        $v0, 0x8($a0)
    /* 20840 80030040 3000BF8F */  lw         $ra, 0x30($sp)
    /* 20844 80030044 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 20848 80030048 2800B08F */  lw         $s0, 0x28($sp)
    /* 2084C 8003004C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 20850 80030050 0800E003 */  jr         $ra
    /* 20854 80030054 00000000 */   nop
.size func_8002FFC4, . - func_8002FFC4
