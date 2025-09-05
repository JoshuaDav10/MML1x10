.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005267C
    /* 42E7C 8005267C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 42E80 80052680 2188A000 */  addu       $s1, $a1, $zero
    /* 42E84 80052684 6000B6AF */  sw         $s6, 0x60($sp)
    /* 42E88 80052688 21B0C000 */  addu       $s6, $a2, $zero
    /* 42E8C 8005268C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 42E90 80052690 21B8E000 */  addu       $s7, $a3, $zero
    /* 42E94 80052694 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 42E98 80052698 FF7F1524 */  addiu      $s5, $zero, 0x7FFF
    /* 42E9C 8005269C 6800BFAF */  sw         $ra, 0x68($sp)
    /* 42EA0 800526A0 5800B4AF */  sw         $s4, 0x58($sp)
    /* 42EA4 800526A4 5400B3AF */  sw         $s3, 0x54($sp)
    /* 42EA8 800526A8 5000B2AF */  sw         $s2, 0x50($sp)
    /* 42EAC 800526AC 2300E016 */  bnez       $s7, .L8005273C
    /* 42EB0 800526B0 4800B0AF */   sw        $s0, 0x48($sp)
    /* 42EB4 800526B4 1C00028D */  lw         $v0, 0x1C($t0)
.size func_8005267C, . - func_8005267C
