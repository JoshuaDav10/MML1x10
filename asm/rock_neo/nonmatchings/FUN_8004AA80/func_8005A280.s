.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A280
    /* 4AA80 8005A280 72000382 */  lb         $v1, 0x72($s0)
    /* 4AA84 8005A284 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AA88 8005A288 2A104300 */  slt        $v0, $v0, $v1
    /* 4AA8C 8005A28C F2FF4014 */  bnez       $v0, .L8005A258
    /* 4AA90 8005A290 FFFFA330 */   andi      $v1, $a1, 0xFFFF
  .L8005A294:
    /* 4AA94 8005A294 72000282 */  lb         $v0, 0x72($s0)
    /* 4AA98 8005A298 71000382 */  lb         $v1, 0x71($s0)
    /* 4AA9C 8005A29C 86000486 */  lh         $a0, 0x86($s0)
    /* 4AAA0 8005A2A0 23104300 */  subu       $v0, $v0, $v1
    /* 4AAA4 8005A2A4 40180200 */  sll        $v1, $v0, 1
    /* 4AAA8 8005A2A8 21186200 */  addu       $v1, $v1, $v0
    /* 4AAAC 8005A2AC 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AAB0 8005A2B0 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4AAB4 8005A2B4 21082400 */  addu       $at, $at, $a0
    /* 4AAB8 8005A2B8 28D02490 */  lbu        $a0, %lo(D_8008D028)($at)
    /* 4AABC 8005A2BC 23104300 */  subu       $v0, $v0, $v1
    /* 4AAC0 8005A2C0 020044A0 */  sb         $a0, 0x2($v0)
    /* 4AAC4 8005A2C4 72000282 */  lb         $v0, 0x72($s0)
    /* 4AAC8 8005A2C8 71000382 */  lb         $v1, 0x71($s0)
    /* 4AACC 8005A2CC 00000000 */  nop
    /* 4AAD0 8005A2D0 23104300 */  subu       $v0, $v0, $v1
    /* 4AAD4 8005A2D4 40180200 */  sll        $v1, $v0, 1
    /* 4AAD8 8005A2D8 21186200 */  addu       $v1, $v1, $v0
    /* 4AADC 8005A2DC 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AAE0 8005A2E0 840E8493 */  lbu        $a0, %gp_rel(D_800986E8)($gp)
    /* 4AAE4 8005A2E4 23104300 */  subu       $v0, $v0, $v1
    /* 4AAE8 8005A2E8 010044A0 */  sb         $a0, 0x1($v0)
    /* 4AAEC 8005A2EC 840E8293 */  lbu        $v0, %gp_rel(D_800986E8)($gp)
    /* 4AAF0 8005A2F0 880E8493 */  lbu        $a0, %gp_rel(D_800986EC)($gp)
    /* 4AAF4 8005A2F4 00000000 */  nop
    /* 4AAF8 8005A2F8 21104400 */  addu       $v0, $v0, $a0
    /* 4AAFC 8005A2FC FF004330 */  andi       $v1, $v0, 0xFF
.size func_8005A280, . - func_8005A280
