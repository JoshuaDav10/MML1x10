.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060C80
    /* 51480 80060C80 21808000 */  addu       $s0, $a0, $zero
    /* 51484 80060C84 01000382 */  lb         $v1, 0x1($s0)
    /* 51488 80060C88 01000224 */  addiu      $v0, $zero, 0x1
    /* 5148C 80060C8C 10006210 */  beq        $v1, $v0, .L80060CD0
    /* 51490 80060C90 02006228 */   slti      $v0, $v1, 0x2
    /* 51494 80060C94 05004010 */  beqz       $v0, .L80060CAC
    /* 51498 80060C98 00000000 */   nop
    /* 5149C 80060C9C 08006010 */  beqz       $v1, .L80060CC0
    /* 514A0 80060CA0 21100000 */   addu      $v0, $zero, $zero
    /* 514A4 80060CA4 69830108 */  j          .L80060DA4
    /* 514A8 80060CA8 00000000 */   nop
  .L80060CAC:
    /* 514AC 80060CAC 02000224 */  addiu      $v0, $zero, 0x2
    /* 514B0 80060CB0 18006210 */  beq        $v1, $v0, .L80060D14
    /* 514B4 80060CB4 0040023C */   lui       $v0, (0x40000000 >> 16)
    /* 514B8 80060CB8 69830108 */  j          .L80060DA4
    /* 514BC 80060CBC 21100000 */   addu      $v0, $zero, $zero
  .L80060CC0:
    /* 514C0 80060CC0 0980053C */  lui        $a1, %hi(D_8008CE78)
    /* 514C4 80060CC4 78CEA58C */  lw         $a1, %lo(D_8008CE78)($a1)
    /* 514C8 80060CC8 3E830108 */  j          .L80060CF8
    /* 514CC 80060CCC 21200000 */   addu      $a0, $zero, $zero
  .L80060CD0:
    /* 514D0 80060CD0 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 514D4 80060CD4 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 514D8 80060CD8 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 514DC 80060CDC 24106200 */  and        $v0, $v1, $v0
    /* 514E0 80060CE0 2F004010 */  beqz       $v0, .L80060DA0
    /* 514E4 80060CE4 FF006230 */   andi      $v0, $v1, 0xFF
    /* 514E8 80060CE8 12004014 */  bnez       $v0, .L80060D34
    /* 514EC 80060CEC 21200000 */   addu      $a0, $zero, $zero
    /* 514F0 80060CF0 0980053C */  lui        $a1, %hi(D_8008CE84)
    /* 514F4 80060CF4 84CEA58C */  lw         $a1, %lo(D_8008CE84)($a1)
  .L80060CF8:
    /* 514F8 80060CF8 0B4E010C */  jal        MojiTaskExec
    /* 514FC 80060CFC FFFF0624 */   addiu     $a2, $zero, -0x1
.size func_80060C80, . - func_80060C80
