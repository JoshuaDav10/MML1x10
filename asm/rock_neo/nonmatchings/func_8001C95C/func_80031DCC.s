.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031DCC
    /* 225CC 80031DCC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 225D0 80031DD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 225D4 80031DD4 3800B08F */  lw         $s0, 0x38($sp)
    /* 225D8 80031DD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 225DC 80031DDC 2190A000 */  addu       $s2, $a1, $zero
    /* 225E0 80031DE0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 225E4 80031DE4 2188C000 */  addu       $s1, $a2, $zero
    /* 225E8 80031DE8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 225EC 80031DEC 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 225F0 80031DF0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 225F4 80031DF4 33C4000C */  jal        func_800310CC
    /* 225F8 80031DF8 2128E000 */   addu      $a1, $a3, $zero
    /* 225FC 80031DFC 21184000 */  addu       $v1, $v0, $zero
    /* 22600 80031E00 21100000 */  addu       $v0, $zero, $zero
    /* 22604 80031E04 00F81026 */  addiu      $s0, $s0, -0x800
    /* 22608 80031E08 23807000 */  subu       $s0, $v1, $s0
    /* 2260C 80031E0C 21807002 */  addu       $s0, $s3, $s0
    /* 22610 80031E10 23187200 */  subu       $v1, $v1, $s2
    /* 22614 80031E14 21182302 */  addu       $v1, $s1, $v1
    /* 22618 80031E18 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 2261C 80031E1C 008C1100 */  sll        $s1, $s1, 16
    /* 22620 80031E20 C38B1100 */  sra        $s1, $s1, 15
    /* 22624 80031E24 2A882302 */  slt        $s1, $s1, $v1
    /* 22628 80031E28 05002016 */  bnez       $s1, .L80031E40
    /* 2262C 80031E2C FF0F1032 */   andi      $s0, $s0, 0xFFF
    /* 22630 80031E30 00141300 */  sll        $v0, $s3, 16
    /* 22634 80031E34 C3130200 */  sra        $v0, $v0, 15
    /* 22638 80031E38 2A105000 */  slt        $v0, $v0, $s0
    /* 2263C 80031E3C 01004238 */  xori       $v0, $v0, 0x1
  .L80031E40:
    /* 22640 80031E40 2000BF8F */  lw         $ra, 0x20($sp)
    /* 22644 80031E44 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 22648 80031E48 1800B28F */  lw         $s2, 0x18($sp)
    /* 2264C 80031E4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 22650 80031E50 1000B08F */  lw         $s0, 0x10($sp)
    /* 22654 80031E54 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 22658 80031E58 0800E003 */  jr         $ra
    /* 2265C 80031E5C 00000000 */   nop
.size func_80031DCC, . - func_80031DCC
