.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DDC0
    /* E5C0 8001DDC0 00008290 */  lbu        $v0, 0x0($a0)
    /* E5C4 8001DDC4 00000000 */  nop
    /* E5C8 8001DDC8 340982A3 */  sb         $v0, %gp_rel(D_80098198)($gp)
    /* E5CC 8001DDCC 01008290 */  lbu        $v0, 0x1($a0)
    /* E5D0 8001DDD0 00000000 */  nop
    /* E5D4 8001DDD4 350982A3 */  sb         $v0, %gp_rel(D_80098199)($gp)
    /* E5D8 8001DDD8 34098287 */  lh         $v0, %gp_rel(D_80098198)($gp)
    /* E5DC 8001DDDC 0800E003 */  jr         $ra
    /* E5E0 8001DDE0 00000000 */   nop
.size func_8001DDC0, . - func_8001DDC0
