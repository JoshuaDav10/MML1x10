.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A480
    /* 4AC80 8005A480 23104300 */  subu       $v0, $v0, $v1
    /* 4AC84 8005A484 5A690108 */  j          .L8005A568
    /* 4AC88 8005A488 860002A6 */   sh        $v0, 0x86($s0)
  .L8005A48C:
    /* 4AC8C 8005A48C 7C0F858F */  lw         $a1, %gp_rel(D_800987E0)($gp)
    /* 4AC90 8005A490 0C80063C */  lui        $a2, %hi(D_800BE2F8)
    /* 4AC94 8005A494 F8E2C624 */  addiu      $a2, $a2, %lo(D_800BE2F8)
    /* 4AC98 8005A498 C46F010C */  jal        func_8005BF10
    /* 4AC9C 8005A49C 02000424 */   addiu     $a0, $zero, 0x2
    /* 4ACA0 8005A4A0 72000282 */  lb         $v0, 0x72($s0)
    /* 4ACA4 8005A4A4 72000692 */  lbu        $a2, 0x72($s0)
    /* 4ACA8 8005A4A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4ACAC 8005A4AC 15004018 */  blez       $v0, .L8005A504
    /* 4ACB0 8005A4B0 21280000 */   addu      $a1, $zero, $zero
    /* 4ACB4 8005A4B4 FFFFA430 */  andi       $a0, $a1, 0xFFFF
  .L8005A4B8:
    /* 4ACB8 8005A4B8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4ACBC 8005A4BC 00160600 */  sll        $v0, $a2, 24
    /* 4ACC0 8005A4C0 03160200 */  sra        $v0, $v0, 24
    /* 4ACC4 8005A4C4 23104400 */  subu       $v0, $v0, $a0
    /* 4ACC8 8005A4C8 40180200 */  sll        $v1, $v0, 1
    /* 4ACCC 8005A4CC 21186200 */  addu       $v1, $v1, $v0
    /* 4ACD0 8005A4D0 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4ACD4 8005A4D4 0C80013C */  lui        $at, %hi(D_800BE2F9)
    /* 4ACD8 8005A4D8 21082400 */  addu       $at, $at, $a0
    /* 4ACDC 8005A4DC F9E22490 */  lbu        $a0, %lo(D_800BE2F9)($at)
    /* 4ACE0 8005A4E0 23104300 */  subu       $v0, $v0, $v1
    /* 4ACE4 8005A4E4 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4ACE8 8005A4E8 020044A0 */  sb         $a0, 0x2($v0)
    /* 4ACEC 8005A4EC 72000282 */  lb         $v0, 0x72($s0)
    /* 4ACF0 8005A4F0 72000692 */  lbu        $a2, 0x72($s0)
    /* 4ACF4 8005A4F4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4ACF8 8005A4F8 2A186200 */  slt        $v1, $v1, $v0
    /* 4ACFC 8005A4FC EEFF6014 */  bnez       $v1, .L8005A4B8
.size func_8005A480, . - func_8005A480
