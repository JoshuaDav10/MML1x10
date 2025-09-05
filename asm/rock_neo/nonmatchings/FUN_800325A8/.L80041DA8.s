.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80041DA8
    /* 325A8 80041DA8 F208010C */  jal        Pl00_shot_enable_on
    /* 325AC 80041DAC 21200002 */   addu      $a0, $s0, $zero
    /* 325B0 80041DB0 08000224 */  addiu      $v0, $zero, 0x8
    /* 325B4 80041DB4 080011AE */  sw         $s1, 0x8($s0)
    /* 325B8 80041DB8 BD0002A2 */  sb         $v0, 0xBD($s0)
  .L80041DBC:
    /* 325BC 80041DBC EB46010C */  jal        func_80051BAC
    /* 325C0 80041DC0 21200002 */   addu      $a0, $s0, $zero
    /* 325C4 80041DC4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 325C8 80041DC8 1400B18F */  lw         $s1, 0x14($sp)
    /* 325CC 80041DCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 325D0 80041DD0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 325D4 80041DD4 0800E003 */  jr         $ra
    /* 325D8 80041DD8 00000000 */   nop
.size .L80041DA8, . - .L80041DA8
