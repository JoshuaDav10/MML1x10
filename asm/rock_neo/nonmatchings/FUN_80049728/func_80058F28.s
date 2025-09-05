.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058F28
    /* 49728 80058F28 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4972C 80058F2C 73000282 */  lb         $v0, 0x73($s0)
    /* 49730 80058F30 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 49734 80058F34 ED0F8493 */  lbu        $a0, %gp_rel(D_80098851)($gp)
    /* 49738 80058F38 21104300 */  addu       $v0, $v0, $v1
    /* 4973C 80058F3C 0C008214 */  bne        $a0, $v0, .L80058F70
    /* 49740 80058F40 00000000 */   nop
    /* 49744 80058F44 FC10828F */  lw         $v0, %gp_rel(D_80098960)($gp)
    /* 49748 80058F48 00000000 */  nop
    /* 4974C 80058F4C 01004230 */  andi       $v0, $v0, 0x1
    /* 49750 80058F50 07004010 */  beqz       $v0, .L80058F70
    /* 49754 80058F54 60000324 */   addiu     $v1, $zero, 0x60
    /* 49758 80058F58 1400028E */  lw         $v0, 0x14($s0)
    /* 4975C 80058F5C 00000000 */  nop
    /* 49760 80058F60 050043A0 */  sb         $v1, 0x5($v0)
    /* 49764 80058F64 10000224 */  addiu      $v0, $zero, 0x10
.size func_80058F28, . - func_80058F28
