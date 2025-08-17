.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_rb_parts_calc
    /* 51C7C 8006147C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 51C80 80061480 3000B2AF */  sw         $s2, 0x30($sp)
    /* 51C84 80061484 21908000 */  addu       $s2, $a0, $zero
    /* 51C88 80061488 26050424 */  addiu      $a0, $zero, 0x526
    /* 51C8C 8006148C 3400B3AF */  sw         $s3, 0x34($sp)
    /* 51C90 80061490 02001324 */  addiu      $s3, $zero, 0x2
    /* 51C94 80061494 3800B4AF */  sw         $s4, 0x38($sp)
    /* 51C98 80061498 0B80143C */  lui        $s4, %hi(Player_work)
    /* 51C9C 8006149C B0519426 */  addiu      $s4, $s4, %lo(Player_work)
    /* 51CA0 800614A0 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 51CA4 800614A4 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 51CA8 800614A8 9676000C */  jal        Sce_flag_test
    /* 51CAC 800614AC 2800B0AF */   sw        $s0, 0x28($sp)
    /* 51CB0 800614B0 02004010 */  beqz       $v0, .L800614BC
    /* 51CB4 800614B4 00000000 */   nop
    /* 51CB8 800614B8 03001324 */  addiu      $s3, $zero, 0x3
  .L800614BC:
    /* 51CBC 800614BC 140040A2 */  sb         $zero, 0x14($s2)
    /* 51CC0 800614C0 110040A2 */  sb         $zero, 0x11($s2)
    /* 51CC4 800614C4 1C0040A2 */  sb         $zero, 0x1C($s2)
    /* 51CC8 800614C8 190040A2 */  sb         $zero, 0x19($s2)
    /* 51CCC 800614CC 240040A2 */  sb         $zero, 0x24($s2)
    /* 51CD0 800614D0 210040A2 */  sb         $zero, 0x21($s2)
    /* 51CD4 800614D4 2C0040A2 */  sb         $zero, 0x2C($s2)
    /* 51CD8 800614D8 290040A2 */  sb         $zero, 0x29($s2)
    /* 51CDC 800614DC 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 51CE0 800614E0 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 51CE4 800614E4 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 51CE8 800614E8 24104300 */  and        $v0, $v0, $v1
    /* 51CEC 800614EC 14004010 */  beqz       $v0, .L80061540
    /* 51CF0 800614F0 00000000 */   nop
    /* 51CF4 800614F4 49006012 */  beqz       $s3, .L8006161C
    /* 51CF8 800614F8 21880000 */   addu      $s1, $zero, $zero
    /* 51CFC 800614FC 21109102 */  addu       $v0, $s4, $s1
  .L80061500:
    /* 51D00 80061500 50045090 */  lbu        $s0, 0x450($v0)
    /* 51D04 80061504 00000000 */  nop
    /* 51D08 80061508 07000012 */  beqz       $s0, .L80061528
    /* 51D0C 8006150C 21204002 */   addu      $a0, $s2, $zero
    /* 51D10 80061510 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 51D14 80061514 9085010C */  jal        Sub_screen_rb_parts_calc_sub00
    /* 51D18 80061518 21280002 */   addu      $a1, $s0, $zero
    /* 51D1C 8006151C 21204002 */  addu       $a0, $s2, $zero
    /* 51D20 80061520 D085010C */  jal        Sub_screen_rb_parts_calc_sub01
    /* 51D24 80061524 21280002 */   addu      $a1, $s0, $zero
  .L80061528:
    /* 51D28 80061528 01003126 */  addiu      $s1, $s1, 0x1
    /* 51D2C 8006152C 2A103302 */  slt        $v0, $s1, $s3
    /* 51D30 80061530 F3FF4014 */  bnez       $v0, .L80061500
    /* 51D34 80061534 21109102 */   addu      $v0, $s4, $s1
    /* 51D38 80061538 87850108 */  j          .L8006161C
    /* 51D3C 8006153C 00000000 */   nop
  .L80061540:
    /* 51D40 80061540 0A80023C */  lui        $v0, %hi(Moji_flag3)
    /* 51D44 80061544 308B428C */  lw         $v0, %lo(Moji_flag3)($v0)
    /* 51D48 80061548 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 51D4C 8006154C 24104300 */  and        $v0, $v0, $v1
    /* 51D50 80061550 19004010 */  beqz       $v0, .L800615B8
    /* 51D54 80061554 00000000 */   nop
    /* 51D58 80061558 30006012 */  beqz       $s3, .L8006161C
    /* 51D5C 8006155C 21880000 */   addu      $s1, $zero, $zero
    /* 51D60 80061560 21109102 */  addu       $v0, $s4, $s1
  .L80061564:
    /* 51D64 80061564 50045090 */  lbu        $s0, 0x450($v0)
    /* 51D68 80061568 00000000 */  nop
    /* 51D6C 8006156C 03000012 */  beqz       $s0, .L8006157C
    /* 51D70 80061570 21204002 */   addu      $a0, $s2, $zero
    /* 51D74 80061574 9085010C */  jal        Sub_screen_rb_parts_calc_sub00
    /* 51D78 80061578 FFFF0526 */   addiu     $a1, $s0, -0x1
  .L8006157C:
    /* 51D7C 8006157C 0A80023C */  lui        $v0, %hi(D_80098B2D)
    /* 51D80 80061580 2D8B4290 */  lbu        $v0, %lo(D_80098B2D)($v0)
    /* 51D84 80061584 00000000 */  nop
    /* 51D88 80061588 05002212 */  beq        $s1, $v0, .L800615A0
    /* 51D8C 8006158C 00000000 */   nop
    /* 51D90 80061590 03000012 */  beqz       $s0, .L800615A0
    /* 51D94 80061594 21204002 */   addu      $a0, $s2, $zero
    /* 51D98 80061598 D085010C */  jal        Sub_screen_rb_parts_calc_sub01
    /* 51D9C 8006159C FFFF0526 */   addiu     $a1, $s0, -0x1
  .L800615A0:
    /* 51DA0 800615A0 01003126 */  addiu      $s1, $s1, 0x1
    /* 51DA4 800615A4 2A103302 */  slt        $v0, $s1, $s3
    /* 51DA8 800615A8 EEFF4014 */  bnez       $v0, .L80061564
    /* 51DAC 800615AC 21109102 */   addu      $v0, $s4, $s1
    /* 51DB0 800615B0 87850108 */  j          .L8006161C
    /* 51DB4 800615B4 00000000 */   nop
  .L800615B8:
    /* 51DB8 800615B8 18006012 */  beqz       $s3, .L8006161C
    /* 51DBC 800615BC 21880000 */   addu      $s1, $zero, $zero
    /* 51DC0 800615C0 21109102 */  addu       $v0, $s4, $s1
  .L800615C4:
    /* 51DC4 800615C4 50045090 */  lbu        $s0, 0x450($v0)
    /* 51DC8 800615C8 00000000 */  nop
    /* 51DCC 800615CC 03000012 */  beqz       $s0, .L800615DC
    /* 51DD0 800615D0 21204002 */   addu      $a0, $s2, $zero
    /* 51DD4 800615D4 9085010C */  jal        Sub_screen_rb_parts_calc_sub00
    /* 51DD8 800615D8 FFFF0526 */   addiu     $a1, $s0, -0x1
  .L800615DC:
    /* 51DDC 800615DC 0A80023C */  lui        $v0, %hi(D_80098B2D)
    /* 51DE0 800615E0 2D8B4290 */  lbu        $v0, %lo(D_80098B2D)($v0)
    /* 51DE4 800615E4 00000000 */  nop
    /* 51DE8 800615E8 03002216 */  bne        $s1, $v0, .L800615F8
    /* 51DEC 800615EC 00000000 */   nop
    /* 51DF0 800615F0 0A80103C */  lui        $s0, %hi(D_80098B31)
    /* 51DF4 800615F4 318B1092 */  lbu        $s0, %lo(D_80098B31)($s0)
  .L800615F8:
    /* 51DF8 800615F8 00000000 */  nop
    /* 51DFC 800615FC 03000012 */  beqz       $s0, .L8006160C
    /* 51E00 80061600 21204002 */   addu      $a0, $s2, $zero
    /* 51E04 80061604 D085010C */  jal        Sub_screen_rb_parts_calc_sub01
    /* 51E08 80061608 FFFF0526 */   addiu     $a1, $s0, -0x1
  .L8006160C:
    /* 51E0C 8006160C 01003126 */  addiu      $s1, $s1, 0x1
    /* 51E10 80061610 2A103302 */  slt        $v0, $s1, $s3
    /* 51E14 80061614 EBFF4014 */  bnez       $v0, .L800615C4
    /* 51E18 80061618 21109102 */   addu      $v0, $s4, $s1
  .L8006161C:
    /* 51E1C 8006161C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 51E20 80061620 3800B48F */  lw         $s4, 0x38($sp)
    /* 51E24 80061624 3400B38F */  lw         $s3, 0x34($sp)
    /* 51E28 80061628 3000B28F */  lw         $s2, 0x30($sp)
    /* 51E2C 8006162C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 51E30 80061630 2800B08F */  lw         $s0, 0x28($sp)
    /* 51E34 80061634 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 51E38 80061638 0800E003 */  jr         $ra
    /* 51E3C 8006163C 00000000 */   nop
.size Sub_screen_rb_parts_calc, . - Sub_screen_rb_parts_calc
