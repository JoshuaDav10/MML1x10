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
  .L8005B480:
    /* 4BC80 8005B480 02000224 */  addiu      $v0, $zero, 0x2
    /* 4BC84 8005B484 3E006210 */  beq        $v1, $v0, .L8005B580
    /* 4BC88 8005B488 0010033C */   lui       $v1, (0x10000000 >> 16)
    /* 4BC8C 8005B48C 746D0108 */  j          .L8005B5D0
    /* 4BC90 8005B490 00000000 */   nop
  .L8005B494:
    /* 4BC94 8005B494 7D00C590 */  lbu        $a1, 0x7D($a2)
    /* 4BC98 8005B498 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 4BC9C 8005B49C 8C00C3A4 */  sh         $v1, 0x8C($a2)
    /* 4BCA0 8005B4A0 9400C3A4 */  sh         $v1, 0x94($a2)
    /* 4BCA4 8005B4A4 0014033C */  lui        $v1, (0x14000000 >> 16)
    /* 4BCA8 8005B4A8 9200C2A4 */  sh         $v0, 0x92($a2)
    /* 4BCAC 8005B4AC 9600C2A4 */  sh         $v0, 0x96($a2)
    /* 4BCB0 8005B4B0 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BCB4 8005B4B4 0008043C */  lui        $a0, (0x8000000 >> 16)
    /* 4BCB8 8005B4B8 B000C0A0 */  sb         $zero, 0xB0($a2)
    /* 4BCBC 8005B4BC B100C0A0 */  sb         $zero, 0xB1($a2)
    /* 4BCC0 8005B4C0 B200C0A0 */  sb         $zero, 0xB2($a2)
    /* 4BCC4 8005B4C4 8800C0A4 */  sh         $zero, 0x88($a2)
    /* 4BCC8 8005B4C8 8A00C0A4 */  sh         $zero, 0x8A($a2)
    /* 4BCCC 8005B4CC 8E00C0A4 */  sh         $zero, 0x8E($a2)
    /* 4BCD0 8005B4D0 9000C0A4 */  sh         $zero, 0x90($a2)
    /* 4BCD4 8005B4D4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4BCD8 8005B4D8 25104300 */  or         $v0, $v0, $v1
    /* 4BCDC 8005B4DC 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4BCE0 8005B4E0 0000C38C */  lw         $v1, 0x0($a2)
    /* 4BCE4 8005B4E4 24104400 */  and        $v0, $v0, $a0
    /* 4BCE8 8005B4E8 8000C2AC */  sw         $v0, 0x80($a2)
    /* 4BCEC 8005B4EC 7D00C5A0 */  sb         $a1, 0x7D($a2)
    /* 4BCF0 8005B4F0 25186400 */  or         $v1, $v1, $a0
    /* 4BCF4 8005B4F4 746D0108 */  j          .L8005B5D0
    /* 4BCF8 8005B4F8 0000C3AC */   sw        $v1, 0x0($a2)
  .L8005B4FC:
    /* 4BCFC 8005B4FC 0010043C */  lui        $a0, (0x10000000 >> 16)
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
  .L8005B580:
    /* 4BD80 8005B580 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BD84 8005B584 00000000 */  nop
    /* 4BD88 8005B588 25104300 */  or         $v0, $v0, $v1
    /* 4BD8C 8005B58C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4BD90 8005B590 B000C290 */  lbu        $v0, 0xB0($a2)
    /* 4BD94 8005B594 B100C390 */  lbu        $v1, 0xB1($a2)
    /* 4BD98 8005B598 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4BD9C 8005B59C B000C2A0 */  sb         $v0, 0xB0($a2)
    /* 4BDA0 8005B5A0 B200C290 */  lbu        $v0, 0xB2($a2)
    /* 4BDA4 8005B5A4 F8FF6324 */  addiu      $v1, $v1, -0x8
    /* 4BDA8 8005B5A8 B100C3A0 */  sb         $v1, 0xB1($a2)
    /* 4BDAC 8005B5AC B000C390 */  lbu        $v1, 0xB0($a2)
    /* 4BDB0 8005B5B0 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4BDB4 8005B5B4 06006014 */  bnez       $v1, .L8005B5D0
    /* 4BDB8 8005B5B8 B200C2A0 */   sb        $v0, 0xB2($a2)
    /* 4BDBC 8005B5BC FFF9033C */  lui        $v1, (0xF9FFFFFF >> 16)
    /* 4BDC0 8005B5C0 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BDC4 8005B5C4 FFFF6334 */  ori        $v1, $v1, (0xF9FFFFFF & 0xFFFF)
    /* 4BDC8 8005B5C8 24104300 */  and        $v0, $v0, $v1
    /* 4BDCC 8005B5CC 0000C2AC */  sw         $v0, 0x0($a2)
  .L8005B5D0:
    /* 4BDD0 8005B5D0 0800E003 */  jr         $ra
    /* 4BDD4 8005B5D4 00000000 */   nop
.size func_8005B454, . - func_8005B454
