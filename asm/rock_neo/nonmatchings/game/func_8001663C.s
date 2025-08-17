.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001663C
    /* 6E3C 8001663C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6E40 80016640 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6E44 80016644 21808000 */  addu       $s0, $a0, $zero
    /* 6E48 80016648 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6E4C 8001664C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6E50 80016650 01000382 */  lb         $v1, 0x1($s0)
    /* 6E54 80016654 0B80113C */  lui        $s1, %hi(Player_work)
    /* 6E58 80016658 B0513126 */  addiu      $s1, $s1, %lo(Player_work)
    /* 6E5C 8001665C 0500622C */  sltiu      $v0, $v1, 0x5
    /* 6E60 80016660 47004010 */  beqz       $v0, .L80016780
    /* 6E64 80016664 80100300 */   sll       $v0, $v1, 2
    /* 6E68 80016668 0180013C */  lui        $at, %hi(jtbl_80010190)
    /* 6E6C 8001666C 21082200 */  addu       $at, $at, $v0
    /* 6E70 80016670 9001228C */  lw         $v0, %lo(jtbl_80010190)($at)
    /* 6E74 80016674 00000000 */  nop
    /* 6E78 80016678 08004000 */  jr         $v0
    /* 6E7C 8001667C 00000000 */   nop
  glabel .L80016680
    /* 6E80 80016680 BD002292 */  lbu        $v0, 0xBD($s1)
    /* 6E84 80016684 00000000 */  nop
    /* 6E88 80016688 40004234 */  ori        $v0, $v0, 0x40
    /* 6E8C 8001668C 8C4E010C */  jal        MojiTaskKill
    /* 6E90 80016690 BD0022A2 */   sb        $v0, 0xBD($s1)
    /* 6E94 80016694 BC8F010C */  jal        func_80063EF0
    /* 6E98 80016698 00000000 */   nop
    /* 6E9C 8001669C 0C5F000C */  jal        func_80017C30
    /* 6EA0 800166A0 21200000 */   addu      $a0, $zero, $zero
    /* 6EA4 800166A4 BC6C000C */  jal        func_8001B2F0
    /* 6EA8 800166A8 10000424 */   addiu     $a0, $zero, 0x10
    /* 6EAC 800166AC BC6C000C */  jal        func_8001B2F0
    /* 6EB0 800166B0 16000424 */   addiu     $a0, $zero, 0x16
    /* 6EB4 800166B4 BC6C000C */  jal        func_8001B2F0
    /* 6EB8 800166B8 17000424 */   addiu     $a0, $zero, 0x17
    /* 6EBC 800166BC 52000282 */  lb         $v0, 0x52($s0)
    /* 6EC0 800166C0 00000000 */  nop
    /* 6EC4 800166C4 09004228 */  slti       $v0, $v0, 0x9
    /* 6EC8 800166C8 02004010 */  beqz       $v0, .L800166D4
    /* 6ECC 800166CC 23000424 */   addiu     $a0, $zero, 0x23
    /* 6ED0 800166D0 21000424 */  addiu      $a0, $zero, 0x21
  .L800166D4:
    /* 6ED4 800166D4 1075000C */  jal        Cd_read_comb
    /* 6ED8 800166D8 00000000 */   nop
    /* 6EDC 800166DC 01000292 */  lbu        $v0, 0x1($s0)
    /* 6EE0 800166E0 DF590008 */  j          .L8001677C
    /* 6EE4 800166E4 01004224 */   addiu     $v0, $v0, 0x1
  glabel .L800166E8
    /* 6EE8 800166E8 0E76000C */  jal        Cd_read_sync2
    /* 6EEC 800166EC 00000000 */   nop
    /* 6EF0 800166F0 23004014 */  bnez       $v0, .L80016780
    /* 6EF4 800166F4 00000000 */   nop
    /* 6EF8 800166F8 6789010C */  jal        Map_screen_init
    /* 6EFC 800166FC 00000000 */   nop
    /* 6F00 80016700 01000292 */  lbu        $v0, 0x1($s0)
    /* 6F04 80016704 DF590008 */  j          .L8001677C
    /* 6F08 80016708 01004224 */   addiu     $v0, $v0, 0x1
  glabel .L8001670C
    /* 6F0C 8001670C 7789010C */  jal        Map_screen_task
    /* 6F10 80016710 00000000 */   nop
    /* 6F14 80016714 1A004010 */  beqz       $v0, .L80016780
    /* 6F18 80016718 00000000 */   nop
    /* 6F1C 8001671C BD002292 */  lbu        $v0, 0xBD($s1)
    /* 6F20 80016720 00000000 */  nop
    /* 6F24 80016724 BF004230 */  andi       $v0, $v0, 0xBF
    /* 6F28 80016728 8C4E010C */  jal        MojiTaskKill
    /* 6F2C 8001672C BD0022A2 */   sb        $v0, 0xBD($s1)
    /* 6F30 80016730 CA8F010C */  jal        Game_logo_kill
    /* 6F34 80016734 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 6F38 80016738 01000292 */  lbu        $v0, 0x1($s0)
    /* 6F3C 8001673C DF590008 */  j          .L8001677C
    /* 6F40 80016740 01004224 */   addiu     $v0, $v0, 0x1
  glabel .L80016744
    /* 6F44 80016744 1075000C */  jal        Cd_read_comb
    /* 6F48 80016748 15000424 */   addiu     $a0, $zero, 0x15
    /* 6F4C 8001674C 01000292 */  lbu        $v0, 0x1($s0)
    /* 6F50 80016750 DF590008 */  j          .L8001677C
    /* 6F54 80016754 01004224 */   addiu     $v0, $v0, 0x1
  glabel .L80016758
    /* 6F58 80016758 0E76000C */  jal        Cd_read_sync2
    /* 6F5C 8001675C 00000000 */   nop
    /* 6F60 80016760 07004014 */  bnez       $v0, .L80016780
    /* 6F64 80016764 00000000 */   nop
    /* 6F68 80016768 2489010C */  jal        Sub_screen_sound_reinit
    /* 6F6C 8001676C 21202002 */   addu      $a0, $s1, $zero
    /* 6F70 80016770 03000224 */  addiu      $v0, $zero, 0x3
    /* 6F74 80016774 000002A2 */  sb         $v0, 0x0($s0)
    /* 6F78 80016778 01000224 */  addiu      $v0, $zero, 0x1
  .L8001677C:
    /* 6F7C 8001677C 010002A2 */  sb         $v0, 0x1($s0)
  .L80016780:
    /* 6F80 80016780 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6F84 80016784 1400B18F */  lw         $s1, 0x14($sp)
    /* 6F88 80016788 1000B08F */  lw         $s0, 0x10($sp)
    /* 6F8C 8001678C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6F90 80016790 0800E003 */  jr         $ra
    /* 6F94 80016794 00000000 */   nop
.size func_8001663C, . - func_8001663C
