.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007D8C0
    /* 6E0C0 8007D8C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6E0C4 8007D8C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6E0C8 8007D8C8 21808000 */  addu       $s0, $a0, $zero
    /* 6E0CC 8007D8CC 0980053C */  lui        $a1, %hi(D_80097728)
    /* 6E0D0 8007D8D0 2877A524 */  addiu      $a1, $a1, %lo(D_80097728)
    /* 6E0D4 8007D8D4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6E0D8 8007D8D8 90FF010C */  jal        memcpy
    /* 6E0DC 8007D8DC 5C000624 */   addiu     $a2, $zero, 0x5C
    /* 6E0E0 8007D8E0 21100002 */  addu       $v0, $s0, $zero
    /* 6E0E4 8007D8E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6E0E8 8007D8E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 6E0EC 8007D8EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6E0F0 8007D8F0 0800E003 */  jr         $ra
    /* 6E0F4 8007D8F4 00000000 */   nop
.size func_8007D8C0, . - func_8007D8C0
