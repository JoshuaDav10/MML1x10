.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041EF4
    /* 326F4 80041EF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 326F8 80041EF8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 326FC 80041EFC 24018894 */  lhu        $t0, 0x124($a0)
    /* 32700 80041F00 26018794 */  lhu        $a3, 0x126($a0)
    /* 32704 80041F04 1C018294 */  lhu        $v0, 0x11C($a0)
    /* 32708 80041F08 25180701 */  or         $v1, $t0, $a3
    /* 3270C 80041F0C 24104300 */  and        $v0, $v0, $v1
    /* 32710 80041F10 0B004010 */  beqz       $v0, .L80041F40
    /* 32714 80041F14 00000000 */   nop
    /* 32718 80041F18 0C80023C */  lui        $v0, %hi(Game_work + 0x55)
    /* 3271C 80041F1C 651B4280 */  lb         $v0, %lo(Game_work + 0x55)($v0)
    /* 32720 80041F20 00000000 */  nop
    /* 32724 80041F24 02004014 */  bnez       $v0, .L80041F30
    /* 32728 80041F28 FFFFE730 */   andi      $a3, $a3, 0xFFFF
    /* 3272C 80041F2C FFFF0731 */  andi       $a3, $t0, 0xFFFF
  .L80041F30:
    /* 32730 80041F30 D507010C */  jal        func_80041F54
    /* 32734 80041F34 00000000 */   nop
    /* 32738 80041F38 D1070108 */  j          .L80041F44
    /* 3273C 80041F3C 00000000 */   nop
  .L80041F40:
    /* 32740 80041F40 0C0180A4 */  sh         $zero, 0x10C($a0)
  .L80041F44:
    /* 32744 80041F44 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32748 80041F48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3274C 80041F4C 0800E003 */  jr         $ra
    /* 32750 80041F50 00000000 */   nop
.size func_80041EF4, . - func_80041EF4
