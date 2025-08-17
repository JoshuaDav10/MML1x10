.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013F60
    /* 4760 80013F60 0A80023C */  lui        $v0, %hi(D_80098A72)
    /* 4764 80013F64 728A4284 */  lh         $v0, %lo(D_80098A72)($v0)
    /* 4768 80013F68 00000000 */  nop
    /* 476C 80013F6C 05004014 */  bnez       $v0, .L80013F84
    /* 4770 80013F70 00000000 */   nop
    /* 4774 80013F74 01008290 */  lbu        $v0, 0x1($a0)
    /* 4778 80013F78 00000000 */  nop
    /* 477C 80013F7C 01004224 */  addiu      $v0, $v0, 0x1
    /* 4780 80013F80 010082A0 */  sb         $v0, 0x1($a0)
  .L80013F84:
    /* 4784 80013F84 0800E003 */  jr         $ra
    /* 4788 80013F88 00000000 */   nop
.size func_80013F60, . - func_80013F60
