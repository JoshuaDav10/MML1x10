.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80060104
    /* 50904 80060104 02000224 */  addiu      $v0, $zero, 0x2
    /* 50908 80060108 1E006210 */  beq        $v1, $v0, .L80060184
    /* 5090C 8006010C 03000224 */   addiu     $v0, $zero, 0x3
    /* 50910 80060110 42006210 */  beq        $v1, $v0, .L8006021C
    /* 50914 80060114 21100000 */   addu      $v0, $zero, $zero
    /* 50918 80060118 8D800108 */  j          .L80060234
    /* 5091C 8006011C 00000000 */   nop
  .L80060120:
    /* 50920 80060120 8C4E010C */  jal        MojiTaskKill
    /* 50924 80060124 00000000 */   nop
    /* 50928 80060128 CA8F010C */  jal        Game_logo_kill
.size .L80060104, . - .L80060104
