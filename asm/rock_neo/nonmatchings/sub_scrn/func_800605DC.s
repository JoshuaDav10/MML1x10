.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800605DC
    /* 50DDC 800605DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 50DE0 800605E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 50DE4 800605E4 0A80103C */  lui        $s0, %hi(D_800A38F0)
    /* 50DE8 800605E8 F0381026 */  addiu      $s0, $s0, %lo(D_800A38F0)
    /* 50DEC 800605EC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 50DF0 800605F0 1F85010C */  jal        Sub_screen_rb_parts_calc
    /* 50DF4 800605F4 21200002 */   addu      $a0, $s0, $zero
    /* 50DF8 800605F8 21200002 */  addu       $a0, $s0, $zero
    /* 50DFC 800605FC A980010C */  jal        func_800602A4
    /* 50E00 80060600 21280000 */   addu      $a1, $zero, $zero
    /* 50E04 80060604 1400BF8F */  lw         $ra, 0x14($sp)
    /* 50E08 80060608 1000B08F */  lw         $s0, 0x10($sp)
    /* 50E0C 8006060C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 50E10 80060610 0800E003 */  jr         $ra
    /* 50E14 80060614 00000000 */   nop
.size func_800605DC, . - func_800605DC
