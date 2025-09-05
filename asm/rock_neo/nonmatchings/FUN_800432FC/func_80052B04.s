.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052B04
    /* 43304 80052B04 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 43308 80052B08 A000B88F */  lw         $t8, 0xA0($sp)
    /* 4330C 80052B0C 8800BEAF */  sw         $fp, 0x88($sp)
    /* 43310 80052B10 21F0C000 */  addu       $fp, $a2, $zero
    /* 43314 80052B14 6800B0AF */  sw         $s0, 0x68($sp)
    /* 43318 80052B18 2180E000 */  addu       $s0, $a3, $zero
    /* 4331C 80052B1C 8000B6AF */  sw         $s6, 0x80($sp)
    /* 43320 80052B20 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* 43324 80052B24 8400B7AF */  sw         $s7, 0x84($sp)
    /* 43328 80052B28 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* 4332C 80052B2C 7800B4AF */  sw         $s4, 0x78($sp)
    /* 43330 80052B30 7400B3AF */  sw         $s3, 0x74($sp)
    /* 43334 80052B34 7000B2AF */  sw         $s2, 0x70($sp)
    /* 43338 80052B38 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 4333C 80052B3C 5000A4AF */  sw         $a0, 0x50($sp)
    /* 43340 80052B40 5800A5AF */  sw         $a1, 0x58($sp)
    /* 43344 80052B44 6000A0AF */  sw         $zero, 0x60($sp)
    /* 43348 80052B48 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 4334C 80052B4C FF0020A0 */  sb         $zero, (0x1F8000FF & 0xFFFF)($at)
    /* 43350 80052B50 18000017 */  bnez       $t8, .L80052BB4
.size func_80052B04, . - func_80052B04
