.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D41C
    /* 4DC1C 8005D41C 040062AC */  sw         $v0, 0x4($v1)
    /* 4DC20 8005D420 0C00428D */  lw         $v0, 0xC($t2)
    /* 4DC24 8005D424 21288B00 */  addu       $a1, $a0, $t3
    /* 4DC28 8005D428 0C0062AC */  sw         $v0, 0xC($v1)
    /* 4DC2C 8005D42C 12004A95 */  lhu        $t2, 0x12($t2)
    /* 4DC30 8005D430 21103803 */  addu       $v0, $t9, $t8
    /* 4DC34 8005D434 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 4DC38 8005D438 120062A4 */  sh         $v0, 0x12($v1)
    /* 4DC3C 8005D43C 21104C00 */  addu       $v0, $v0, $t4
    /* 4DC40 8005D440 1A0062A4 */  sh         $v0, 0x1A($v1)
    /* 4DC44 8005D444 220062A4 */  sh         $v0, 0x22($v1)
    /* 4DC48 8005D448 21102D01 */  addu       $v0, $t1, $t5
    /* 4DC4C 8005D44C 150066A0 */  sb         $a2, 0x15($v1)
    /* 4DC50 8005D450 2130CE00 */  addu       $a2, $a2, $t6
    /* 4DC54 8005D454 080064A4 */  sh         $a0, 0x8($v1)
    /* 4DC58 8005D458 180064A4 */  sh         $a0, 0x18($v1)
    /* 4DC5C 8005D45C 140062A0 */  sb         $v0, 0x14($v1)
    /* 4DC60 8005D460 1C0069A0 */  sb         $t1, 0x1C($v1)
    /* 4DC64 8005D464 1D0066A0 */  sb         $a2, 0x1D($v1)
    /* 4DC68 8005D468 240062A0 */  sb         $v0, 0x24($v1)
    /* 4DC6C 8005D46C 250066A0 */  sb         $a2, 0x25($v1)
    /* 4DC70 8005D470 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4DC74 8005D474 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4DC78 8005D478 100065A4 */  sh         $a1, 0x10($v1)
    /* 4DC7C 8005D47C 200065A4 */  sh         $a1, 0x20($v1)
    /* 4DC80 8005D480 00FF053C */  lui        $a1, (0xFF000000 >> 16)
    /* 4DC84 8005D484 16006AA4 */  sh         $t2, 0x16($v1)
    /* 4DC88 8005D488 7800828C */  lw         $v0, 0x78($a0)
    /* 4DC8C 8005D48C 2438E500 */  and        $a3, $a3, $a1
    /* 4DC90 8005D490 24104800 */  and        $v0, $v0, $t0
    /* 4DC94 8005D494 2538E200 */  or         $a3, $a3, $v0
    /* 4DC98 8005D498 000067AC */  sw         $a3, 0x0($v1)
    /* 4DC9C 8005D49C 7800828C */  lw         $v0, 0x78($a0)
    /* 4DCA0 8005D4A0 24186800 */  and        $v1, $v1, $t0
    /* 4DCA4 8005D4A4 24104500 */  and        $v0, $v0, $a1
    /* 4DCA8 8005D4A8 25104300 */  or         $v0, $v0, $v1
    /* 4DCAC 8005D4AC 780082AC */  sw         $v0, 0x78($a0)
    /* 4DCB0 8005D4B0 0000B08F */  lw         $s0, 0x0($sp)
    /* 4DCB4 8005D4B4 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 4DCB8 8005D4B8 0800E003 */  jr         $ra
    /* 4DCBC 8005D4BC 00000000 */   nop
.size func_8005D41C, . - func_8005D41C
