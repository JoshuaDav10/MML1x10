.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CAB8
    /* 1D2B8 8002CAB8 801B0300 */  sll        $v1, $v1, 14
    /* 1D2BC 8002CABC 25188302 */  or         $v1, $s4, $v1
    /* 1D2C0 8002CAC0 0B80013C */  lui        $at, %hi(D_800ACE08)
    /* 1D2C4 8002CAC4 21083000 */  addu       $at, $at, $s0
    /* 1D2C8 8002CAC8 08CE23A4 */  sh         $v1, %lo(D_800ACE08)($at)
    /* 1D2CC 8002CACC 0A80033C */  lui        $v1, %hi(D_800987D8)
    /* 1D2D0 8002CAD0 D887638C */  lw         $v1, %lo(D_800987D8)($v1)
    /* 1D2D4 8002CAD4 02002496 */  lhu        $a0, 0x2($s1)
    /* 1D2D8 8002CAD8 01006324 */  addiu      $v1, $v1, 0x1
    /* 1D2DC 8002CADC 23104400 */  subu       $v0, $v0, $a0
    /* 1D2E0 8002CAE0 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D2E4 8002CAE4 D88723AC */  sw         $v1, %lo(D_800987D8)($at)
    /* 1D2E8 8002CAE8 0B80013C */  lui        $at, %hi(D_800ACE0A)
    /* 1D2EC 8002CAEC 21083000 */  addu       $at, $at, $s0
    /* 1D2F0 8002CAF0 0ACE22A4 */  sh         $v0, %lo(D_800ACE0A)($at)
  .L8002CAF4:
    /* 1D2F4 8002CAF4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1D2F8 8002CAF8 2000B48F */  lw         $s4, 0x20($sp)
    /* 1D2FC 8002CAFC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1D300 8002CB00 1800B28F */  lw         $s2, 0x18($sp)
    /* 1D304 8002CB04 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D308 8002CB08 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D30C 8002CB0C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1D310 8002CB10 0800E003 */  jr         $ra
    /* 1D314 8002CB14 00000000 */   nop
.size func_8002CAB8, . - func_8002CAB8
