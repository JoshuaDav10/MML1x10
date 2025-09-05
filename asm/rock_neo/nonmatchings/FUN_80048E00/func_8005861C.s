.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005861C
    /* 48E1C 8005861C 21388000 */  addu       $a3, $a0, $zero
    /* 48E20 80058620 C000E394 */  lhu        $v1, 0xC0($a3)
    /* 48E24 80058624 70118593 */  lbu        $a1, %gp_rel(D_800989D4)($gp)
    /* 48E28 80058628 01006224 */  addiu      $v0, $v1, 0x1
    /* 48E2C 8005862C 80180300 */  sll        $v1, $v1, 2
    /* 48E30 80058630 21186700 */  addu       $v1, $v1, $a3
    /* 48E34 80058634 80200500 */  sll        $a0, $a1, 2
    /* 48E38 80058638 C000E2A4 */  sh         $v0, 0xC0($a3)
    /* 48E3C 8005863C 6C00E28C */  lw         $v0, 0x6C($a3)
    /* 48E40 80058640 21208500 */  addu       $a0, $a0, $a1
    /* 48E44 80058644 05004224 */  addiu      $v0, $v0, 0x5
    /* 48E48 80058648 4C0062AC */  sw         $v0, 0x4C($v1)
    /* 48E4C 8005864C 6C00E28C */  lw         $v0, 0x6C($a3)
    /* 48E50 80058650 C0200400 */  sll        $a0, $a0, 3
    /* 48E54 80058654 01004690 */  lbu        $a2, 0x1($v0)
    /* 48E58 80058658 0980033C */  lui        $v1, %hi(D_8008D8EC)
    /* 48E5C 8005865C ECD86324 */  addiu      $v1, $v1, %lo(D_8008D8EC)
    /* 48E60 80058660 C0100600 */  sll        $v0, $a2, 3
    /* 48E64 80058664 21104300 */  addu       $v0, $v0, $v1
    /* 48E68 80058668 0700A010 */  beqz       $a1, .L80058688
    /* 48E6C 8005866C 21208200 */   addu      $a0, $a0, $v0
    /* 48E70 80058670 C0180500 */  sll        $v1, $a1, 3
    /* 48E74 80058674 0B80023C */  lui        $v0, %hi(Player_work + 0x4FC)
    /* 48E78 80058678 AC564224 */  addiu      $v0, $v0, %lo(Player_work + 0x4FC)
    /* 48E7C 8005867C 2110C200 */  addu       $v0, $a2, $v0
.size func_8005861C, . - func_8005861C
