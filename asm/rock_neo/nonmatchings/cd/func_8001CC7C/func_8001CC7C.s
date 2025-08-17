.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CC7C
    /* D47C 8001CC7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D480 8001CC80 1400B1AF */  sw         $s1, 0x14($sp)
    /* D484 8001CC84 2188A000 */  addu       $s1, $a1, $zero
    /* D488 8001CC88 0A80053C */  lui        $a1, %hi(D_80098814)
    /* D48C 8001CC8C 1488A524 */  addiu      $a1, $a1, %lo(D_80098814)
    /* D490 8001CC90 1000B0AF */  sw         $s0, 0x10($sp)
    /* D494 8001CC94 40800400 */  sll        $s0, $a0, 1
    /* D498 8001CC98 21800402 */  addu       $s0, $s0, $a0
    /* D49C 8001CC9C 80801000 */  sll        $s0, $s0, 2
    /* D4A0 8001CCA0 1800BFAF */  sw         $ra, 0x18($sp)
    /* D4A4 8001CCA4 0880013C */  lui        $at, %hi(D_80082CD0)
    /* D4A8 8001CCA8 21083000 */  addu       $at, $at, $s0
    /* D4AC 8001CCAC D02C248C */  lw         $a0, %lo(D_80082CD0)($at)
    /* D4B0 8001CCB0 01000224 */  addiu      $v0, $zero, 0x1
    /* D4B4 8001CCB4 0A80013C */  lui        $at, %hi(D_800988C0)
    /* D4B8 8001CCB8 C08822A0 */  sb         $v0, %lo(D_800988C0)($at)
    /* D4BC 8001CCBC 07000224 */  addiu      $v0, $zero, 0x7
    /* D4C0 8001CCC0 0A80013C */  lui        $at, %hi(D_80098B42)
    /* D4C4 8001CCC4 428B22A0 */  sb         $v0, %lo(D_80098B42)($at)
    /* D4C8 8001CCC8 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D4CC 8001CCCC 6C8920A0 */  sb         $zero, %lo(D_8009896C)($at)
    /* D4D0 8001CCD0 0A80013C */  lui        $at, %hi(D_80098828)
    /* D4D4 8001CCD4 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* D4D8 8001CCD8 0A80013C */  lui        $at, %hi(D_80098964)
    /* D4DC 8001CCDC 648920A0 */  sb         $zero, %lo(D_80098964)($at)
    /* D4E0 8001CCE0 0A80013C */  lui        $at, %hi(D_80098A7C)
    /* D4E4 8001CCE4 7C8A24AC */  sw         $a0, %lo(D_80098A7C)($at)
    /* D4E8 8001CCE8 A2DF010C */  jal        CdIntToPos
    /* D4EC 8001CCEC 00000000 */   nop
    /* D4F0 8001CCF0 0880013C */  lui        $at, %hi(D_80082CD0 + 0x4)
    /* D4F4 8001CCF4 21083000 */  addu       $at, $at, $s0
    /* D4F8 8001CCF8 D42C228C */  lw         $v0, %lo(D_80082CD0 + 0x4)($at)
    /* D4FC 8001CCFC 0280043C */  lui        $a0, %hi(func_8001CD60)
    /* D500 8001CD00 60CD8424 */  addiu      $a0, $a0, %lo(func_8001CD60)
    /* D504 8001CD04 0A80013C */  lui        $at, %hi(D_800987A4)
    /* D508 8001CD08 A48731AC */  sw         $s1, %lo(D_800987A4)($at)
    /* D50C 8001CD0C 0A80013C */  lui        $at, %hi(D_8009881C)
    /* D510 8001CD10 1C8822AC */  sw         $v0, %lo(D_8009881C)($at)
    /* D514 8001CD14 89DE010C */  jal        CdReadyCallback
    /* D518 8001CD18 00000000 */   nop
    /* D51C 8001CD1C 0A80053C */  lui        $a1, %hi(D_80098814)
    /* D520 8001CD20 1488A524 */  addiu      $a1, $a1, %lo(D_80098814)
    /* D524 8001CD24 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D528 8001CD28 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D52C 8001CD2C AF74000C */  jal        func_8001D2BC
    /* D530 8001CD30 02000424 */   addiu     $a0, $zero, 0x2
    /* D534 8001CD34 06000424 */  addiu      $a0, $zero, 0x6
    /* D538 8001CD38 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D53C 8001CD3C 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D540 8001CD40 AF74000C */  jal        func_8001D2BC
    /* D544 8001CD44 21280000 */   addu      $a1, $zero, $zero
    /* D548 8001CD48 1800BF8F */  lw         $ra, 0x18($sp)
    /* D54C 8001CD4C 1400B18F */  lw         $s1, 0x14($sp)
    /* D550 8001CD50 1000B08F */  lw         $s0, 0x10($sp)
    /* D554 8001CD54 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D558 8001CD58 0800E003 */  jr         $ra
    /* D55C 8001CD5C 00000000 */   nop
.size func_8001CC7C, . - func_8001CC7C
