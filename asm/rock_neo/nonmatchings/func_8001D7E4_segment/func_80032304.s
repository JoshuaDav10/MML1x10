.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80032304
    /* 22B04 80032304 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 22B08 80032308 1000BFAF */  sw         $ra, 0x10($sp)
    /* 22B0C 8003230C 9000838C */  lw         $v1, 0x90($a0)
    /* 22B10 80032310 80100500 */  sll        $v0, $a1, 2
    /* 22B14 80032314 21104300 */  addu       $v0, $v0, $v1
    /* 22B18 80032318 0000428C */  lw         $v0, 0x0($v0)
    /* 22B1C 8003231C C0300600 */  sll        $a2, $a2, 3
    /* 22B20 80032320 AC0085A0 */  sb         $a1, 0xAC($a0)
    /* 22B24 80032324 940082AC */  sw         $v0, 0x94($a0)
    /* 22B28 80032328 21104600 */  addu       $v0, $v0, $a2
    /* 22B2C 8003232C 980082AC */  sw         $v0, 0x98($a0)
    /* 22B30 80032330 0000428C */  lw         $v0, 0x0($v0)
    /* 22B34 80032334 8ACE000C */  jal        func_80033A28
    /* 22B38 80032338 A40082AC */   sw        $v0, 0xA4($a0)
    /* 22B3C 8003233C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 22B40 80032340 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 22B44 80032344 0800E003 */  jr         $ra
    /* 22B48 80032348 00000000 */   nop
.size func_80032304, . - func_80032304
