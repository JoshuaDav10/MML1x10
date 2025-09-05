.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043E00
    /* 34600 80043E00 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 34604 80043E04 1000B0AF */  sw         $s0, 0x10($sp)
    /* 34608 80043E08 21808000 */  addu       $s0, $a0, $zero
    /* 3460C 80043E0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 34610 80043E10 1800BFAF */  sw         $ra, 0x18($sp)
    /* 34614 80043E14 86C5000C */  jal        func_80031618
    /* 34618 80043E18 2188A000 */   addu      $s1, $a1, $zero
    /* 3461C 80043E1C 21204000 */  addu       $a0, $v0, $zero
    /* 34620 80043E20 0F008010 */  beqz       $a0, .L80043E60
    /* 34624 80043E24 09000224 */   addiu     $v0, $zero, 0x9
    /* 34628 80043E28 000082A0 */  sb         $v0, 0x0($a0)
.size func_80043E00, . - func_80043E00
