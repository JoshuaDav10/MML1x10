.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80023E1C
    /* 1461C 80023E1C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 14620 80023E20 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 14624 80023E24 1800B2AF */  sw         $s2, 0x18($sp)
    /* 14628 80023E28 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1462C 80023E2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 14630 80023E30 0000918C */  lw         $s1, 0x0($a0)
    /* 14634 80023E34 0400838C */  lw         $v1, 0x4($a0)
    /* 14638 80023E38 003F2232 */  andi       $v0, $s1, 0x3F00
    /* 1463C 80023E3C C2910200 */  srl        $s2, $v0, 7
    /* 14640 80023E40 FF002232 */  andi       $v0, $s1, 0xFF
    /* 14644 80023E44 21880000 */  addu       $s1, $zero, $zero
    /* 14648 80023E48 80100200 */  sll        $v0, $v0, 2
    /* 1464C 80023E4C 801F013C */  lui        $at, (0x1F8001C8 >> 16)
    /* 14650 80023E50 C80123AC */  sw         $v1, (0x1F8001C8 & 0xFFFF)($at)
    /* 14654 80023E54 0800838C */  lw         $v1, 0x8($a0)
    /* 14658 80023E58 04004224 */  addiu      $v0, $v0, 0x4
    /* 1465C 80023E5C 801F013C */  lui        $at, (0x1F8001CC >> 16)
    /* 14660 80023E60 CC0123AC */  sw         $v1, (0x1F8001CC & 0xFFFF)($at)
    /* 14664 80023E64 0C00838C */  lw         $v1, 0xC($a0)
    /* 14668 80023E68 21808200 */  addu       $s0, $a0, $v0
    /* 1466C 80023E6C 801F013C */  lui        $at, (0x1F8001D0 >> 16)
    /* 14670 80023E70 D00123AC */  sw         $v1, (0x1F8001D0 & 0xFFFF)($at)
  .L80023E74:
    /* 14674 80023E74 AA8F000C */  jal        func_80023EA8
    /* 14678 80023E78 21200002 */   addu      $a0, $s0, $zero
    /* 1467C 80023E7C 02003126 */  addiu      $s1, $s1, 0x2
    /* 14680 80023E80 2B103202 */  sltu       $v0, $s1, $s2
    /* 14684 80023E84 FBFF4014 */  bnez       $v0, .L80023E74
    /* 14688 80023E88 08001026 */   addiu     $s0, $s0, 0x8
    /* 1468C 80023E8C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 14690 80023E90 1800B28F */  lw         $s2, 0x18($sp)
    /* 14694 80023E94 1400B18F */  lw         $s1, 0x14($sp)
    /* 14698 80023E98 1000B08F */  lw         $s0, 0x10($sp)
    /* 1469C 80023E9C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 146A0 80023EA0 0800E003 */  jr         $ra
    /* 146A4 80023EA4 00000000 */   nop
.size func_80023E1C, . - func_80023E1C
