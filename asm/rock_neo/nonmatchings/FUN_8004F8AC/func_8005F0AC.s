.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F0AC
    /* 4F8AC 8005F0AC 0A006210 */  beq        $v1, $v0, .L8005F0D8
    /* 4F8B0 8005F0B0 41000224 */   addiu     $v0, $zero, 0x41
    /* 4F8B4 8005F0B4 11006210 */  beq        $v1, $v0, .L8005F0FC
    /* 4F8B8 8005F0B8 21200000 */   addu      $a0, $zero, $zero
    /* 4F8BC 8005F0BC 587C0108 */  j          .L8005F160
    /* 4F8C0 8005F0C0 00000000 */   nop
  .L8005F0C4:
    /* 4F8C4 8005F0C4 43000224 */  addiu      $v0, $zero, 0x43
    /* 4F8C8 8005F0C8 1D006210 */  beq        $v1, $v0, .L8005F140
    /* 4F8CC 8005F0CC 21200000 */   addu      $a0, $zero, $zero
    /* 4F8D0 8005F0D0 587C0108 */  j          .L8005F160
    /* 4F8D4 8005F0D4 00000000 */   nop
  .L8005F0D8:
    /* 4F8D8 8005F0D8 21200000 */  addu       $a0, $zero, $zero
    /* 4F8DC 8005F0DC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F8E0 8005F0E0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F8E4 8005F0E4 0B4E010C */  jal        MojiTaskExec
    /* 4F8E8 8005F0E8 51000624 */   addiu     $a2, $zero, 0x51
    /* 4F8EC 8005F0EC 7176010C */  jal        func_8005D9C4
    /* 4F8F0 8005F0F0 00000000 */   nop
    /* 4F8F4 8005F0F4 577C0108 */  j          .L8005F15C
    /* 4F8F8 8005F0F8 40050224 */   addiu     $v0, $zero, 0x540
  .L8005F0FC:
    /* 4F8FC 8005F0FC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F900 8005F100 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F904 8005F104 0B4E010C */  jal        MojiTaskExec
    /* 4F908 8005F108 53000624 */   addiu     $a2, $zero, 0x53
    /* 4F90C 8005F10C 65DD000C */  jal        func_80037594
    /* 4F910 8005F110 00000000 */   nop
    /* 4F914 8005F114 577C0108 */  j          .L8005F15C
    /* 4F918 8005F118 41050224 */   addiu     $v0, $zero, 0x541
  .L8005F11C:
    /* 4F91C 8005F11C 21200000 */  addu       $a0, $zero, $zero
    /* 4F920 8005F120 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F924 8005F124 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F928 8005F128 0B4E010C */  jal        MojiTaskExec
    /* 4F92C 8005F12C 55000624 */   addiu     $a2, $zero, 0x55
    /* 4F930 8005F130 ED7A010C */  jal        func_8005EBB4
    /* 4F934 8005F134 08070424 */   addiu     $a0, $zero, 0x708
    /* 4F938 8005F138 577C0108 */  j          .L8005F15C
    /* 4F93C 8005F13C 42050224 */   addiu     $v0, $zero, 0x542
  .L8005F140:
    /* 4F940 8005F140 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F944 8005F144 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F948 8005F148 0B4E010C */  jal        MojiTaskExec
    /* 4F94C 8005F14C 57000624 */   addiu     $a2, $zero, 0x57
    /* 4F950 8005F150 E97A010C */  jal        func_8005EBA4
    /* 4F954 8005F154 84030424 */   addiu     $a0, $zero, 0x384
    /* 4F958 8005F158 43050224 */  addiu      $v0, $zero, 0x543
  .L8005F15C:
    /* 4F95C 8005F15C 0C0002A6 */  sh         $v0, 0xC($s0)
  .L8005F160:
    /* 4F960 8005F160 01000292 */  lbu        $v0, 0x1($s0)
    /* 4F964 8005F164 00000000 */  nop
    /* 4F968 8005F168 02004224 */  addiu      $v0, $v0, 0x2
    /* 4F96C 8005F16C 7D7C0108 */  j          .L8005F1F4
    /* 4F970 8005F170 010002A2 */   sb        $v0, 0x1($s0)
  .L8005F174:
    /* 4F974 8005F174 01000292 */  lbu        $v0, 0x1($s0)
    /* 4F978 8005F178 00000000 */  nop
    /* 4F97C 8005F17C 01004224 */  addiu      $v0, $v0, 0x1
    /* 4F980 8005F180 7D7C0108 */  j          .L8005F1F4
    /* 4F984 8005F184 010002A2 */   sb        $v0, 0x1($s0)
  glabel .L8005F188
    /* 4F988 8005F188 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4F98C 8005F18C 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4F990 8005F190 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 4F994 8005F194 24104300 */  and        $v0, $v0, $v1
    /* 4F998 8005F198 17004014 */  bnez       $v0, .L8005F1F8
    /* 4F99C 8005F19C 21100000 */   addu      $v0, $zero, $zero
    /* 4F9A0 8005F1A0 01000382 */  lb         $v1, 0x1($s0)
    /* 4F9A4 8005F1A4 06000224 */  addiu      $v0, $zero, 0x6
    /* 4F9A8 8005F1A8 04006214 */  bne        $v1, $v0, .L8005F1BC
    /* 4F9AC 8005F1AC 00000000 */   nop
    /* 4F9B0 8005F1B0 0C000496 */  lhu        $a0, 0xC($s0)
    /* 4F9B4 8005F1B4 3477000C */  jal        Sce_flag_off
    /* 4F9B8 8005F1B8 00000000 */   nop
  .L8005F1BC:
    /* 4F9BC 8005F1BC 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4F9C0 8005F1C0 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4F9C4 8005F1C4 FFBF0324 */  addiu      $v1, $zero, -0x4001
    /* 4F9C8 8005F1C8 24104300 */  and        $v0, $v0, $v1
    /* 4F9CC 8005F1CC 0A80013C */  lui        $at, %hi(Moji_flag)
    /* 4F9D0 8005F1D0 588A22AC */  sw         $v0, %lo(Moji_flag)($at)
    /* 4F9D4 8005F1D4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4F9D8 8005F1D8 7D7C0108 */  j          .L8005F1F4
    /* 4F9DC 8005F1DC 010002A2 */   sb        $v0, 0x1($s0)
  glabel .L8005F1E0
    /* 4F9E0 8005F1E0 0E76000C */  jal        Cd_read_sync2
    /* 4F9E4 8005F1E4 00000000 */   nop
    /* 4F9E8 8005F1E8 03004014 */  bnez       $v0, .L8005F1F8
    /* 4F9EC 8005F1EC 21100000 */   addu      $v0, $zero, $zero
    /* 4F9F0 8005F1F0 000000AE */  sw         $zero, 0x0($s0)
  .L8005F1F4:
    /* 4F9F4 8005F1F4 21100000 */  addu       $v0, $zero, $zero
  .L8005F1F8:
    /* 4F9F8 8005F1F8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4F9FC 8005F1FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4FA00 8005F200 1000B08F */  lw         $s0, 0x10($sp)
    /* 4FA04 8005F204 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4FA08 8005F208 0800E003 */  jr         $ra
    /* 4FA0C 8005F20C 00000000 */   nop
.size func_8005F0AC, . - func_8005F0AC
