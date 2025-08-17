.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel func_8002AE40
    /* 1B640 8002AE40 801F013C */  lui        $at, (0x1F8000D8 >> 16)
    /* 1B644 8002AE44 D80022AC */  sw         $v0, (0x1F8000D8 & 0xFFFF)($at)
    /* 1B648 8002AE48 801F013C */  lui        $at, (0x1F8000DC >> 16)
    /* 1B64C 8002AE4C DC0023AC */  sw         $v1, (0x1F8000DC & 0xFFFF)($at)
    /* 1B650 8002AE50 00000C8D */  lw         $t4, 0x0($t0)
    /* 1B654 8002AE54 04000D8D */  lw         $t5, 0x4($t0)
    /* 1B658 8002AE58 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 1B65C 8002AE5C 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 1B660 8002AE60 08000C8D */  lw         $t4, 0x8($t0)
    /* 1B664 8002AE64 0C000D8D */  lw         $t5, 0xC($t0)
    /* 1B668 8002AE68 10000E8D */  lw         $t6, 0x10($t0)
    /* 1B66C 8002AE6C 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 1B670 8002AE70 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 1B674 8002AE74 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 1B678 8002AE78 14000C8D */  lw         $t4, 0x14($t0)
    /* 1B67C 8002AE7C 18000D8D */  lw         $t5, 0x18($t0)
    /* 1B680 8002AE80 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 1B684 8002AE84 1C000E8D */  lw         $t6, 0x1C($t0)
    /* 1B688 8002AE88 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 1B68C 8002AE8C 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 1B690 8002AE90 2000E230 */  andi       $v0, $a3, 0x20
    /* 1B694 8002AE94 0A004010 */  beqz       $v0, .L8002AEC0
    /* 1B698 8002AE98 00000000 */   nop
    /* 1B69C 8002AE9C 2A00C284 */  lh         $v0, 0x2A($a2)
    /* 1B6A0 8002AEA0 3000C58C */  lw         $a1, 0x30($a2)
    /* 1B6A4 8002AEA4 80200200 */  sll        $a0, $v0, 2
    /* 1B6A8 8002AEA8 21208200 */  addu       $a0, $a0, $v0
    /* 1B6AC 8002AEAC 801F023C */  lui        $v0, (0x1F8000E8 >> 16)
    /* 1B6B0 8002AEB0 E800428C */  lw         $v0, (0x1F8000E8 & 0xFFFF)($v0)
    /* 1B6B4 8002AEB4 80200400 */  sll        $a0, $a0, 2
    /* 1B6B8 8002AEB8 B3AB0008 */  j          .L8002AECC
    /* 1B6BC 8002AEBC 21204400 */   addu      $a0, $v0, $a0
  .L8002AEC0:
    /* 1B6C0 8002AEC0 801F043C */  lui        $a0, (0x1F8000E8 >> 16)
    /* 1B6C4 8002AEC4 E800848C */  lw         $a0, (0x1F8000E8 & 0xFFFF)($a0)
    /* 1B6C8 8002AEC8 3000C58C */  lw         $a1, 0x30($a2)
  .L8002AECC:
    /* 1B6CC 8002AECC B9AB000C */  jal        func_8002AEE4
    /* 1B6D0 8002AED0 00000000 */   nop
  .L8002AED4:
    /* 1B6D4 8002AED4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1B6D8 8002AED8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1B6DC 8002AEDC 0800E003 */  jr         $ra
    /* 1B6E0 8002AEE0 00000000 */   nop
.size func_8002AE40, . - func_8002AE40
