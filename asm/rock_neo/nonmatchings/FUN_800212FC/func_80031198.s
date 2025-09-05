.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031198
    /* 21998 80031198 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2199C 8003119C 1000BFAF */  sw         $ra, 0x10($sp)
.size func_80031198, . - func_80031198
