.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B500
    /* 4BD00 8005B500 B000C390 */  lbu        $v1, 0xB0($a2)
    /* 4BD04 8005B504 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BD08 8005B508 08006324 */  addiu      $v1, $v1, 0x8
    /* 4BD0C 8005B50C B000C3A0 */  sb         $v1, 0xB0($a2)
    /* 4BD10 8005B510 B200C390 */  lbu        $v1, 0xB2($a2)
    /* 4BD14 8005B514 25104400 */  or         $v0, $v0, $a0
    /* 4BD18 8005B518 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4BD1C 8005B51C B100C290 */  lbu        $v0, 0xB1($a2)
    /* 4BD20 8005B520 08006324 */  addiu      $v1, $v1, 0x8
    /* 4BD24 8005B524 B200C3A0 */  sb         $v1, 0xB2($a2)
    /* 4BD28 8005B528 B000C390 */  lbu        $v1, 0xB0($a2)
    /* 4BD2C 8005B52C 08004224 */  addiu      $v0, $v0, 0x8
    /* 4BD30 8005B530 B100C2A0 */  sb         $v0, 0xB1($a2)
    /* 4BD34 8005B534 80000224 */  addiu      $v0, $zero, 0x80
    /* 4BD38 8005B538 25006214 */  bne        $v1, $v0, .L8005B5D0
    /* 4BD3C 8005B53C FFF7043C */   lui       $a0, (0xF7FFFFFF >> 16)
    /* 4BD40 8005B540 FFFF8434 */  ori        $a0, $a0, (0xF7FFFFFF & 0xFFFF)
    /* 4BD44 8005B544 0012033C */  lui        $v1, (0x12000000 >> 16)
    /* 4BD48 8005B548 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BD4C 8005B54C 7D00C590 */  lbu        $a1, 0x7D($a2)
    /* 4BD50 8005B550 25104300 */  or         $v0, $v0, $v1
    /* 4BD54 8005B554 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4BD58 8005B558 24104400 */  and        $v0, $v0, $a0
    /* 4BD5C 8005B55C 8000C48C */  lw         $a0, 0x80($a2)
    /* 4BD60 8005B560 6C00C38C */  lw         $v1, 0x6C($a2)
    /* 4BD64 8005B564 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4BD68 8005B568 7D00C5A0 */  sb         $a1, 0x7D($a2)
    /* 4BD6C 8005B56C 25104400 */  or         $v0, $v0, $a0
    /* 4BD70 8005B570 03006324 */  addiu      $v1, $v1, 0x3
    /* 4BD74 8005B574 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4BD78 8005B578 746D0108 */  j          .L8005B5D0
    /* 4BD7C 8005B57C 6C00C3AC */   sw        $v1, 0x6C($a2)
.size func_8005B500, . - func_8005B500
