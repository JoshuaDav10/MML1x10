.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005EC80
    /* 4F480 8005EC80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4F484 8005EC84 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F488 8005EC88 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4F48C 8005EC8C 8C4E010C */  jal        MojiTaskKill
    /* 4F490 8005EC90 21808000 */   addu      $s0, $a0, $zero
    /* 4F494 8005EC94 21200000 */  addu       $a0, $zero, $zero
    /* 4F498 8005EC98 0980053C */  lui        $a1, %hi(D_8008CB94)
    /* 4F49C 8005EC9C 94CBA58C */  lw         $a1, %lo(D_8008CB94)($a1)
    /* 4F4A0 8005ECA0 0B4E010C */  jal        MojiTaskExec
    /* 4F4A4 8005ECA4 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 4F4A8 8005ECA8 21200000 */  addu       $a0, $zero, $zero
    /* 4F4AC 8005ECAC 0200053C */  lui        $a1, (0x20006 >> 16)
    /* 4F4B0 8005ECB0 F08F010C */  jal        func_80063FC0
    /* 4F4B4 8005ECB4 0600A534 */   ori       $a1, $a1, (0x20006 & 0xFFFF)
    /* 4F4B8 8005ECB8 8387010C */  jal        Sub_screen_basic_param_set
    /* 4F4BC 8005ECBC 00000000 */   nop
    /* 4F4C0 8005ECC0 21100000 */  addu       $v0, $zero, $zero
    /* 4F4C4 8005ECC4 01000324 */  addiu      $v1, $zero, 0x1
    /* 4F4C8 8005ECC8 000003AE */  sw         $v1, 0x0($s0)
    /* 4F4CC 8005ECCC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4F4D0 8005ECD0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4F4D4 8005ECD4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4F4D8 8005ECD8 0800E003 */  jr         $ra
    /* 4F4DC 8005ECDC 00000000 */   nop
.size func_8005EC80, . - func_8005EC80
