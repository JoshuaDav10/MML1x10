.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80041AA0
    /* 322A0 80041AA0 090082A0 */  sb         $v0, 0x9($a0)
    /* 322A4 80041AA4 0A0080A0 */  sb         $zero, 0xA($a0)
  .L80041AA8:
    /* 322A8 80041AA8 0800E003 */  jr         $ra
    /* 322AC 80041AAC 00000000 */   nop
.size .L80041AA0, . - .L80041AA0
