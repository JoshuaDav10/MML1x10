.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FAC8
    /* 502C8 8005FAC8 010002A2 */  sb         $v0, 0x1($s0)
    /* 502CC 8005FACC 020000A2 */  sb         $zero, 0x2($s0)
  .L8005FAD0:
    /* 502D0 8005FAD0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 502D4 8005FAD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 502D8 8005FAD8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 502DC 8005FADC 0800E003 */  jr         $ra
    /* 502E0 8005FAE0 00000000 */   nop
.size func_8005FAC8, . - func_8005FAC8
