.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052B54
    /* 43354 80052B54 21B00000 */  addu       $s6, $zero, $zero
    /* 43358 80052B58 5000B88F */  lw         $t8, 0x50($sp)
    /* 4335C 80052B5C 00000000 */  nop
    /* 43360 80052B60 54000297 */  lhu        $v0, 0x54($t8)
    /* 43364 80052B64 00000000 */  nop
    /* 43368 80052B68 23100200 */  negu       $v0, $v0
    /* 4336C 80052B6C 3000A2A7 */  sh         $v0, 0x30($sp)
    /* 43370 80052B70 56000297 */  lhu        $v0, 0x56($t8)
    /* 43374 80052B74 3000A427 */  addiu      $a0, $sp, 0x30
    /* 43378 80052B78 23100200 */  negu       $v0, $v0
    /* 4337C 80052B7C 3200A2A7 */  sh         $v0, 0x32($sp)
    /* 43380 80052B80 58000297 */  lhu        $v0, 0x58($t8)
    /* 43384 80052B84 1000A527 */  addiu      $a1, $sp, 0x10
    /* 43388 80052B88 23100200 */  negu       $v0, $v0
    /* 4338C 80052B8C 6AED010C */  jal        RotMatrix
    /* 43390 80052B90 3400A2A7 */   sh        $v0, 0x34($sp)
    /* 43394 80052B94 1000A427 */  addiu      $a0, $sp, 0x10
    /* 43398 80052B98 5800A68F */  lw         $a2, 0x58($sp)
    /* 4339C 80052B9C 6AC0000C */  jal        func_800301A8
    /* 433A0 80052BA0 21280002 */   addu      $a1, $s0, $zero
    /* 433A4 80052BA4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 433A8 80052BA8 5800A68F */  lw         $a2, 0x58($sp)
    /* 433AC 80052BAC 6AC0000C */  jal        func_800301A8
    /* 433B0 80052BB0 2128C003 */   addu      $a1, $fp, $zero
.size func_80052B54, . - func_80052B54
