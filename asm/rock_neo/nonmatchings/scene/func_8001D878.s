.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D878
    /* E078 8001D878 0A80023C */  lui        $v0, %hi(D_80098AB8)
    /* E07C 8001D87C B88A4290 */  lbu        $v0, %lo(D_80098AB8)($v0)
    /* E080 8001D880 0800E003 */  jr         $ra
    /* E084 8001D884 20004230 */   andi      $v0, $v0, 0x20
.size func_8001D878, . - func_8001D878
