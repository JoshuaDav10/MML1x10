.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058B78
    /* 49378 80058B78 00406230 */  andi       $v0, $v1, 0x4000
    /* 4937C 80058B7C 0C004010 */  beqz       $v0, .L80058BB0
    /* 49380 80058B80 00106230 */   andi      $v0, $v1, 0x1000
    /* 49384 80058B84 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 49388 80058B88 00FF0324 */  addiu      $v1, $zero, -0x100
    /* 4938C 80058B8C 24104300 */  and        $v0, $v0, $v1
    /* 49390 80058B90 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 49394 80058B94 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 49398 80058B98 7100A490 */  lbu        $a0, 0x71($a1)
    /* 4939C 80058B9C 25104300 */  or         $v0, $v0, $v1
    /* 493A0 80058BA0 25104400 */  or         $v0, $v0, $a0
    /* 493A4 80058BA4 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 493A8 80058BA8 FD620108 */  j          .L80058BF4
    /* 493AC 80058BAC 80000224 */   addiu     $v0, $zero, 0x80
  .L80058BB0:
    /* 493B0 80058BB0 0F004010 */  beqz       $v0, .L80058BF0
    /* 493B4 80058BB4 00FF0224 */   addiu     $v0, $zero, -0x100
    /* 493B8 80058BB8 F411838F */  lw         $v1, %gp_rel(Moji_flag)($gp)
    /* 493BC 80058BBC 0020043C */  lui        $a0, (0x20000000 >> 16)
    /* 493C0 80058BC0 24186200 */  and        $v1, $v1, $v0
    /* 493C4 80058BC4 F41183AF */  sw         $v1, %gp_rel(Moji_flag)($gp)
    /* 493C8 80058BC8 7200A280 */  lb         $v0, 0x72($a1)
    /* 493CC 80058BCC 25186400 */  or         $v1, $v1, $a0
.size func_80058B78, . - func_80058B78
