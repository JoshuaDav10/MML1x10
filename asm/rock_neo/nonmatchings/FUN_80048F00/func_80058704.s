.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058704
    /* 48F04 80058704 04004590 */  lbu        $a1, 0x4($v0)
    /* 48F08 80058708 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 48F0C 8005870C 00000000 */  nop
    /* 48F10 80058710 25104300 */  or         $v0, $v0, $v1
  .L80058714:
    /* 48F14 80058714 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 48F18 80058718 4400E28C */  lw         $v0, 0x44($a3)
    /* 48F1C 8005871C 40180500 */  sll        $v1, $a1, 1
    /* 48F20 80058720 C200E5A4 */  sh         $a1, 0xC2($a3)
    /* 48F24 80058724 21186200 */  addu       $v1, $v1, $v0
    /* 48F28 80058728 00006394 */  lhu        $v1, 0x0($v1)
    /* 48F2C 8005872C 00000000 */  nop
    /* 48F30 80058730 21104300 */  addu       $v0, $v0, $v1
    /* 48F34 80058734 6C00E2AC */  sw         $v0, 0x6C($a3)
    /* 48F38 80058738 0800E003 */  jr         $ra
    /* 48F3C 8005873C 01000224 */   addiu     $v0, $zero, 0x1
.size func_80058704, . - func_80058704
