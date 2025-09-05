.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064510
    /* 54D10 80064510 9B910108 */  j          .L8006466C
    /* 54D14 80064514 28007326 */   addiu     $s3, $s3, 0x28
  glabel .L80064518
    /* 54D18 80064518 05000224 */  addiu      $v0, $zero, 0x5
    /* 54D1C 8006451C 05002216 */  bne        $s1, $v0, .L80064534
    /* 54D20 80064520 00000000 */   nop
    /* 54D24 80064524 0C80163C */  lui        $s6, %hi(Game_work + 0x7C)
    /* 54D28 80064528 8C1BD692 */  lbu        $s6, %lo(Game_work + 0x7C)($s6)
    /* 54D2C 8006452C 4F910108 */  j          .L8006453C
    /* 54D30 80064530 00000000 */   nop
  .L80064534:
    /* 54D34 80064534 0C80163C */  lui        $s6, %hi(Game_work + 0x7D)
    /* 54D38 80064538 8D1BD692 */  lbu        $s6, %lo(Game_work + 0x7D)($s6)
  .L8006453C:
    /* 54D3C 8006453C 4B008012 */  beqz       $s4, .L8006466C
    /* 54D40 80064540 0A00C22E */   sltiu     $v0, $s6, 0xA
    /* 54D44 80064544 49004014 */  bnez       $v0, .L8006466C
    /* 54D48 80064548 00000000 */   nop
    /* 54D4C 8006454C CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 54D50 80064550 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 54D54 80064554 1900C202 */  multu      $s6, $v0
    /* 54D58 80064558 28007326 */  addiu      $s3, $s3, 0x28
    /* 54D5C 8006455C 0000A38E */  lw         $v1, 0x0($s5)
    /* 54D60 80064560 10380000 */  mfhi       $a3
    /* 54D64 80064564 C2100700 */  srl        $v0, $a3, 3
    /* 54D68 80064568 C0100200 */  sll        $v0, $v0, 3
    /* 54D6C 8006456C 21186200 */  addu       $v1, $v1, $v0
    /* 54D70 80064570 9A910108 */  j          .L80064668
    /* 54D74 80064574 000043AE */   sw        $v1, 0x0($s2)
  glabel .L80064578
    /* 54D78 80064578 06000224 */  addiu      $v0, $zero, 0x6
    /* 54D7C 8006457C 05002216 */  bne        $s1, $v0, .L80064594
.size func_80064510, . - func_80064510
