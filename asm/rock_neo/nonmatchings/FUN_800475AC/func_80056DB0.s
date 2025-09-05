.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056DB0
    /* 475B0 80056DB0 0F004224 */  addiu      $v0, $v0, 0xF
  .L80056DB4:
    /* 475B4 80056DB4 03110200 */  sra        $v0, $v0, 4
    /* 475B8 80056DB8 85000324 */  addiu      $v1, $zero, 0x85
    /* 475BC 80056DBC 23186200 */  subu       $v1, $v1, $v0
    /* 475C0 80056DC0 40180300 */  sll        $v1, $v1, 1
    /* 475C4 80056DC4 21188300 */  addu       $v1, $a0, $v1
    /* 475C8 80056DC8 BAFF6294 */  lhu        $v0, -0x46($v1)
    /* 475CC 80056DCC 00000000 */  nop
    /* 475D0 80056DD0 000082A4 */  sh         $v0, 0x0($a0)
  .L80056DD4:
    /* 475D4 80056DD4 0C80033C */  lui        $v1, %hi(Game_work + 0x7D)
    /* 475D8 80056DD8 8D1B6390 */  lbu        $v1, %lo(Game_work + 0x7D)($v1)
.size func_80056DB0, . - func_80056DB0
