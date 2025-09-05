.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800302E4
    /* 20AE4 800302E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 20AE8 800302E8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 20AEC 800302EC 0000A394 */  lhu        $v1, 0x0($a1)
.size func_800302E4, . - func_800302E4
