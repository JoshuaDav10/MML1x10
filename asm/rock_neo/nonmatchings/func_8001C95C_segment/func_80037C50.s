.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037C50
    /* 28450 80037C50 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 28454 80037C54 0008822C */  sltiu      $v0, $a0, 0x800
    /* 28458 80037C58 1D004010 */  beqz       $v0, .L80037CD0
    /* 2845C 80037C5C 40100400 */   sll       $v0, $a0, 1
    /* 28460 80037C60 21104400 */  addu       $v0, $v0, $a0
    /* 28464 80037C64 80100200 */  sll        $v0, $v0, 2
    /* 28468 80037C68 00800634 */  ori        $a2, $zero, 0x8000
    /* 2846C 80037C6C C0048597 */  lhu        $a1, %gp_rel(D_80097D24)($gp)
    /* 28470 80037C70 1680013C */  lui        $at, %hi(STAGE_IDX_LOAD_ADDRESS)
    /* 28474 80037C74 21084100 */  addu       $at, $v0, $at
    /* 28478 80037C78 00C02384 */  lh         $v1, %lo(STAGE_IDX_LOAD_ADDRESS)($at)
    /* 2847C 80037C7C 801F043C */  lui        $a0, (0x1F800040 >> 16)
    /* 28480 80037C80 40008490 */  lbu        $a0, (0x1F800040 & 0xFFFF)($a0)
    /* 28484 80037C84 1680013C */  lui        $at, %hi(D_8015C004)
    /* 28488 80037C88 21084100 */  addu       $at, $v0, $at
    /* 2848C 80037C8C 04C02284 */  lh         $v0, %lo(D_8015C004)($at)
    /* 28490 80037C90 0100A724 */  addiu      $a3, $a1, 0x1
    /* 28494 80037C94 40280500 */  sll        $a1, $a1, 1
    /* 28498 80037C98 21186600 */  addu       $v1, $v1, $a2
    /* 2849C 80037C9C 431A0300 */  sra        $v1, $v1, 9
    /* 284A0 80037CA0 23186400 */  subu       $v1, $v1, $a0
    /* 284A4 80037CA4 21104600 */  addu       $v0, $v0, $a2
    /* 284A8 80037CA8 801F043C */  lui        $a0, (0x1F800041 >> 16)
    /* 284AC 80037CAC 41008490 */  lbu        $a0, (0x1F800041 & 0xFFFF)($a0)
    /* 284B0 80037CB0 43120200 */  sra        $v0, $v0, 9
    /* 284B4 80037CB4 C00487A7 */  sh         $a3, %gp_rel(D_80097D24)($gp)
    /* 284B8 80037CB8 23104400 */  subu       $v0, $v0, $a0
    /* 284BC 80037CBC 00120200 */  sll        $v0, $v0, 8
    /* 284C0 80037CC0 21186200 */  addu       $v1, $v1, $v0
    /* 284C4 80037CC4 0A80013C */  lui        $at, %hi(D_8009A378)
    /* 284C8 80037CC8 21082500 */  addu       $at, $at, $a1
    /* 284CC 80037CCC 78A323A4 */  sh         $v1, %lo(D_8009A378)($at)
  .L80037CD0:
    /* 284D0 80037CD0 0800E003 */  jr         $ra
    /* 284D4 80037CD4 00000000 */   nop
.size func_80037C50, . - func_80037C50
