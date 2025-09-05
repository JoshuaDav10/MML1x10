.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F9B8
    /* 201B8 8002F9B8 21104300 */  addu       $v0, $v0, $v1
    /* 201BC 8002F9BC 0800E003 */  jr         $ra
    /* 201C0 8002F9C0 180082A4 */   sh        $v0, 0x18($a0)
.size func_8002F9B8, . - func_8002F9B8
