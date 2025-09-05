.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043E4C
    /* 3464C 80043E4C 18000396 */  lhu        $v1, 0x18($s0)
    /* 34650 80043E50 01000224 */  addiu      $v0, $zero, 0x1
    /* 34654 80043E54 030082A0 */  sb         $v0, 0x3($a0)
    /* 34658 80043E58 0C0091A0 */  sb         $s1, 0xC($a0)
    /* 3465C 80043E5C 200083A4 */  sh         $v1, 0x20($a0)
  .L80043E60:
    /* 34660 80043E60 1800BF8F */  lw         $ra, 0x18($sp)
    /* 34664 80043E64 1400B18F */  lw         $s1, 0x14($sp)
    /* 34668 80043E68 1000B08F */  lw         $s0, 0x10($sp)
.size func_80043E4C, . - func_80043E4C
