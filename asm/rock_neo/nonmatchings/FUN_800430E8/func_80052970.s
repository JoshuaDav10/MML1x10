.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052970
    /* 43170 80052970 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 43174 80052974 9400B3AF */  sw         $s3, 0x94($sp)
    /* 43178 80052978 21988000 */  addu       $s3, $a0, $zero
    /* 4317C 8005297C 9000B2AF */  sw         $s2, 0x90($sp)
    /* 43180 80052980 2190A000 */  addu       $s2, $a1, $zero
    /* 43184 80052984 2110C000 */  addu       $v0, $a2, $zero
.size func_80052970, . - func_80052970
