.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A634
    /* 4AE34 8005A634 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4AE38 8005A638 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4AE3C 8005A63C 21808000 */  addu       $s0, $a0, $zero
    /* 4AE40 8005A640 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4AE44 8005A644 0000048E */  lw         $a0, 0x0($s0)
    /* 4AE48 8005A648 0001053C */  lui        $a1, (0x1000000 >> 16)
    /* 4AE4C 8005A64C 24108500 */  and        $v0, $a0, $a1
    /* 4AE50 8005A650 0D004014 */  bnez       $v0, .L8005A688
    /* 4AE54 8005A654 BFFF023C */   lui       $v0, (0xFFBF0000 >> 16)
    /* 4AE58 8005A658 FFFF033C */  lui        $v1, (0xFFFF7FFF >> 16)
    /* 4AE5C 8005A65C FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 4AE60 8005A660 25108500 */  or         $v0, $a0, $a1
    /* 4AE64 8005A664 24104300 */  and        $v0, $v0, $v1
    /* 4AE68 8005A668 79000392 */  lbu        $v1, 0x79($s0)
    /* 4AE6C 8005A66C 000002AE */  sw         $v0, 0x0($s0)
    /* 4AE70 8005A670 05000224 */  addiu      $v0, $zero, 0x5
    /* 4AE74 8005A674 040002A6 */  sh         $v0, 0x4($s0)
    /* 4AE78 8005A678 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4AE7C 8005A67C 710003A2 */  sb         $v1, 0x71($s0)
.size func_8005A634, . - func_8005A634
