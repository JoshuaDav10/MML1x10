.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DC10
    /* 4E410 8005DC10 A00780AF */  sw         $zero, %gp_rel(D_80098004)($gp)
    /* 4E414 8005DC14 25008010 */  beqz       $a0, .L8005DCAC
    /* 4E418 8005DC18 00000000 */   nop
    /* 4E41C 8005DC1C 21300000 */  addu       $a2, $zero, $zero
    /* 4E420 8005DC20 FF000824 */  addiu      $t0, $zero, 0xFF
    /* 4E424 8005DC24 0C80073C */  lui        $a3, %hi(Game_work + 0x50)
    /* 4E428 8005DC28 601BE724 */  addiu      $a3, $a3, %lo(Game_work + 0x50)
    /* 4E42C 8005DC2C 03000924 */  addiu      $t1, $zero, 0x3
    /* 4E430 8005DC30 21280000 */  addu       $a1, $zero, $zero
  .L8005DC34:
    /* 4E434 8005DC34 0980013C */  lui        $at, %hi(func_8008D19C)
    /* 4E438 8005DC38 21082500 */  addu       $at, $at, $a1
    /* 4E43C 8005DC3C 9CD12390 */  lbu        $v1, %lo(func_8008D19C)($at)
    /* 4E440 8005DC40 00000000 */  nop
    /* 4E444 8005DC44 19006810 */  beq        $v1, $t0, .L8005DCAC
    /* 4E448 8005DC48 00000000 */   nop
    /* 4E44C 8005DC4C 0000E280 */  lb         $v0, 0x0($a3)
    /* 4E450 8005DC50 00000000 */  nop
    /* 4E454 8005DC54 11006214 */  bne        $v1, $v0, .L8005DC9C
    /* 4E458 8005DC58 00000000 */   nop
    /* 4E45C 8005DC5C 0980013C */  lui        $at, %hi(D_8008D19D)
    /* 4E460 8005DC60 21082500 */  addu       $at, $at, $a1
    /* 4E464 8005DC64 9DD12390 */  lbu        $v1, %lo(D_8008D19D)($at)
    /* 4E468 8005DC68 0100E280 */  lb         $v0, 0x1($a3)
    /* 4E46C 8005DC6C 00000000 */  nop
    /* 4E470 8005DC70 0A006214 */  bne        $v1, $v0, .L8005DC9C
    /* 4E474 8005DC74 00000000 */   nop
    /* 4E478 8005DC78 0980013C */  lui        $at, %hi(D_8008D1A0)
    /* 4E47C 8005DC7C 21082500 */  addu       $at, $at, $a1
    /* 4E480 8005DC80 A0D1228C */  lw         $v0, %lo(D_8008D1A0)($at)
    /* 4E484 8005DC84 A00789AF */  sw         $t1, %gp_rel(D_80098004)($gp)
    /* 4E488 8005DC88 280F84AF */  sw         $a0, %gp_rel(D_8009878C)($gp)
    /* 4E48C 8005DC8C 300F86AF */  sw         $a2, %gp_rel(D_80098794)($gp)
    /* 4E490 8005DC90 C80F82AF */  sw         $v0, %gp_rel(D_8009882C)($gp)
    /* 4E494 8005DC94 2B770108 */  j          .L8005DCAC
    /* 4E498 8005DC98 00000000 */   nop
  .L8005DC9C:
    /* 4E49C 8005DC9C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4E4A0 8005DCA0 4000C228 */  slti       $v0, $a2, 0x40
    /* 4E4A4 8005DCA4 E3FF4014 */  bnez       $v0, .L8005DC34
    /* 4E4A8 8005DCA8 0C00A524 */   addiu     $a1, $a1, 0xC
  .L8005DCAC:
    /* 4E4AC 8005DCAC 0800E003 */  jr         $ra
    /* 4E4B0 8005DCB0 00000000 */   nop
.size func_8005DC10, . - func_8005DC10
