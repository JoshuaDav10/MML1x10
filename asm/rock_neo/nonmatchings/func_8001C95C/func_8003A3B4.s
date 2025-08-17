.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A3B4
    /* 2ABB4 8003A3B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2ABB8 8003A3B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2ABBC 8003A3BC 21480000 */  addu       $t1, $zero, $zero
    /* 2ABC0 8003A3C0 FF00083C */  lui        $t0, (0xFFFFFF >> 16)
    /* 2ABC4 8003A3C4 FFFF0835 */  ori        $t0, $t0, (0xFFFFFF & 0xFFFF)
    /* 2ABC8 8003A3C8 21380000 */  addu       $a3, $zero, $zero
  .L8003A3CC:
    /* 2ABCC 8003A3CC 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2ABD0 8003A3D0 2108E100 */  addu       $at, $a3, $at
    /* 2ABD4 8003A3D4 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2ABD8 8003A3D8 00000000 */  nop
    /* 2ABDC 8003A3DC 1C004010 */  beqz       $v0, .L8003A450
    /* 2ABE0 8003A3E0 00000000 */   nop
    /* 2ABE4 8003A3E4 2130E000 */  addu       $a2, $a3, $zero
    /* 2ABE8 8003A3E8 21280000 */  addu       $a1, $zero, $zero
  .L8003A3EC:
    /* 2ABEC 8003A3EC 1480013C */  lui        $at, %hi(D_8013A004)
    /* 2ABF0 8003A3F0 2108A100 */  addu       $at, $a1, $at
    /* 2ABF4 8003A3F4 04A0238C */  lw         $v1, %lo(D_8013A004)($at)
    /* 2ABF8 8003A3F8 00000000 */  nop
    /* 2ABFC 8003A3FC 14006010 */  beqz       $v1, .L8003A450
    /* 2AC00 8003A400 24186800 */   and       $v1, $v1, $t0
    /* 2AC04 8003A404 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2AC08 8003A408 2108C100 */  addu       $at, $a2, $at
    /* 2AC0C 8003A40C 08C0248C */  lw         $a0, %lo(D_8015C008)($at)
    /* 2AC10 8003A410 00000000 */  nop
    /* 2AC14 8003A414 24108800 */  and        $v0, $a0, $t0
    /* 2AC18 8003A418 09006214 */  bne        $v1, $v0, .L8003A440
    /* 2AC1C 8003A41C 00000000 */   nop
    /* 2AC20 8003A420 1800828C */  lw         $v0, 0x18($a0)
    /* 2AC24 8003A424 00000000 */  nop
    /* 2AC28 8003A428 02004294 */  lhu        $v0, 0x2($v0)
    /* 2AC2C 8003A42C 1680013C */  lui        $at, %hi(D_8015C006)
    /* 2AC30 8003A430 2108C100 */  addu       $at, $a2, $at
    /* 2AC34 8003A434 06C022A4 */  sh         $v0, %lo(D_8015C006)($at)
    /* 2AC38 8003A438 15E90008 */  j          .L8003A454
    /* 2AC3C 8003A43C 01002925 */   addiu     $t1, $t1, 0x1
  .L8003A440:
    /* 2AC40 8003A440 0800A524 */  addiu      $a1, $a1, 0x8
    /* 2AC44 8003A444 0010A228 */  slti       $v0, $a1, 0x1000
    /* 2AC48 8003A448 E8FF4014 */  bnez       $v0, .L8003A3EC
    /* 2AC4C 8003A44C 00000000 */   nop
  .L8003A450:
    /* 2AC50 8003A450 01002925 */  addiu      $t1, $t1, 0x1
  .L8003A454:
    /* 2AC54 8003A454 00082229 */  slti       $v0, $t1, 0x800
    /* 2AC58 8003A458 DCFF4014 */  bnez       $v0, .L8003A3CC
    /* 2AC5C 8003A45C 0C00E724 */   addiu     $a3, $a3, 0xC
    /* 2AC60 8003A460 20E9000C */  jal        func_8003A480
    /* 2AC64 8003A464 00000000 */   nop
    /* 2AC68 8003A468 4EE9000C */  jal        func_8003A538
    /* 2AC6C 8003A46C 00000000 */   nop
    /* 2AC70 8003A470 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2AC74 8003A474 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2AC78 8003A478 0800E003 */  jr         $ra
    /* 2AC7C 8003A47C 00000000 */   nop
.size func_8003A3B4, . - func_8003A3B4
