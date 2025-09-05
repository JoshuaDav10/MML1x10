.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040AEC
    /* 312EC 80040AEC 01000324 */  addiu      $v1, $zero, 0x1
    /* 312F0 80040AF0 0C80023C */  lui        $v0, %hi(Game_work + 0x83)
    /* 312F4 80040AF4 931B4290 */  lbu        $v0, %lo(Game_work + 0x83)($v0)
    /* 312F8 80040AF8 1C018594 */  lhu        $a1, 0x11C($a0)
    /* 312FC 80040AFC 06004310 */  beq        $v0, $v1, .L80040B18
    /* 31300 80040B00 01000224 */   addiu     $v0, $zero, 0x1
    /* 31304 80040B04 40018294 */  lhu        $v0, 0x140($a0)
    /* 31308 80040B08 00000000 */  nop
    /* 3130C 80040B0C 24104500 */  and        $v0, $v0, $a1
    /* 31310 80040B10 05004010 */  beqz       $v0, .L80040B28
    /* 31314 80040B14 01000224 */   addiu     $v0, $zero, 0x1
  .L80040B18:
    /* 31318 80040B18 0E000324 */  addiu      $v1, $zero, 0xE
    /* 3131C 80040B1C 090083A0 */  sb         $v1, 0x9($a0)
    /* 31320 80040B20 CB020108 */  j          .L80040B2C
    /* 31324 80040B24 0A0080A4 */   sh        $zero, 0xA($a0)
  .L80040B28:
    /* 31328 80040B28 21100000 */  addu       $v0, $zero, $zero
  .L80040B2C:
    /* 3132C 80040B2C 0800E003 */  jr         $ra
    /* 31330 80040B30 00000000 */   nop
.size func_80040AEC, . - func_80040AEC
