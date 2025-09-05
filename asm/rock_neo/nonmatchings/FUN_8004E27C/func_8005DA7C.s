.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DA7C
    /* 4E27C 8005DA7C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 4E280 8005DA80 0B80063C */  lui        $a2, %hi(Player_work + 0x6E)
    /* 4E284 8005DA84 1E52C624 */  addiu      $a2, $a2, %lo(Player_work + 0x6E)
    /* 4E288 8005DA88 0000C284 */  lh         $v0, 0x0($a2)
    /* 4E28C 8005DA8C 0B80033C */  lui        $v1, %hi(Player_work + 0xB0)
    /* 4E290 8005DA90 60526384 */  lh         $v1, %lo(Player_work + 0xB0)($v1)
    /* 4E294 8005DA94 21284000 */  addu       $a1, $v0, $zero
    /* 4E298 8005DA98 02004224 */  addiu      $v0, $v0, 0x2
    /* 4E29C 8005DA9C 2A104300 */  slt        $v0, $v0, $v1
    /* 4E2A0 8005DAA0 04004014 */  bnez       $v0, .L8005DAB4
    /* 4E2A4 8005DAA4 21206000 */   addu      $a0, $v1, $zero
    /* 4E2A8 8005DAA8 0000C4A4 */  sh         $a0, 0x0($a2)
    /* 4E2AC 8005DAAC B8760108 */  j          .L8005DAE0
    /* 4E2B0 8005DAB0 01000224 */   addiu     $v0, $zero, 0x1
  .L8005DAB4:
    /* 4E2B4 8005DAB4 0200A224 */  addiu      $v0, $a1, 0x2
    /* 4E2B8 8005DAB8 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 4E2BC 8005DABC B8760108 */  j          .L8005DAE0
    /* 4E2C0 8005DAC0 21100000 */   addu      $v0, $zero, $zero
  .L8005DAC4:
    /* 4E2C4 8005DAC4 0B80023C */  lui        $v0, %hi(Player_work + 0x6E)
    /* 4E2C8 8005DAC8 1E524284 */  lh         $v0, %lo(Player_work + 0x6E)($v0)
    /* 4E2CC 8005DACC 0B80033C */  lui        $v1, %hi(Player_work + 0xB0)
    /* 4E2D0 8005DAD0 60526384 */  lh         $v1, %lo(Player_work + 0xB0)($v1)
    /* 4E2D4 8005DAD4 00000000 */  nop
    /* 4E2D8 8005DAD8 26104300 */  xor        $v0, $v0, $v1
    /* 4E2DC 8005DADC 0100422C */  sltiu      $v0, $v0, 0x1
  .L8005DAE0:
    /* 4E2E0 8005DAE0 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 4E2E4 8005DAE4 0800E003 */  jr         $ra
    /* 4E2E8 8005DAE8 00000000 */   nop
.size func_8005DA7C, . - func_8005DA7C
