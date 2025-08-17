.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037F60
    /* 28760 80037F60 C0048297 */  lhu        $v0, %gp_rel(D_80097D24)($gp)
    /* 28764 80037F64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 28768 80037F68 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2876C 80037F6C 0C004010 */  beqz       $v0, .L80037FA0
    /* 28770 80037F70 1000B0AF */   sw        $s0, 0x10($sp)
    /* 28774 80037F74 0A80103C */  lui        $s0, %hi(D_8009A376)
    /* 28778 80037F78 76A31026 */  addiu      $s0, $s0, %lo(D_8009A376)
    /* 2877C 80037F7C 40100200 */  sll        $v0, $v0, 1
  .L80037F80:
    /* 28780 80037F80 21105000 */  addu       $v0, $v0, $s0
    /* 28784 80037F84 00004494 */  lhu        $a0, 0x0($v0)
    /* 28788 80037F88 36DF000C */  jal        func_80037CD8
    /* 2878C 80037F8C 00000000 */   nop
    /* 28790 80037F90 C0048297 */  lhu        $v0, %gp_rel(D_80097D24)($gp)
    /* 28794 80037F94 00000000 */  nop
    /* 28798 80037F98 F9FF4014 */  bnez       $v0, .L80037F80
    /* 2879C 80037F9C 40100200 */   sll       $v0, $v0, 1
  .L80037FA0:
    /* 287A0 80037FA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 287A4 80037FA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 287A8 80037FA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 287AC 80037FAC 0800E003 */  jr         $ra
    /* 287B0 80037FB0 00000000 */   nop
.size func_80037F60, . - func_80037F60
