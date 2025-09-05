.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FCBC
    /* 504BC 8005FCBC 020002A2 */  sb         $v0, 0x2($s0)
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
.size func_8005FCBC, . - func_8005FCBC
