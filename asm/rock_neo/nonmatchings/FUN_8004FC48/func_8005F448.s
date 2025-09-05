.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F448
    /* 4FC48 8005F448 0B80023C */  lui        $v0, %hi(Player_work + 0xB0)
    /* 4FC4C 8005F44C 60524284 */  lh         $v0, %lo(Player_work + 0xB0)($v0)
    /* 4FC50 8005F450 00000000 */  nop
    /* 4FC54 8005F454 09006214 */  bne        $v1, $v0, .L8005F47C
    /* 4FC58 8005F458 82000424 */   addiu     $a0, $zero, 0x82
    /* 4FC5C 8005F45C 01000524 */  addiu      $a1, $zero, 0x1
    /* 4FC60 8005F460 0268000C */  jal        Sound_call
    /* 4FC64 8005F464 21300000 */   addu      $a2, $zero, $zero
    /* 4FC68 8005F468 21200000 */  addu       $a0, $zero, $zero
    /* 4FC6C 8005F46C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FC70 8005F470 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FC74 8005F474 2C7D0108 */  j          .L8005F4B0
    /* 4FC78 8005F478 40000624 */   addiu     $a2, $zero, 0x40
  .L8005F47C:
    /* 4FC7C 8005F47C 0C80023C */  lui        $v0, %hi(Game_work + 0x7C)
    /* 4FC80 8005F480 8C1B4290 */  lbu        $v0, %lo(Game_work + 0x7C)($v0)
    /* 4FC84 8005F484 00000000 */  nop
    /* 4FC88 8005F488 10004014 */  bnez       $v0, .L8005F4CC
    /* 4FC8C 8005F48C 21200000 */   addu      $a0, $zero, $zero
    /* 4FC90 8005F490 82000424 */  addiu      $a0, $zero, 0x82
    /* 4FC94 8005F494 01000524 */  addiu      $a1, $zero, 0x1
    /* 4FC98 8005F498 0268000C */  jal        Sound_call
    /* 4FC9C 8005F49C 21300000 */   addu      $a2, $zero, $zero
    /* 4FCA0 8005F4A0 21200000 */  addu       $a0, $zero, $zero
    /* 4FCA4 8005F4A4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FCA8 8005F4A8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FCAC 8005F4AC 41000624 */  addiu      $a2, $zero, 0x41
  .L8005F4B0:
    /* 4FCB0 8005F4B0 0B4E010C */  jal        MojiTaskExec
    /* 4FCB4 8005F4B4 00000000 */   nop
  .L8005F4B8:
    /* 4FCB8 8005F4B8 02000292 */  lbu        $v0, 0x2($s0)
.size func_8005F448, . - func_8005F448
    /* 4FCBC 8005F4BC 00000000 */  nop
