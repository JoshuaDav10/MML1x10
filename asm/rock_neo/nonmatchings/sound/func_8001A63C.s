.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A63C
    /* AE3C 8001A63C 12008004 */  bltz       $a0, .L8001A688
    /* AE40 8001A640 00100524 */   addiu     $a1, $zero, 0x1000
    /* AE44 8001A644 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* AE48 8001A648 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* AE4C 8001A64C 18008200 */  mult       $a0, $v0
    /* AE50 8001A650 C3170400 */  sra        $v0, $a0, 31
    /* AE54 8001A654 10300000 */  mfhi       $a2
    /* AE58 8001A658 43180600 */  sra        $v1, $a2, 1
    /* AE5C 8001A65C 23186200 */  subu       $v1, $v1, $v0
    /* AE60 8001A660 40100300 */  sll        $v0, $v1, 1
    /* AE64 8001A664 21104300 */  addu       $v0, $v0, $v1
    /* AE68 8001A668 80100200 */  sll        $v0, $v0, 2
    /* AE6C 8001A66C 23108200 */  subu       $v0, $a0, $v0
    /* AE70 8001A670 80100200 */  sll        $v0, $v0, 2
    /* AE74 8001A674 0880013C */  lui        $at, %hi(D_80082C70)
    /* AE78 8001A678 21082200 */  addu       $at, $at, $v0
    /* AE7C 8001A67C 702C228C */  lw         $v0, %lo(D_80082C70)($at)
    /* AE80 8001A680 B3690008 */  j          .L8001A6CC
    /* AE84 8001A684 04286500 */   sllv      $a1, $a1, $v1
  .L8001A688:
    /* AE88 8001A688 23200400 */  negu       $a0, $a0
    /* AE8C 8001A68C AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* AE90 8001A690 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* AE94 8001A694 18008200 */  mult       $a0, $v0
    /* AE98 8001A698 C3170400 */  sra        $v0, $a0, 31
    /* AE9C 8001A69C 10300000 */  mfhi       $a2
    /* AEA0 8001A6A0 43180600 */  sra        $v1, $a2, 1
    /* AEA4 8001A6A4 23186200 */  subu       $v1, $v1, $v0
    /* AEA8 8001A6A8 40100300 */  sll        $v0, $v1, 1
    /* AEAC 8001A6AC 21104300 */  addu       $v0, $v0, $v1
    /* AEB0 8001A6B0 80100200 */  sll        $v0, $v0, 2
    /* AEB4 8001A6B4 23108200 */  subu       $v0, $a0, $v0
    /* AEB8 8001A6B8 80100200 */  sll        $v0, $v0, 2
    /* AEBC 8001A6BC 0880013C */  lui        $at, %hi(D_80082CA0)
    /* AEC0 8001A6C0 21082200 */  addu       $at, $at, $v0
    /* AEC4 8001A6C4 A02C228C */  lw         $v0, %lo(D_80082CA0)($at)
    /* AEC8 8001A6C8 07286500 */  srav       $a1, $a1, $v1
  .L8001A6CC:
    /* AECC 8001A6CC 1800A200 */  mult       $a1, $v0
    /* AED0 8001A6D0 12280000 */  mflo       $a1
    /* AED4 8001A6D4 0800E003 */  jr         $ra
    /* AED8 8001A6D8 03140500 */   sra       $v0, $a1, 16
.size func_8001A63C, . - func_8001A63C
