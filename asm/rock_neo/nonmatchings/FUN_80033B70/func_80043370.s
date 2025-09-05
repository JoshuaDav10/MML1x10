.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043370
    /* 33B70 80043370 00140200 */  sll        $v0, $v0, 16
    /* 33B74 80043374 03140200 */  sra        $v0, $v0, 16
    /* 33B78 80043378 21386000 */  addu       $a3, $v1, $zero
    /* 33B7C 8004337C 2A186200 */  slt        $v1, $v1, $v0
    /* 33B80 80043380 02006010 */  beqz       $v1, .L8004338C
    /* 33B84 80043384 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 33B88 80043388 6E00C7A4 */  sh         $a3, 0x6E($a2)
  .L8004338C:
    /* 33B8C 8004338C 09008104 */  bgez       $a0, .L800433B4
    /* 33B90 80043390 00000000 */   nop
    /* 33B94 80043394 0700A014 */  bnez       $a1, .L800433B4
    /* 33B98 80043398 00000000 */   nop
    /* 33B9C 8004339C 0C80033C */  lui        $v1, %hi(Game_work + 0x4C)
    /* 33BA0 800433A0 5C1B6324 */  addiu      $v1, $v1, %lo(Game_work + 0x4C)
    /* 33BA4 800433A4 0000628C */  lw         $v0, 0x0($v1)
    /* 33BA8 800433A8 00000000 */  nop
    /* 33BAC 800433AC 23104400 */  subu       $v0, $v0, $a0
    /* 33BB0 800433B0 000062AC */  sw         $v0, 0x0($v1)
.size func_80043370, . - func_80043370
