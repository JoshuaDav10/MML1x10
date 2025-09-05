.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FA54
    /* 50254 8005FA54 0020A534 */  ori        $a1, $a1, 0x2000
    /* 50258 8005FA58 9B7E0108 */  j          .L8005FA6C
    /* 5025C 8005FA5C 3F000624 */   addiu     $a2, $zero, 0x3F
  .L8005FA60:
    /* 50260 8005FA60 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50264 8005FA64 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50268 8005FA68 3E000624 */  addiu      $a2, $zero, 0x3E
  .L8005FA6C:
    /* 5026C 8005FA6C 0B4E010C */  jal        MojiTaskExec
    /* 50270 8005FA70 00000000 */   nop
    /* 50274 8005FA74 0B80033C */  lui        $v1, %hi(Player_work + 0x16B)
    /* 50278 8005FA78 1B536324 */  addiu      $v1, $v1, %lo(Player_work + 0x16B)
    /* 5027C 8005FA7C 00006290 */  lbu        $v0, 0x0($v1)
    /* 50280 8005FA80 00000000 */  nop
    /* 50284 8005FA84 02004238 */  xori       $v0, $v0, 0x2
    /* 50288 8005FA88 A77E0108 */  j          .L8005FA9C
    /* 5028C 8005FA8C 000062A0 */   sb        $v0, 0x0($v1)
  .L8005FA90:
    /* 50290 8005FA90 83000424 */  addiu      $a0, $zero, 0x83
    /* 50294 8005FA94 0268000C */  jal        Sound_call
    /* 50298 8005FA98 21300000 */   addu      $a2, $zero, $zero
  .L8005FA9C:
    /* 5029C 8005FA9C 02000292 */  lbu        $v0, 0x2($s0)
    /* 502A0 8005FAA0 00000000 */  nop
    /* 502A4 8005FAA4 01004224 */  addiu      $v0, $v0, 0x1
    /* 502A8 8005FAA8 B47E0108 */  j          .L8005FAD0
    /* 502AC 8005FAAC 020002A2 */   sb        $v0, 0x2($s0)
  .L8005FAB0:
    /* 502B0 8005FAB0 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 502B4 8005FAB4 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 502B8 8005FAB8 00000000 */  nop
    /* 502BC 8005FABC 24104300 */  and        $v0, $v0, $v1
    /* 502C0 8005FAC0 03004014 */  bnez       $v0, .L8005FAD0
    /* 502C4 8005FAC4 02000224 */   addiu     $v0, $zero, 0x2
.size func_8005FA54, . - func_8005FA54
