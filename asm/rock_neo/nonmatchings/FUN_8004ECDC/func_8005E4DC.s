.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E4DC
    /* 4ECDC 8005E4DC 07008330 */  andi       $v1, $a0, 0x7
    /* 4ECE0 8005E4E0 04106200 */  sllv       $v0, $v0, $v1
    /* 4ECE4 8005E4E4 00160200 */  sll        $v0, $v0, 24
    /* 4ECE8 8005E4E8 01014004 */  bltz       $v0, .L8005E8F0
    /* 4ECEC 8005E4EC 801F043C */   lui       $a0, (0x1F800070 >> 16)
    /* 4ECF0 8005E4F0 70008434 */  ori        $a0, $a0, (0x1F800070 & 0xFFFF)
    /* 4ECF4 8005E4F4 0000838C */  lw         $v1, 0x0($a0)
    /* 4ECF8 8005E4F8 00000000 */  nop
    /* 4ECFC 8005E4FC 28006224 */  addiu      $v0, $v1, 0x28
    /* 4ED00 8005E500 21406000 */  addu       $t0, $v1, $zero
    /* 4ED04 8005E504 000082AC */  sw         $v0, 0x0($a0)
    /* 4ED08 8005E508 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* 4ED0C 8005E50C 000002AD */  sw         $v0, 0x0($t0)
    /* 4ED10 8005E510 D007878F */  lw         $a3, %gp_rel(D_80098034)($gp)
    /* 4ED14 8005E514 00000000 */  nop
    /* 4ED18 8005E518 18002701 */  mult       $t1, $a3
    /* 4ED1C 8005E51C 12700000 */  mflo       $t6
    /* 4ED20 8005E520 00000000 */  nop
    /* 4ED24 8005E524 00000000 */  nop
    /* 4ED28 8005E528 18004701 */  mult       $t2, $a3
    /* 4ED2C 8005E52C C02E023C */  lui        $v0, (0x2EC0C0C0 >> 16)
    /* 4ED30 8005E530 C0C04234 */  ori        $v0, $v0, (0x2EC0C0C0 & 0xFFFF)
    /* 4ED34 8005E534 040002AD */  sw         $v0, 0x4($t0)
    /* 4ED38 8005E538 1800AD8F */  lw         $t5, 0x18($sp)
    /* 4ED3C 8005E53C 00000000 */  nop
    /* 4ED40 8005E540 0000A485 */  lh         $a0, 0x0($t5)
    /* 4ED44 8005E544 0200A585 */  lh         $a1, 0x2($t5)
    /* 4ED48 8005E548 21208E00 */  addu       $a0, $a0, $t6
    /* 4ED4C 8005E54C FFFF8630 */  andi       $a2, $a0, 0xFFFF
    /* 4ED50 8005E550 21208700 */  addu       $a0, $a0, $a3
    /* 4ED54 8005E554 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 4ED58 8005E558 12180000 */  mflo       $v1
    /* 4ED5C 8005E55C 2328A300 */  subu       $a1, $a1, $v1
    /* 4ED60 8005E560 2318A700 */  subu       $v1, $a1, $a3
    /* 4ED64 8005E564 001C0300 */  sll        $v1, $v1, 16
    /* 4ED68 8005E568 25106600 */  or         $v0, $v1, $a2
    /* 4ED6C 8005E56C 25186400 */  or         $v1, $v1, $a0
    /* 4ED70 8005E570 002C0500 */  sll        $a1, $a1, 16
    /* 4ED74 8005E574 2530A600 */  or         $a2, $a1, $a2
    /* 4ED78 8005E578 2528A400 */  or         $a1, $a1, $a0
    /* 4ED7C 8005E57C 080002AD */  sw         $v0, 0x8($t0)
    /* 4ED80 8005E580 100003AD */  sw         $v1, 0x10($t0)
    /* 4ED84 8005E584 180006AD */  sw         $a2, 0x18($t0)
    /* 4ED88 8005E588 200005AD */  sw         $a1, 0x20($t0)
    /* 4ED8C 8005E58C 0200E286 */  lh         $v0, 0x2($s7)
    /* 4ED90 8005E590 00000000 */  nop
    /* 4ED94 8005E594 21104A00 */  addu       $v0, $v0, $t2
    /* 4ED98 8005E598 18005E00 */  mult       $v0, $fp
    /* 4ED9C 8005E59C 0000E386 */  lh         $v1, 0x0($s7)
    /* 4EDA0 8005E5A0 00000000 */  nop
    /* 4EDA4 8005E5A4 21186900 */  addu       $v1, $v1, $t1
    /* 4EDA8 8005E5A8 280F828F */  lw         $v0, %gp_rel(D_8009878C)($gp)
    /* 4EDAC 8005E5AC 12700000 */  mflo       $t6
.size func_8005E4DC, . - func_8005E4DC
