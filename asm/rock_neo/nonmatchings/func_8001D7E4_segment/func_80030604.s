.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80030604
    /* 20E04 80030604 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 20E08 80030608 1800BFAF */  sw         $ra, 0x18($sp)
    /* 20E0C 8003060C 56008284 */  lh         $v0, 0x56($a0)
    /* 20E10 80030610 8AC1000C */  jal        func_80030628
    /* 20E14 80030614 1000A2AF */   sw        $v0, 0x10($sp)
    /* 20E18 80030618 1800BF8F */  lw         $ra, 0x18($sp)
    /* 20E1C 8003061C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 20E20 80030620 0800E003 */  jr         $ra
    /* 20E24 80030624 00000000 */   nop
.size func_80030604, . - func_80030604
