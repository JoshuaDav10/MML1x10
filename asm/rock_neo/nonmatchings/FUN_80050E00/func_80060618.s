.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060618
    /* 50E18 80060618 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 50E1C 8006061C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 50E20 80060620 21808000 */  addu       $s0, $a0, $zero
    /* 50E24 80060624 1400B1AF */  sw         $s1, 0x14($sp)
    /* 50E28 80060628 0B80113C */  lui        $s1, %hi(Player_work)
    /* 50E2C 8006062C B0513126 */  addiu      $s1, $s1, %lo(Player_work)
    /* 50E30 80060630 2000BFAF */  sw         $ra, 0x20($sp)
    /* 50E34 80060634 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 50E38 80060638 1800B2AF */  sw         $s2, 0x18($sp)
    /* 50E3C 8006063C 01000382 */  lb         $v1, 0x1($s0)
    /* 50E40 80060640 0C80133C */  lui        $s3, %hi(D_800C0C2A)
    /* 50E44 80060644 2A0C7396 */  lhu        $s3, %lo(D_800C0C2A)($s3)
    /* 50E48 80060648 0700622C */  sltiu      $v0, $v1, 0x7
    /* 50E4C 8006064C 23014010 */  beqz       $v0, .L80060ADC
    /* 50E50 80060650 80100300 */   sll       $v0, $v1, 2
    /* 50E54 80060654 0180013C */  lui        $at, %hi(jtbl_8001134C)
    /* 50E58 80060658 21082200 */  addu       $at, $at, $v0
    /* 50E5C 8006065C 4C13228C */  lw         $v0, %lo(jtbl_8001134C)($at)
    /* 50E60 80060660 00000000 */  nop
    /* 50E64 80060664 08004000 */  jr         $v0
    /* 50E68 80060668 00000000 */   nop
  glabel .L8006066C
    /* 50E6C 8006066C 8C4E010C */  jal        MojiTaskKill
    /* 50E70 80060670 00000000 */   nop
    /* 50E74 80060674 CA8F010C */  jal        Game_logo_kill
    /* 50E78 80060678 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 50E7C 8006067C 1075000C */  jal        Cd_read_comb
.size func_80060618, . - func_80060618
