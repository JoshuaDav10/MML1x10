.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A200
    /* 4AA00 8005A200 040002A6 */  sh         $v0, 0x4($s0)
  .L8005A204:
    /* 4AA04 8005A204 86000286 */  lh         $v0, 0x86($s0)
    /* 4AA08 8005A208 00000000 */  nop
    /* 4AA0C 8005A20C 0A004228 */  slti       $v0, $v0, 0xA
    /* 4AA10 8005A210 02004014 */  bnez       $v0, .L8005A21C
    /* 4AA14 8005A214 00000000 */   nop
    /* 4AA18 8005A218 860000A6 */  sh         $zero, 0x86($s0)
  .L8005A21C:
    /* 4AA1C 8005A21C 86000286 */  lh         $v0, 0x86($s0)
    /* 4AA20 8005A220 00000000 */  nop
    /* 4AA24 8005A224 03004104 */  bgez       $v0, .L8005A234
    /* 4AA28 8005A228 FFFF4332 */   andi      $v1, $s2, 0xFFFF
    /* 4AA2C 8005A22C 09000224 */  addiu      $v0, $zero, 0x9
    /* 4AA30 8005A230 860002A6 */  sh         $v0, 0x86($s0)
  .L8005A234:
    /* 4AA34 8005A234 95006014 */  bnez       $v1, .L8005A48C
    /* 4AA38 8005A238 00000000 */   nop
    /* 4AA3C 8005A23C 72000282 */  lb         $v0, 0x72($s0)
    /* 4AA40 8005A240 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AA44 8005A244 2A106200 */  slt        $v0, $v1, $v0
    /* 4AA48 8005A248 12004010 */  beqz       $v0, .L8005A294
    /* 4AA4C 8005A24C 21280000 */   addu      $a1, $zero, $zero
    /* 4AA50 8005A250 50000624 */  addiu      $a2, $zero, 0x50
    /* 4AA54 8005A254 FFFFA330 */  andi       $v1, $a1, 0xFFFF
  .L8005A258:
    /* 4AA58 8005A258 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AA5C 8005A25C 00160400 */  sll        $v0, $a0, 24
    /* 4AA60 8005A260 03160200 */  sra        $v0, $v0, 24
    /* 4AA64 8005A264 23104300 */  subu       $v0, $v0, $v1
    /* 4AA68 8005A268 40180200 */  sll        $v1, $v0, 1
    /* 4AA6C 8005A26C 21186200 */  addu       $v1, $v1, $v0
    /* 4AA70 8005A270 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4AA74 8005A274 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4AA78 8005A278 23208300 */  subu       $a0, $a0, $v1
    /* 4AA7C 8005A27C 010086A0 */  sb         $a2, 0x1($a0)
.size func_8005A200, . - func_8005A200
