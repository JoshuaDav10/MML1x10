.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800645F8
    /* 54DF8 800645F8 0B000224 */  addiu      $v0, $zero, 0xB
    /* 54DFC 800645FC 0D002212 */  beq        $s1, $v0, .L80064634
.size func_800645F8, . - func_800645F8
