.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FBB4
    /* 503B4 8005FBB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 503B8 8005FBB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 503BC 8005FBBC 21808000 */  addu       $s0, $a0, $zero
    /* 503C0 8005FBC0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 503C4 8005FBC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 503C8 8005FBC8 02000382 */  lb         $v1, 0x2($s0)
    /* 503CC 8005FBCC 0C80113C */  lui        $s1, %hi(Game_work)
    /* 503D0 8005FBD0 101B3126 */  addiu      $s1, $s1, %lo(Game_work)
    /* 503D4 8005FBD4 0500622C */  sltiu      $v0, $v1, 0x5
    /* 503D8 8005FBD8 7C004010 */  beqz       $v0, .L8005FDCC
    /* 503DC 8005FBDC 80100300 */   sll       $v0, $v1, 2
    /* 503E0 8005FBE0 0180013C */  lui        $at, %hi(jtbl_800112CC)
    /* 503E4 8005FBE4 21082200 */  addu       $at, $at, $v0
    /* 503E8 8005FBE8 CC12228C */  lw         $v0, %lo(jtbl_800112CC)($at)
    /* 503EC 8005FBEC 00000000 */  nop
    /* 503F0 8005FBF0 08004000 */  jr         $v0
    /* 503F4 8005FBF4 00000000 */   nop
  glabel .L8005FBF8
    /* 503F8 8005FBF8 04000292 */  lbu        $v0, 0x4($s0)
    /* 503FC 8005FBFC 0980013C */  lui        $at, %hi(D_8008DAF4)
    /* 50400 8005FC00 21082200 */  addu       $at, $at, $v0
    /* 50404 8005FC04 F4DA2490 */  lbu        $a0, %lo(D_8008DAF4)($at)
    /* 50408 8005FC08 9676000C */  jal        Sce_flag_test
    /* 5040C 8005FC0C 20058424 */   addiu     $a0, $a0, 0x520
    /* 50410 8005FC10 0B004010 */  beqz       $v0, .L8005FC40
    /* 50414 8005FC14 82000424 */   addiu     $a0, $zero, 0x82
    /* 50418 8005FC18 01000524 */  addiu      $a1, $zero, 0x1
    /* 5041C 8005FC1C 0268000C */  jal        Sound_call
    /* 50420 8005FC20 21300000 */   addu      $a2, $zero, $zero
    /* 50424 8005FC24 21200000 */  addu       $a0, $zero, $zero
    /* 50428 8005FC28 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 5042C 8005FC2C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50430 8005FC30 0B4E010C */  jal        MojiTaskExec
    /* 50434 8005FC34 4C000624 */   addiu     $a2, $zero, 0x4C
    /* 50438 8005FC38 567F0108 */  j          .L8005FD58
    /* 5043C 8005FC3C 00000000 */   nop
  .L8005FC40:
    /* 50440 8005FC40 83000424 */  addiu      $a0, $zero, 0x83
    /* 50444 8005FC44 01000524 */  addiu      $a1, $zero, 0x1
    /* 50448 8005FC48 0268000C */  jal        Sound_call
    /* 5044C 8005FC4C 21300000 */   addu      $a2, $zero, $zero
    /* 50450 8005FC50 437F0108 */  j          .L8005FD0C
    /* 50454 8005FC54 02000224 */   addiu     $v0, $zero, 0x2
  glabel .L8005FC58
    /* 50458 8005FC58 797F010C */  jal        func_8005FDE4
    /* 5045C 8005FC5C 21202002 */   addu      $a0, $s1, $zero
    /* 50460 8005FC60 21184000 */  addu       $v1, $v0, $zero
    /* 50464 8005FC64 01000224 */  addiu      $v0, $zero, 0x1
    /* 50468 8005FC68 15006210 */  beq        $v1, $v0, .L8005FCC0
    /* 5046C 8005FC6C 02006228 */   slti      $v0, $v1, 0x2
    /* 50470 8005FC70 05004010 */  beqz       $v0, .L8005FC88
    /* 50474 8005FC74 00000000 */   nop
    /* 50478 8005FC78 08006010 */  beqz       $v1, .L8005FC9C
    /* 5047C 8005FC7C 21200000 */   addu      $a0, $zero, $zero
    /* 50480 8005FC80 737F0108 */  j          .L8005FDCC
    /* 50484 8005FC84 00000000 */   nop
  .L8005FC88:
    /* 50488 8005FC88 02000224 */  addiu      $v0, $zero, 0x2
    /* 5048C 8005FC8C 13006210 */  beq        $v1, $v0, .L8005FCDC
    /* 50490 8005FC90 21200000 */   addu      $a0, $zero, $zero
    /* 50494 8005FC94 737F0108 */  j          .L8005FDCC
    /* 50498 8005FC98 00000000 */   nop
  .L8005FC9C:
    /* 5049C 8005FC9C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 504A0 8005FCA0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 504A4 8005FCA4 0B4E010C */  jal        MojiTaskExec
    /* 504A8 8005FCA8 4D000624 */   addiu     $a2, $zero, 0x4D
    /* 504AC 8005FCAC 02000292 */  lbu        $v0, 0x2($s0)
    /* 504B0 8005FCB0 00000000 */  nop
    /* 504B4 8005FCB4 02004224 */  addiu      $v0, $v0, 0x2
    /* 504B8 8005FCB8 737F0108 */  j          .L8005FDCC
    /* 504BC 8005FCBC 020002A2 */   sb        $v0, 0x2($s0)
  .L8005FCC0:
    /* 504C0 8005FCC0 21200000 */  addu       $a0, $zero, $zero
    /* 504C4 8005FCC4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 504C8 8005FCC8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 504CC 8005FCCC 0B4E010C */  jal        MojiTaskExec
    /* 504D0 8005FCD0 4E000624 */   addiu     $a2, $zero, 0x4E
    /* 504D4 8005FCD4 567F0108 */  j          .L8005FD58
    /* 504D8 8005FCD8 00000000 */   nop
  .L8005FCDC:
    /* 504DC 8005FCDC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 504E0 8005FCE0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 504E4 8005FCE4 0B4E010C */  jal        MojiTaskExec
    /* 504E8 8005FCE8 4F000624 */   addiu     $a2, $zero, 0x4F
    /* 504EC 8005FCEC 567F0108 */  j          .L8005FD58
    /* 504F0 8005FCF0 00000000 */   nop
  glabel .L8005FCF4
    /* 504F4 8005FCF4 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 504F8 8005FCF8 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 504FC 8005FCFC 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 50500 8005FD00 24104300 */  and        $v0, $v0, $v1
    /* 50504 8005FD04 31004014 */  bnez       $v0, .L8005FDCC
    /* 50508 8005FD08 02000224 */   addiu     $v0, $zero, 0x2
  .L8005FD0C:
    /* 5050C 8005FD0C 010002A2 */  sb         $v0, 0x1($s0)
    /* 50510 8005FD10 737F0108 */  j          .L8005FDCC
    /* 50514 8005FD14 020000A2 */   sb        $zero, 0x2($s0)
  glabel .L8005FD18
    /* 50518 8005FD18 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 5051C 8005FD1C 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 50520 8005FD20 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 50524 8005FD24 24104300 */  and        $v0, $v0, $v1
    /* 50528 8005FD28 28004014 */  bnez       $v0, .L8005FDCC
    /* 5052C 8005FD2C 00000000 */   nop
    /* 50530 8005FD30 50EC000C */  jal        func_8003B140
    /* 50534 8005FD34 00000000 */   nop
    /* 50538 8005FD38 79002292 */  lbu        $v0, 0x79($s1)
    /* 5053C 8005FD3C 7A002392 */  lbu        $v1, 0x7A($s1)
    /* 50540 8005FD40 17000424 */  addiu      $a0, $zero, 0x17
    /* 50544 8005FD44 500022A2 */  sb         $v0, 0x50($s1)
    /* 50548 8005FD48 0C5F000C */  jal        func_80017C30
    /* 5054C 8005FD4C 510023A2 */   sb        $v1, 0x51($s1)
    /* 50550 8005FD50 1576000C */  jal        func_8001D854
    /* 50554 8005FD54 10000424 */   addiu     $a0, $zero, 0x10
  .L8005FD58:
    /* 50558 8005FD58 02000292 */  lbu        $v0, 0x2($s0)
    /* 5055C 8005FD5C 00000000 */  nop
    /* 50560 8005FD60 01004224 */  addiu      $v0, $v0, 0x1
    /* 50564 8005FD64 737F0108 */  j          .L8005FDCC
    /* 50568 8005FD68 020002A2 */   sb        $v0, 0x2($s0)
  glabel .L8005FD6C
    /* 5056C 8005FD6C 595B000C */  jal        func_80016D64
    /* 50570 8005FD70 00000000 */   nop
    /* 50574 8005FD74 CF6C000C */  jal        func_8001B33C
    /* 50578 8005FD78 00000000 */   nop
    /* 5057C 8005FD7C C56C000C */  jal        func_8001B314
    /* 50580 8005FD80 00000000 */   nop
    /* 50584 8005FD84 0A80023C */  lui        $v0, %hi(D_80098958)
    /* 50588 8005FD88 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* 5058C 8005FD8C 00000000 */  nop
    /* 50590 8005FD90 00084234 */  ori        $v0, $v0, 0x800
    /* 50594 8005FD94 0A80013C */  lui        $at, %hi(D_80098958)
    /* 50598 8005FD98 588922AC */  sw         $v0, %lo(D_80098958)($at)
    /* 5059C 8005FD9C 0867000C */  jal        func_80019C20
    /* 505A0 8005FDA0 00000000 */   nop
    /* 505A4 8005FDA4 8F7C000C */  jal        func_8001F23C
    /* 505A8 8005FDA8 00000000 */   nop
    /* 505AC 8005FDAC F27C000C */  jal        func_8001F3C8
    /* 505B0 8005FDB0 00000000 */   nop
    /* 505B4 8005FDB4 05000224 */  addiu      $v0, $zero, 0x5
    /* 505B8 8005FDB8 0C80013C */  lui        $at, %hi(Game_work)
    /* 505BC 8005FDBC 101B22A0 */  sb         $v0, %lo(Game_work)($at)
    /* 505C0 8005FDC0 02000224 */  addiu      $v0, $zero, 0x2
    /* 505C4 8005FDC4 0C80013C */  lui        $at, %hi(Game_work + 0x1)
    /* 505C8 8005FDC8 111B22A0 */  sb         $v0, %lo(Game_work + 0x1)($at)
  .L8005FDCC:
    /* 505CC 8005FDCC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 505D0 8005FDD0 1400B18F */  lw         $s1, 0x14($sp)
    /* 505D4 8005FDD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 505D8 8005FDD8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 505DC 8005FDDC 0800E003 */  jr         $ra
    /* 505E0 8005FDE0 00000000 */   nop
.size func_8005FBB4, . - func_8005FBB4
