.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060A00
    /* 51200 80060A00 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 51204 80060A04 04000692 */  lbu        $a2, 0x4($s0)
    /* 51208 80060A08 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 5120C 80060A0C 0B4E010C */  jal        MojiTaskExec
    /* 51210 80060A10 E400C624 */   addiu     $a2, $a2, 0xE4
    /* 51214 80060A14 F4810108 */  j          .L800607D0
    /* 51218 80060A18 00000000 */   nop
  .L80060A1C:
    /* 5121C 80060A1C 83000424 */  addiu      $a0, $zero, 0x83
    /* 51220 80060A20 01000524 */  addiu      $a1, $zero, 0x1
    /* 51224 80060A24 0268000C */  jal        Sound_call
    /* 51228 80060A28 21300000 */   addu      $a2, $zero, $zero
    /* 5122C 80060A2C AE820108 */  j          .L80060AB8
    /* 51230 80060A30 21200002 */   addu      $a0, $s0, $zero
  .L80060A34:
    /* 51234 80060A34 08106232 */  andi       $v0, $s3, 0x1008
    /* 51238 80060A38 09004010 */  beqz       $v0, .L80060A60
    /* 5123C 80060A3C 83000424 */   addiu     $a0, $zero, 0x83
  .L80060A40:
    /* 51240 80060A40 01000524 */  addiu      $a1, $zero, 0x1
    /* 51244 80060A44 0268000C */  jal        Sound_call
    /* 51248 80060A48 21300000 */   addu      $a2, $zero, $zero
    /* 5124C 80060A4C 01000292 */  lbu        $v0, 0x1($s0)
    /* 51250 80060A50 00000000 */  nop
    /* 51254 80060A54 02004224 */  addiu      $v0, $v0, 0x2
    /* 51258 80060A58 AD820108 */  j          .L80060AB4
    /* 5125C 80060A5C 010002A2 */   sb        $v0, 0x1($s0)
  .L80060A60:
    /* 51260 80060A60 B083010C */  jal        Sub_screen_shift_check
    /* 51264 80060A64 21200002 */   addu      $a0, $s0, $zero
    /* 51268 80060A68 AE820108 */  j          .L80060AB8
    /* 5126C 80060A6C 21200002 */   addu      $a0, $s0, $zero
  glabel .L80060A70
    /* 51270 80060A70 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 51274 80060A74 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 51278 80060A78 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 5127C 80060A7C 24104300 */  and        $v0, $v0, $v1
.size func_80060A00, . - func_80060A00
