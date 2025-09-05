.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800547BC
    /* 44FBC 800547BC 0451010C */  jal        func_80054410
    /* 44FC0 800547C0 03008424 */   addiu     $a0, $a0, 0x3
    /* 44FC4 800547C4 6C00038E */  lw         $v1, 0x6C($s0)
    /* 44FC8 800547C8 6C00048E */  lw         $a0, 0x6C($s0)
    /* 44FCC 800547CC 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 44FD0 800547D0 05006390 */  lbu        $v1, 0x5($v1)
    /* 44FD4 800547D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 44FD8 800547D8 7E0003A2 */  sb         $v1, 0x7E($s0)
    /* 44FDC 800547DC 6C00038E */  lw         $v1, 0x6C($s0)
    /* 44FE0 800547E0 06008490 */  lbu        $a0, 0x6($a0)
    /* 44FE4 800547E4 07006324 */  addiu      $v1, $v1, 0x7
    /* 44FE8 800547E8 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 44FEC 800547EC 7F0004A2 */  sb         $a0, 0x7F($s0)
    /* 44FF0 800547F0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 44FF4 800547F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 44FF8 800547F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44FFC 800547FC 0800E003 */  jr         $ra
    /* 45000 80054800 00000000 */   nop
.size func_800547BC, . - func_800547BC
