.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800333A0
    /* 23BA0 800333A0 0C80023C */  lui        $v0, %hi(D_800BC728)
    /* 23BA4 800333A4 28C74224 */  addiu      $v0, $v0, %lo(D_800BC728)
    /* 23BA8 800333A8 1C1282AF */  sw         $v0, %gp_rel(D_80098A80)($gp)
    /* 23BAC 800333AC 0800E003 */  jr         $ra
    /* 23BB0 800333B0 00000000 */   nop
.size func_800333A0, . - func_800333A0
