.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040E00
    /* 31600 80040E00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 31604 80040E04 00340600 */  sll        $a2, $a2, 16
    /* 31608 80040E08 03340600 */  sra        $a2, $a2, 16
    /* 3160C 80040E0C 01000224 */  addiu      $v0, $zero, 0x1
    /* 31610 80040E10 0F00C210 */  beq        $a2, $v0, .L80040E50
    /* 31614 80040E14 1000BFAF */   sw        $ra, 0x10($sp)
    /* 31618 80040E18 0200C228 */  slti       $v0, $a2, 0x2
    /* 3161C 80040E1C 05004010 */  beqz       $v0, .L80040E34
    /* 31620 80040E20 00000000 */   nop
    /* 31624 80040E24 0800C010 */  beqz       $a2, .L80040E48
    /* 31628 80040E28 01000224 */   addiu     $v0, $zero, 0x1
    /* 3162C 80040E2C A3030108 */  j          .L80040E8C
.size func_80040E00, . - func_80040E00
