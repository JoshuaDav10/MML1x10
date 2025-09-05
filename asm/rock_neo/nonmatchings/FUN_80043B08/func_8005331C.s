.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005331C
    /* 43B1C 8005331C 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 43B20 80053320 7000B0AF */  sw         $s0, 0x70($sp)
    /* 43B24 80053324 2180A000 */  addu       $s0, $a1, $zero
    /* 43B28 80053328 8400BFAF */  sw         $ra, 0x84($sp)
    /* 43B2C 8005332C 8000B4AF */  sw         $s4, 0x80($sp)
    /* 43B30 80053330 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 43B34 80053334 7800B2AF */  sw         $s2, 0x78($sp)
    /* 43B38 80053338 7400B1AF */  sw         $s1, 0x74($sp)
    /* 43B3C 8005333C 01000292 */  lbu        $v0, 0x1($s0)
.size func_8005331C, . - func_8005331C
    /* 43B40 80053340 00000000 */  nop
