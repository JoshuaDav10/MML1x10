.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800534E0
    /* 43CE0 800534E0 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 43CE4 800534E4 21408000 */  addu       $t0, $a0, $zero
    /* 43CE8 800534E8 5800B2AF */  sw         $s2, 0x58($sp)
    /* 43CEC 800534EC 2190C000 */  addu       $s2, $a2, $zero
    /* 43CF0 800534F0 FF0F053C */  lui        $a1, (0xFFF0FFF >> 16)
    /* 43CF4 800534F4 5400B1AF */  sw         $s1, 0x54($sp)
    /* 43CF8 800534F8 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 43CFC 800534FC FF0FA534 */  ori        $a1, $a1, (0xFFF0FFF & 0xFFFF)
    /* 43D00 80053500 6000BFAF */  sw         $ra, 0x60($sp)
.size func_800534E0, . - func_800534E0
