.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042294
    /* 32A94 80042294 931B4290 */  lbu        $v0, 0x1B93($v0)
    /* 32A98 80042298 00000000 */  nop
    /* 32A9C 8004229C 06004010 */  beqz       $v0, .L800422B8
    /* 32AA0 800422A0 FF00043C */   lui       $a0, (0xFFFF00 >> 16)
  .L800422A4:
    /* 32AA4 800422A4 930C010C */  jal        func_8004324C
    /* 32AA8 800422A8 21200002 */   addu      $a0, $s0, $zero
    /* 32AAC 800422AC 0E004010 */  beqz       $v0, .L800422E8
    /* 32AB0 800422B0 00000000 */   nop
  .L800422B4:
    /* 32AB4 800422B4 FF00043C */  lui        $a0, (0xFFFF00 >> 16)
  .L800422B8:
    /* 32AB8 800422B8 00FF8434 */  ori        $a0, $a0, (0xFFFF00 & 0xFFFF)
    /* 32ABC 800422BC 0200033C */  lui        $v1, (0x20D00 >> 16)
    /* 32AC0 800422C0 0800028E */  lw         $v0, 0x8($s0)
    /* 32AC4 800422C4 000D6334 */  ori        $v1, $v1, (0x20D00 & 0xFFFF)
    /* 32AC8 800422C8 24104400 */  and        $v0, $v0, $a0
    /* 32ACC 800422CC 02004314 */  bne        $v0, $v1, .L800422D8
    /* 32AD0 800422D0 06000224 */   addiu     $v0, $zero, 0x6
    /* 32AD4 800422D4 0A0002A2 */  sb         $v0, 0xA($s0)
  .L800422D8:
    /* 32AD8 800422D8 08000392 */  lbu        $v1, 0x8($s0)
  .L800422DC:
    /* 32ADC 800422DC 03000224 */  addiu      $v0, $zero, 0x3
    /* 32AE0 800422E0 07006214 */  bne        $v1, $v0, .L80042300
    /* 32AE4 800422E4 21100000 */   addu      $v0, $zero, $zero
  .L800422E8:
    /* 32AE8 800422E8 B40000A6 */  sh         $zero, 0xB4($s0)
    /* 32AEC 800422EC BC6C000C */  jal        func_8001B2F0
    /* 32AF0 800422F0 16000424 */   addiu     $a0, $zero, 0x16
    /* 32AF4 800422F4 BC6C000C */  jal        func_8001B2F0
    /* 32AF8 800422F8 17000424 */   addiu     $a0, $zero, 0x17
    /* 32AFC 800422FC 01000224 */  addiu      $v0, $zero, 0x1
  .L80042300:
    /* 32B00 80042300 1400BF8F */  lw         $ra, 0x14($sp)
    /* 32B04 80042304 1000B08F */  lw         $s0, 0x10($sp)
    /* 32B08 80042308 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32B0C 8004230C 0800E003 */  jr         $ra
    /* 32B10 80042310 00000000 */   nop
.size func_80042294, . - func_80042294
