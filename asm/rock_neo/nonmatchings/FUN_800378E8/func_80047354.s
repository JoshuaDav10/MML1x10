.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047354
    /* 37B54 80047354 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 37B58 80047358 1800B0AF */  sw         $s0, 0x18($sp)
    /* 37B5C 8004735C 21808000 */  addu       $s0, $a0, $zero
    /* 37B60 80047360 2000BFAF */  sw         $ra, 0x20($sp)
    /* 37B64 80047364 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 37B68 80047368 03000392 */  lbu        $v1, 0x3($s0)
    /* 37B6C 8004736C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 37B70 80047370 14006214 */  bne        $v1, $v0, .L800473C4
    /* 37B74 80047374 FE000224 */   addiu     $v0, $zero, 0xFE
    /* 37B78 80047378 802C063C */  lui        $a2, (0x2C808080 >> 16)
    /* 37B7C 8004737C 8080C634 */  ori        $a2, $a2, (0x2C808080 & 0xFFFF)
    /* 37B80 80047380 3800038E */  lw         $v1, 0x38($s0)
    /* 37B84 80047384 3C000596 */  lhu        $a1, 0x3C($s0)
    /* 37B88 80047388 03000224 */  addiu      $v0, $zero, 0x3
    /* 37B8C 8004738C 000002A2 */  sb         $v0, 0x0($s0)
    /* 37B90 80047390 180006AE */  sw         $a2, 0x18($s0)
    /* 37B94 80047394 080002A2 */  sb         $v0, 0x8($s0)
    /* 37B98 80047398 1C0003AE */  sw         $v1, 0x1C($s0)
    /* 37B9C 8004739C 211F010C */  jal        func_80047C84
    /* 37BA0 800473A0 200005A6 */   sh        $a1, 0x20($s0)
    /* 37BA4 800473A4 38000426 */  addiu      $a0, $s0, 0x38
    /* 37BA8 800473A8 03000524 */  addiu      $a1, $zero, 0x3
    /* 37BAC 800473AC 4040063C */  lui        $a2, (0x40404040 >> 16)
    /* 37BB0 800473B0 4040C634 */  ori        $a2, $a2, (0x40404040 & 0xFFFF)
    /* 37BB4 800473B4 3A17010C */  jal        func_80045CE8
    /* 37BB8 800473B8 01000724 */   addiu     $a3, $zero, 0x1
    /* 37BBC 800473BC A31D0108 */  j          .L8004768C
    /* 37BC0 800473C0 00000000 */   nop
  .L800473C4:
    /* 37BC4 800473C4 05006214 */  bne        $v1, $v0, .L800473DC
    /* 37BC8 800473C8 01000224 */   addiu     $v0, $zero, 0x1
    /* 37BCC 800473CC C2000224 */  addiu      $v0, $zero, 0xC2
    /* 37BD0 800473D0 0C0000A2 */  sb         $zero, 0xC($s0)
    /* 37BD4 800473D4 F81C0108 */  j          .L800473E0
    /* 37BD8 800473D8 030002A2 */   sb        $v0, 0x3($s0)
  .L800473DC:
    /* 37BDC 800473DC 0C0002A2 */  sb         $v0, 0xC($s0)
.size func_80047354, . - func_80047354
