.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D648
    /* DE48 8001D648 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DE4C 8001D64C 021F0400 */  srl        $v1, $a0, 28
    /* DE50 8001D650 00110400 */  sll        $v0, $a0, 4
    /* DE54 8001D654 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* DE58 8001D658 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* DE5C 8001D65C FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* DE60 8001D660 80180300 */  sll        $v1, $v1, 2
    /* DE64 8001D664 02150200 */  srl        $v0, $v0, 20
    /* DE68 8001D668 80100200 */  sll        $v0, $v0, 2
    /* DE6C 8001D66C C0200400 */  sll        $a0, $a0, 3
    /* DE70 8001D670 1000BFAF */  sw         $ra, 0x10($sp)
    /* DE74 8001D674 0980013C */  lui        $at, %hi(D_80088F9C)
    /* DE78 8001D678 21082300 */  addu       $at, $at, $v1
    /* DE7C 8001D67C 9C8F258C */  lw         $a1, %lo(D_80088F9C)($at)
    /* DE80 8001D680 0980013C */  lui        $at, %hi(D_80088EF8)
    /* DE84 8001D684 21082300 */  addu       $at, $at, $v1
    /* DE88 8001D688 F88E238C */  lw         $v1, %lo(D_80088EF8)($at)
    /* DE8C 8001D68C 21284500 */  addu       $a1, $v0, $a1
    /* DE90 8001D690 21104300 */  addu       $v0, $v0, $v1
    /* DE94 8001D694 0000A38C */  lw         $v1, 0x0($a1)
    /* DE98 8001D698 0000458C */  lw         $a1, 0x0($v0)
    /* DE9C 8001D69C 40100300 */  sll        $v0, $v1, 1
    /* DEA0 8001D6A0 21104300 */  addu       $v0, $v0, $v1
    /* DEA4 8001D6A4 80100200 */  sll        $v0, $v0, 2
    /* DEA8 8001D6A8 21208500 */  addu       $a0, $a0, $a1
    /* DEAC 8001D6AC 0000848C */  lw         $a0, 0x0($a0)
    /* DEB0 8001D6B0 0880013C */  lui        $at, %hi(D_80082CD0)
    /* DEB4 8001D6B4 21082200 */  addu       $at, $at, $v0
    /* DEB8 8001D6B8 D02C228C */  lw         $v0, %lo(D_80082CD0)($at)
    /* DEBC 8001D6BC 24208600 */  and        $a0, $a0, $a2
    /* DEC0 8001D6C0 B675000C */  jal        func_8001D6D8
    /* DEC4 8001D6C4 21204400 */   addu      $a0, $v0, $a0
    /* DEC8 8001D6C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* DECC 8001D6CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* DED0 8001D6D0 0800E003 */  jr         $ra
    /* DED4 8001D6D4 00000000 */   nop
.size func_8001D648, . - func_8001D648
