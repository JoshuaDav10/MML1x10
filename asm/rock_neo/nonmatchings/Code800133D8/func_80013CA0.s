.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013CA0
    /* 44A0 80013CA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44A4 80013CA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 44A8 80013CA8 21808000 */  addu       $s0, $a0, $zero
    /* 44AC 80013CAC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 44B0 80013CB0 01000382 */  lb         $v1, 0x1($s0)
    /* 44B4 80013CB4 00000000 */  nop
    /* 44B8 80013CB8 0500622C */  sltiu      $v0, $v1, 0x5
    /* 44BC 80013CBC 4C004010 */  beqz       $v0, .L80013DF0
    /* 44C0 80013CC0 80100300 */   sll       $v0, $v1, 2
    /* 44C4 80013CC4 0180013C */  lui        $at, %hi(jtbl_800100A0)
    /* 44C8 80013CC8 21082200 */  addu       $at, $at, $v0
    /* 44CC 80013CCC A000228C */  lw         $v0, %lo(jtbl_800100A0)($at)
    /* 44D0 80013CD0 00000000 */  nop
    /* 44D4 80013CD4 08004000 */  jr         $v0
    /* 44D8 80013CD8 00000000 */   nop
  glabel .L80013CDC
    /* 44DC 80013CDC 0A80023C */  lui        $v0, %hi(D_80098A72)
    /* 44E0 80013CE0 728A4284 */  lh         $v0, %lo(D_80098A72)($v0)
    /* 44E4 80013CE4 00000000 */  nop
    /* 44E8 80013CE8 08004010 */  beqz       $v0, .L80013D0C
    /* 44EC 80013CEC 00000000 */   nop
    /* 44F0 80013CF0 EE4F000C */  jal        func_80013FB8
    /* 44F4 80013CF4 00000000 */   nop
    /* 44F8 80013CF8 0C000482 */  lb         $a0, 0xC($s0)
    /* 44FC 80013CFC 5B51000C */  jal        func_8001456C
    /* 4500 80013D00 00000000 */   nop
    /* 4504 80013D04 7C4F0008 */  j          .L80013DF0
    /* 4508 80013D08 00000000 */   nop
  .L80013D0C:
    /* 450C 80013D0C 0C5F000C */  jal        func_80017C30
    /* 4510 80013D10 01000424 */   addiu     $a0, $zero, 0x1
    /* 4514 80013D14 01000292 */  lbu        $v0, 0x1($s0)
    /* 4518 80013D18 00000000 */  nop
    /* 451C 80013D1C 01004224 */  addiu      $v0, $v0, 0x1
    /* 4520 80013D20 010002A2 */  sb         $v0, 0x1($s0)
  glabel .L80013D24
    /* 4524 80013D24 8C4E010C */  jal        MojiTaskKill
    /* 4528 80013D28 00000000 */   nop
    /* 452C 80013D2C 01000292 */  lbu        $v0, 0x1($s0)
    /* 4530 80013D30 84030324 */  addiu      $v1, $zero, 0x384
    /* 4534 80013D34 040003A6 */  sh         $v1, 0x4($s0)
    /* 4538 80013D38 01004224 */  addiu      $v0, $v0, 0x1
    /* 453C 80013D3C 7C4F0008 */  j          .L80013DF0
    /* 4540 80013D40 010002A2 */   sb        $v0, 0x1($s0)
  glabel .L80013D44
    /* 4544 80013D44 0C80013C */  lui        $at, %hi(D_800C0C2A)
    /* 4548 80013D48 2A0C20A4 */  sh         $zero, %lo(D_800C0C2A)($at)
    /* 454C 80013D4C 0C80013C */  lui        $at, %hi(D_800C0C26)
    /* 4550 80013D50 260C20A4 */  sh         $zero, %lo(D_800C0C26)($at)
    /* 4554 80013D54 7F99010C */  jal        func_800665FC
    /* 4558 80013D58 21200000 */   addu      $a0, $zero, $zero
    /* 455C 80013D5C F54D000C */  jal        func_800137D4
    /* 4560 80013D60 00000000 */   nop
    /* 4564 80013D64 D84F000C */  jal        func_80013F60
    /* 4568 80013D68 21200002 */   addu      $a0, $s0, $zero
    /* 456C 80013D6C 7C4F0008 */  j          .L80013DF0
    /* 4570 80013D70 00000000 */   nop
  glabel .L80013D74
    /* 4574 80013D74 7F99010C */  jal        func_800665FC
    /* 4578 80013D78 21200000 */   addu      $a0, $zero, $zero
    /* 457C 80013D7C 01000392 */  lbu        $v1, 0x1($s0)
    /* 4580 80013D80 00000000 */  nop
    /* 4584 80013D84 21186200 */  addu       $v1, $v1, $v0
    /* 4588 80013D88 F54D000C */  jal        func_800137D4
    /* 458C 80013D8C 010003A2 */   sb        $v1, 0x1($s0)
    /* 4590 80013D90 7C4F0008 */  j          .L80013DF0
    /* 4594 80013D94 00000000 */   nop
  glabel .L80013D98
    /* 4598 80013D98 0C80033C */  lui        $v1, %hi(Game_work + 0x82)
    /* 459C 80013D9C 921B6380 */  lb         $v1, %lo(Game_work + 0x82)($v1)
    /* 45A0 80013DA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 45A4 80013DA4 0B006214 */  bne        $v1, $v0, .L80013DD4
    /* 45A8 80013DA8 00000000 */   nop
    /* 45AC 80013DAC 0C5F000C */  jal        func_80017C30
    /* 45B0 80013DB0 16000424 */   addiu     $a0, $zero, 0x16
    /* 45B4 80013DB4 DA88010C */  jal        Sub_screen_back_ground_set
    /* 45B8 80013DB8 00000000 */   nop
    /* 45BC 80013DBC 0180043C */  lui        $a0, %hi(func_800155A4)
    /* 45C0 80013DC0 A4558424 */  addiu      $a0, $a0, %lo(func_800155A4)
    /* 45C4 80013DC4 DE4B000C */  jal        func_80012F78
    /* 45C8 80013DC8 00000000 */   nop
    /* 45CC 80013DCC 7C4F0008 */  j          .L80013DF0
    /* 45D0 80013DD0 00000000 */   nop
  .L80013DD4:
    /* 45D4 80013DD4 0C5F000C */  jal        func_80017C30
    /* 45D8 80013DD8 09000424 */   addiu     $a0, $zero, 0x9
    /* 45DC 80013DDC F54D000C */  jal        func_800137D4
    /* 45E0 80013DE0 00000000 */   nop
    /* 45E4 80013DE4 04000224 */  addiu      $v0, $zero, 0x4
    /* 45E8 80013DE8 000002A2 */  sb         $v0, 0x0($s0)
    /* 45EC 80013DEC 010000A2 */  sb         $zero, 0x1($s0)
  .L80013DF0:
    /* 45F0 80013DF0 DA88010C */  jal        Sub_screen_back_ground_set
    /* 45F4 80013DF4 00000000 */   nop
    /* 45F8 80013DF8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 45FC 80013DFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 4600 80013E00 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4604 80013E04 0800E003 */  jr         $ra
    /* 4608 80013E08 00000000 */   nop
.size func_80013CA0, . - func_80013CA0
