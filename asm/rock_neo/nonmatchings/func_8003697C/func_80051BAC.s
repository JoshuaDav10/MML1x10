.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051BAC
    /* 423AC 80051BAC 00008290 */  lbu        $v0, 0x0($a0)
    /* 423B0 80051BB0 00000000 */  nop
    /* 423B4 80051BB4 03004230 */  andi       $v0, $v0, 0x3
    /* 423B8 80051BB8 08004010 */  beqz       $v0, .L80051BDC
    /* 423BC 80051BBC 00000000 */   nop
    /* 423C0 80051BC0 0A80023C */  lui        $v0, %hi(D_80098898)
    /* 423C4 80051BC4 9888428C */  lw         $v0, %lo(D_80098898)($v0)
    /* 423C8 80051BC8 00000000 */  nop
    /* 423CC 80051BCC 000044AC */  sw         $a0, 0x0($v0)
    /* 423D0 80051BD0 04004224 */  addiu      $v0, $v0, 0x4
    /* 423D4 80051BD4 0A80013C */  lui        $at, %hi(D_80098898)
    /* 423D8 80051BD8 988822AC */  sw         $v0, %lo(D_80098898)($at)
  .L80051BDC:
    /* 423DC 80051BDC 0800E003 */  jr         $ra
    /* 423E0 80051BE0 7C0080A4 */   sh        $zero, 0x7C($a0)
.size func_80051BAC, . - func_80051BAC
