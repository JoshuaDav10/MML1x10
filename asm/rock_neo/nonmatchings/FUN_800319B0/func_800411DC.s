.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800411DC
    /* 319DC 800411DC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 319E0 800411E0 3000B4AF */  sw         $s4, 0x30($sp)
.size func_800411DC, . - func_800411DC
