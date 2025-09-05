.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058480
    /* 48C80 80058480 800E82A3 */  sb         $v0, %gp_rel(D_800986E4)($gp)
    /* 48C84 80058484 3C610108 */  j          .L800584F0
    /* 48C88 80058488 00000000 */   nop
  .L8005848C:
    /* 48C8C 8005848C 72000282 */  lb         $v0, 0x72($s0)
    /* 48C90 80058490 72000492 */  lbu        $a0, 0x72($s0)
    /* 48C94 80058494 12004018 */  blez       $v0, .L800584E0
    /* 48C98 80058498 21300000 */   addu      $a2, $zero, $zero
    /* 48C9C 8005849C 80000524 */  addiu      $a1, $zero, 0x80
    /* 48CA0 800584A0 FFFFC330 */  andi       $v1, $a2, 0xFFFF
  .L800584A4:
    /* 48CA4 800584A4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 48CA8 800584A8 00160400 */  sll        $v0, $a0, 24
    /* 48CAC 800584AC 03160200 */  sra        $v0, $v0, 24
    /* 48CB0 800584B0 23104300 */  subu       $v0, $v0, $v1
    /* 48CB4 800584B4 40180200 */  sll        $v1, $v0, 1
    /* 48CB8 800584B8 21186200 */  addu       $v1, $v1, $v0
    /* 48CBC 800584BC 6C00048E */  lw         $a0, 0x6C($s0)
    /* 48CC0 800584C0 FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* 48CC4 800584C4 23208300 */  subu       $a0, $a0, $v1
    /* 48CC8 800584C8 010085A0 */  sb         $a1, 0x1($a0)
    /* 48CCC 800584CC 72000382 */  lb         $v1, 0x72($s0)
    /* 48CD0 800584D0 72000492 */  lbu        $a0, 0x72($s0)
    /* 48CD4 800584D4 2A104300 */  slt        $v0, $v0, $v1
    /* 48CD8 800584D8 F2FF4014 */  bnez       $v0, .L800584A4
    /* 48CDC 800584DC FFFFC330 */   andi      $v1, $a2, 0xFFFF
  .L800584E0:
    /* 48CE0 800584E0 6C00028E */  lw         $v0, 0x6C($s0)
    /* 48CE4 800584E4 00000000 */  nop
    /* 48CE8 800584E8 02004224 */  addiu      $v0, $v0, 0x2
    /* 48CEC 800584EC 6C0002AE */  sw         $v0, 0x6C($s0)
  .L800584F0:
    /* 48CF0 800584F0 0000028E */  lw         $v0, 0x0($s0)
    /* 48CF4 800584F4 8000033C */  lui        $v1, (0x800000 >> 16)
    /* 48CF8 800584F8 25104300 */  or         $v0, $v0, $v1
    /* 48CFC 800584FC 000002AE */  sw         $v0, 0x0($s0)
.size func_80058480, . - func_80058480
