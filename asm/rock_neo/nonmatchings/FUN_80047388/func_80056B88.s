.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056B88
    /* 47388 80056B88 0F006010 */  beqz       $v1, .L80056BC8
    /* 4738C 80056B8C 00000000 */   nop
    /* 47390 80056B90 4411828F */  lw         $v0, %gp_rel(D_800989A8)($gp)
    /* 47394 80056B94 00000000 */  nop
    /* 47398 80056B98 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 4739C 80056B9C 06004310 */  beq        $v0, $v1, .L80056BB8
    /* 473A0 80056BA0 21200000 */   addu      $a0, $zero, $zero
    /* 473A4 80056BA4 0200053C */  lui        $a1, (0x20000 >> 16)
    /* 473A8 80056BA8 F08F010C */  jal        func_80063FC0
.size func_80056B88, . - func_80056B88
