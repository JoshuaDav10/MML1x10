.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055A78
    /* 46278 80055A78 6C00858C */  lw         $a1, 0x6C($a0)
    /* 4627C 80055A7C 0C80033C */  lui        $v1, %hi(Game_work + 0x50)
    /* 46280 80055A80 601B6380 */  lb         $v1, %lo(Game_work + 0x50)($v1)
    /* 46284 80055A84 0100A290 */  lbu        $v0, 0x1($a1)
    /* 46288 80055A88 00000000 */  nop
    /* 4628C 80055A8C 0A006214 */  bne        $v1, $v0, .L80055AB8
    /* 46290 80055A90 00000000 */   nop
    /* 46294 80055A94 0C80033C */  lui        $v1, %hi(Game_work + 0x51)
    /* 46298 80055A98 611B6380 */  lb         $v1, %lo(Game_work + 0x51)($v1)
    /* 4629C 80055A9C 0200A290 */  lbu        $v0, 0x2($a1)
    /* 462A0 80055AA0 00000000 */  nop
    /* 462A4 80055AA4 04006214 */  bne        $v1, $v0, .L80055AB8
    /* 462A8 80055AA8 00000000 */   nop
    /* 462AC 80055AAC 0300A590 */  lbu        $a1, 0x3($a1)
    /* 462B0 80055AB0 B3560108 */  j          .L80055ACC
    /* 462B4 80055AB4 FF00A330 */   andi      $v1, $a1, 0xFF
  .L80055AB8:
    /* 462B8 80055AB8 6C00828C */  lw         $v0, 0x6C($a0)
    /* 462BC 80055ABC 00000000 */  nop
    /* 462C0 80055AC0 04004590 */  lbu        $a1, 0x4($v0)
    /* 462C4 80055AC4 00000000 */  nop
    /* 462C8 80055AC8 FF00A330 */  andi       $v1, $a1, 0xFF
  .L80055ACC:
    /* 462CC 80055ACC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 462D0 80055AD0 06006214 */  bne        $v1, $v0, .L80055AEC
    /* 462D4 80055AD4 40180300 */   sll       $v1, $v1, 1
    /* 462D8 80055AD8 6C00828C */  lw         $v0, 0x6C($a0)
    /* 462DC 80055ADC 00000000 */  nop
    /* 462E0 80055AE0 05004224 */  addiu      $v0, $v0, 0x5
    /* 462E4 80055AE4 C3560108 */  j          .L80055B0C
    /* 462E8 80055AE8 6C0082AC */   sw        $v0, 0x6C($a0)
  .L80055AEC:
    /* 462EC 80055AEC 4400828C */  lw         $v0, 0x44($a0)
    /* 462F0 80055AF0 C20085A4 */  sh         $a1, 0xC2($a0)
    /* 462F4 80055AF4 21186200 */  addu       $v1, $v1, $v0
    /* 462F8 80055AF8 00006394 */  lhu        $v1, 0x0($v1)
    /* 462FC 80055AFC 00000000 */  nop
    /* 46300 80055B00 21104300 */  addu       $v0, $v0, $v1
    /* 46304 80055B04 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 46308 80055B08 480082AC */  sw         $v0, 0x48($a0)
  .L80055B0C:
    /* 4630C 80055B0C 0800E003 */  jr         $ra
    /* 46310 80055B10 01000224 */   addiu     $v0, $zero, 0x1
.size func_80055A78, . - func_80055A78
