.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B454
    /* 4BC54 8005B454 21308000 */  addu       $a2, $a0, $zero
    /* 4BC58 8005B458 7D00C390 */  lbu        $v1, 0x7D($a2)
    /* 4BC5C 8005B45C 01000224 */  addiu      $v0, $zero, 0x1
    /* 4BC60 8005B460 26006210 */  beq        $v1, $v0, .L8005B4FC
    /* 4BC64 8005B464 02006228 */   slti      $v0, $v1, 0x2
    /* 4BC68 8005B468 05004010 */  beqz       $v0, .L8005B480
    /* 4BC6C 8005B46C 00000000 */   nop
    /* 4BC70 8005B470 08006010 */  beqz       $v1, .L8005B494
    /* 4BC74 8005B474 40010324 */   addiu     $v1, $zero, 0x140
    /* 4BC78 8005B478 746D0108 */  j          .L8005B5D0
    /* 4BC7C 8005B47C 00000000 */   nop
.size func_8005B454, . - func_8005B454
