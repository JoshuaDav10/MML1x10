.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8005B480
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
.size .L8005B480, . - .L8005B480
