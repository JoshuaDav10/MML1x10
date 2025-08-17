.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800355F0
    /* 25DF0 800355F0 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 25DF4 800355F4 7000B2AF */  sw         $s2, 0x70($sp)
    /* 25DF8 800355F8 21908000 */  addu       $s2, $a0, $zero
    /* 25DFC 800355FC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 25E00 80035600 23300600 */  negu       $a2, $a2
    /* 25E04 80035604 FF0FC630 */  andi       $a2, $a2, 0xFFF
    /* 25E08 80035608 40100500 */  sll        $v0, $a1, 1
    /* 25E0C 8003560C 21104500 */  addu       $v0, $v0, $a1
    /* 25E10 80035610 6800B0AF */  sw         $s0, 0x68($sp)
    /* 25E14 80035614 C0810200 */  sll        $s0, $v0, 7
    /* 25E18 80035618 23800202 */  subu       $s0, $s0, $v0
    /* 25E1C 8003561C 80801000 */  sll        $s0, $s0, 2
    /* 25E20 80035620 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 25E24 80035624 2800B127 */  addiu      $s1, $sp, 0x28
    /* 25E28 80035628 7400BFAF */  sw         $ra, 0x74($sp)
    /* 25E2C 8003562C 1000A6A7 */  sh         $a2, 0x10($sp)
    /* 25E30 80035630 0B80013C */  lui        $at, %hi(Player_work + 0x56)
    /* 25E34 80035634 21083000 */  addu       $at, $at, $s0
    /* 25E38 80035638 06522294 */  lhu        $v0, %lo(Player_work + 0x56)($at)
    /* 25E3C 8003563C 0B80013C */  lui        $at, %hi(Player_work + 0x116)
    /* 25E40 80035640 21083000 */  addu       $at, $at, $s0
    /* 25E44 80035644 C6522394 */  lhu        $v1, %lo(Player_work + 0x116)($at)
    /* 25E48 80035648 21282002 */  addu       $a1, $s1, $zero
    /* 25E4C 8003564C 1400A0A7 */  sh         $zero, 0x14($sp)
    /* 25E50 80035650 21104300 */  addu       $v0, $v0, $v1
    /* 25E54 80035654 00084224 */  addiu      $v0, $v0, 0x800
    /* 25E58 80035658 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 25E5C 8003565C 0EEE010C */  jal        RotMatrixYXZ
    /* 25E60 80035660 1200A2A7 */   sh        $v0, 0x12($sp)
    /* 25E64 80035664 21202002 */  addu       $a0, $s1, $zero
    /* 25E68 80035668 4800B127 */  addiu      $s1, $sp, 0x48
    /* 25E6C 8003566C 5AED010C */  jal        TransposeMatrix
    /* 25E70 80035670 21282002 */   addu      $a1, $s1, $zero
    /* 25E74 80035674 21202002 */  addu       $a0, $s1, $zero
    /* 25E78 80035678 0B80013C */  lui        $at, %hi(Player_work + 0x14)
    /* 25E7C 8003567C 21083000 */  addu       $at, $at, $s0
    /* 25E80 80035680 C4512284 */  lh         $v0, %lo(Player_work + 0x14)($at)
    /* 25E84 80035684 1800A527 */  addiu      $a1, $sp, 0x18
    /* 25E88 80035688 23100200 */  negu       $v0, $v0
    /* 25E8C 8003568C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 25E90 80035690 0B80013C */  lui        $at, %hi(Player_work + 0x16)
    /* 25E94 80035694 21083000 */  addu       $at, $at, $s0
    /* 25E98 80035698 C6512384 */  lh         $v1, %lo(Player_work + 0x16)($at)
    /* 25E9C 8003569C 96000224 */  addiu      $v0, $zero, 0x96
    /* 25EA0 800356A0 23104300 */  subu       $v0, $v0, $v1
    /* 25EA4 800356A4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 25EA8 800356A8 0B80013C */  lui        $at, %hi(Player_work + 0x18)
    /* 25EAC 800356AC 21083000 */  addu       $at, $at, $s0
    /* 25EB0 800356B0 C8512284 */  lh         $v0, %lo(Player_work + 0x18)($at)
    /* 25EB4 800356B4 5C00A627 */  addiu      $a2, $sp, 0x5C
    /* 25EB8 800356B8 23100200 */  negu       $v0, $v0
    /* 25EBC 800356BC 6EEA010C */  jal        ApplyMatrixLV
    /* 25EC0 800356C0 2000A2AF */   sw        $v0, 0x20($sp)
    /* 25EC4 800356C4 4800A28F */  lw         $v0, 0x48($sp)
    /* 25EC8 800356C8 4C00A38F */  lw         $v1, 0x4C($sp)
    /* 25ECC 800356CC 5000A48F */  lw         $a0, 0x50($sp)
    /* 25ED0 800356D0 5400A58F */  lw         $a1, 0x54($sp)
    /* 25ED4 800356D4 000042AE */  sw         $v0, 0x0($s2)
    /* 25ED8 800356D8 040043AE */  sw         $v1, 0x4($s2)
    /* 25EDC 800356DC 080044AE */  sw         $a0, 0x8($s2)
    /* 25EE0 800356E0 0C0045AE */  sw         $a1, 0xC($s2)
    /* 25EE4 800356E4 5800A28F */  lw         $v0, 0x58($sp)
    /* 25EE8 800356E8 5C00A38F */  lw         $v1, 0x5C($sp)
    /* 25EEC 800356EC 6000A48F */  lw         $a0, 0x60($sp)
    /* 25EF0 800356F0 6400A58F */  lw         $a1, 0x64($sp)
    /* 25EF4 800356F4 100042AE */  sw         $v0, 0x10($s2)
    /* 25EF8 800356F8 140043AE */  sw         $v1, 0x14($s2)
    /* 25EFC 800356FC 180044AE */  sw         $a0, 0x18($s2)
    /* 25F00 80035700 1C0045AE */  sw         $a1, 0x1C($s2)
    /* 25F04 80035704 21104002 */  addu       $v0, $s2, $zero
    /* 25F08 80035708 7400BF8F */  lw         $ra, 0x74($sp)
    /* 25F0C 8003570C 7000B28F */  lw         $s2, 0x70($sp)
    /* 25F10 80035710 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 25F14 80035714 6800B08F */  lw         $s0, 0x68($sp)
    /* 25F18 80035718 7800BD27 */  addiu      $sp, $sp, 0x78
    /* 25F1C 8003571C 0800E003 */  jr         $ra
    /* 25F20 80035720 00000000 */   nop
.size func_800355F0, . - func_800355F0
