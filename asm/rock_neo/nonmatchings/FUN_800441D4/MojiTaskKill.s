.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MojiTaskKill
    /* 44230 80053A30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44234 80053A34 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44238 80053A38 0C80033C */  lui        $v1, %hi(Moji_work)
    /* 4423C 80053A3C B8B66324 */  addiu      $v1, $v1, %lo(Moji_work)
    /* 44240 80053A40 D4036524 */  addiu      $a1, $v1, 0x3D4
    /* 44244 80053A44 2B106500 */  sltu       $v0, $v1, $a1
    /* 44248 80053A48 0A004010 */  beqz       $v0, .L80053A74
    /* 4424C 80053A4C 21200000 */   addu      $a0, $zero, $zero
    /* 44250 80053A50 FF000624 */  addiu      $a2, $zero, 0xFF
.size MojiTaskKill, . - MojiTaskKill
