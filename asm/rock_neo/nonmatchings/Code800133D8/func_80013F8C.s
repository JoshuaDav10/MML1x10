.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013F8C
    /* 478C 80013F8C 0A80023C */  lui        $v0, %hi(D_80098A72)
    /* 4790 80013F90 728A4284 */  lh         $v0, %lo(D_80098A72)($v0)
    /* 4794 80013F94 00000000 */  nop
    /* 4798 80013F98 05004014 */  bnez       $v0, .L80013FB0
    /* 479C 80013F9C 00000000 */   nop
    /* 47A0 80013FA0 00008290 */  lbu        $v0, 0x0($a0)
    /* 47A4 80013FA4 010080A0 */  sb         $zero, 0x1($a0)
    /* 47A8 80013FA8 01004224 */  addiu      $v0, $v0, 0x1
    /* 47AC 80013FAC 000082A0 */  sb         $v0, 0x0($a0)
  .L80013FB0:
    /* 47B0 80013FB0 0800E003 */  jr         $ra
    /* 47B4 80013FB4 00000000 */   nop
.size func_80013F8C, . - func_80013F8C
