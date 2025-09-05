.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D798
    /* 4DF98 8005D798 000040AC */  sw         $zero, 0x0($v0)
    /* 4DF9C 8005D79C 18006224 */  addiu      $v0, $v1, 0x18
    /* 4DFA0 8005D7A0 2110C200 */  addu       $v0, $a2, $v0
    /* 4DFA4 8005D7A4 1C006324 */  addiu      $v1, $v1, 0x1C
    /* 4DFA8 8005D7A8 2118C300 */  addu       $v1, $a2, $v1
    /* 4DFAC 8005D7AC 000040AC */  sw         $zero, 0x0($v0)
.size func_8005D798, . - func_8005D798
