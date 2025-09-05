.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041DDC
    /* 325DC 80041DDC FF00E730 */  andi       $a3, $a3, 0xFF
    /* 325E0 80041DE0 0300E010 */  beqz       $a3, .L80041DF0
    /* 325E4 80041DE4 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 325E8 80041DE8 80070108 */  j          .L80041E00
    /* 325EC 80041DEC AD0082A0 */   sb        $v0, 0xAD($a0)
  .L80041DF0:
    /* 325F0 80041DF0 AD008390 */  lbu        $v1, 0xAD($a0)
    /* 325F4 80041DF4 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 325F8 80041DF8 23004310 */  beq        $v0, $v1, .L80041E88
    /* 325FC 80041DFC 00000000 */   nop
  .L80041E00:
    /* 32600 80041E00 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 32604 80041E04 01000724 */  addiu      $a3, $zero, 0x1
    /* 32608 80041E08 11006710 */  beq        $v1, $a3, .L80041E50
    /* 3260C 80041E0C 0C000224 */   addiu     $v0, $zero, 0xC
    /* 32610 80041E10 1B006214 */  bne        $v1, $v0, .L80041E80
    /* 32614 80041E14 00000000 */   nop
    /* 32618 80041E18 AD008290 */  lbu        $v0, 0xAD($a0)
    /* 3261C 80041E1C 00000000 */  nop
    /* 32620 80041E20 17004714 */  bne        $v0, $a3, .L80041E80
    /* 32624 80041E24 00000000 */   nop
    /* 32628 80041E28 A4008290 */  lbu        $v0, 0xA4($a0)
    /* 3262C 80041E2C 00000000 */  nop
    /* 32630 80041E30 40180200 */  sll        $v1, $v0, 1
    /* 32634 80041E34 04006224 */  addiu      $v0, $v1, 0x4
.size func_80041DDC, . - func_80041DDC
