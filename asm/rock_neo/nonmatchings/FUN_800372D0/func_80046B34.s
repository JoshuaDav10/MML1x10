.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80046B34
    /* 37334 80046B34 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 37338 80046B38 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 3733C 80046B3C 6400B7AF */  sw         $s7, 0x64($sp)
    /* 37340 80046B40 21B84000 */  addu       $s7, $v0, $zero
    /* 37344 80046B44 02120500 */  srl        $v0, $a1, 8
    /* 37348 80046B48 4800B0AF */  sw         $s0, 0x48($sp)
    /* 3734C 80046B4C FF005030 */  andi       $s0, $v0, 0xFF
    /* 37350 80046B50 02140500 */  srl        $v0, $a1, 16
    /* 37354 80046B54 FF004230 */  andi       $v0, $v0, 0xFF
    /* 37358 80046B58 022E0500 */  srl        $a1, $a1, 24
    /* 3735C 80046B5C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 37360 80046B60 1100E22E */  sltiu      $v0, $s7, 0x11
    /* 37364 80046B64 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 37368 80046B68 6800BEAF */  sw         $fp, 0x68($sp)
    /* 3736C 80046B6C 6000B6AF */  sw         $s6, 0x60($sp)
    /* 37370 80046B70 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 37374 80046B74 5800B4AF */  sw         $s4, 0x58($sp)
    /* 37378 80046B78 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3737C 80046B7C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 37380 80046B80 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 37384 80046B84 1000A4AF */  sw         $a0, 0x10($sp)
    /* 37388 80046B88 02004014 */  bnez       $v0, .L80046B94
    /* 3738C 80046B8C 2000A5AF */   sw        $a1, 0x20($sp)
    /* 37390 80046B90 10001724 */  addiu      $s7, $zero, 0x10
  .L80046B94:
    /* 37394 80046B94 40101700 */  sll        $v0, $s7, 1
    /* 37398 80046B98 0980013C */  lui        $at, %hi(D_80097EFA)
    /* 3739C 80046B9C 21082200 */  addu       $at, $at, $v0
    /* 373A0 80046BA0 FA7E3E94 */  lhu        $fp, %lo(D_80097EFA)($at)
    /* 373A4 80046BA4 94FF010C */  jal        rand
    /* 373A8 80046BA8 21B00000 */   addu      $s6, $zero, $zero
    /* 373AC 80046BAC 6B00E012 */  beqz       $s7, .L80046D5C
    /* 373B0 80046BB0 FF0F5530 */   andi      $s5, $v0, 0xFFF
    /* 373B4 80046BB4 0980033C */  lui        $v1, %hi(D_8008A5A8)
    /* 373B8 80046BB8 A8A56324 */  addiu      $v1, $v1, %lo(D_8008A5A8)
    /* 373BC 80046BBC 00111000 */  sll        $v0, $s0, 4
    /* 373C0 80046BC0 21104300 */  addu       $v0, $v0, $v1
    /* 373C4 80046BC4 2800A2AF */  sw         $v0, 0x28($sp)
  .L80046BC8:
    /* 373C8 80046BC8 86C5000C */  jal        func_80031618
    /* 373CC 80046BCC 00000000 */   nop
    /* 373D0 80046BD0 21984000 */  addu       $s3, $v0, $zero
    /* 373D4 80046BD4 5D006012 */  beqz       $s3, .L80046D4C
    /* 373D8 80046BD8 15000224 */   addiu     $v0, $zero, 0x15
    /* 373DC 80046BDC 000062A2 */  sb         $v0, 0x0($s3)
    /* 373E0 80046BE0 87000224 */  addiu      $v0, $zero, 0x87
    /* 373E4 80046BE4 030060A2 */  sb         $zero, 0x3($s3)
    /* 373E8 80046BE8 94FF010C */  jal        rand
    /* 373EC 80046BEC 020062A2 */   sb        $v0, 0x2($s3)
    /* 373F0 80046BF0 090060A2 */  sb         $zero, 0x9($s3)
    /* 373F4 80046BF4 1000A68F */  lw         $a2, 0x10($sp)
    /* 373F8 80046BF8 00000000 */  nop
    /* 373FC 80046BFC 0300C288 */  lwl        $v0, 0x3($a2)
    /* 37400 80046C00 0000C298 */  lwr        $v0, 0x0($a2)
    /* 37404 80046C04 0700C388 */  lwl        $v1, 0x7($a2)
    /* 37408 80046C08 0400C398 */  lwr        $v1, 0x4($a2)
    /* 3740C 80046C0C 3B0062AA */  swl        $v0, 0x3B($s3)
    /* 37410 80046C10 380062BA */  swr        $v0, 0x38($s3)
    /* 37414 80046C14 3F0063AA */  swl        $v1, 0x3F($s3)
    /* 37418 80046C18 3C0063BA */  swr        $v1, 0x3C($s3)
    /* 3741C 80046C1C 3A006296 */  lhu        $v0, 0x3A($s3)
    /* 37420 80046C20 00000000 */  nop
    /* 37424 80046C24 ECFF4224 */  addiu      $v0, $v0, -0x14
    /* 37428 80046C28 94FF010C */  jal        rand
    /* 3742C 80046C2C 3A0062A6 */   sh        $v0, 0x3A($s3)
    /* 37430 80046C30 21A04000 */  addu       $s4, $v0, $zero
    /* 37434 80046C34 2800A68F */  lw         $a2, 0x28($sp)
.size func_80046B34, . - func_80046B34
