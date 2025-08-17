.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001997C
    /* A17C 8001997C 0C80033C */  lui        $v1, %hi(Game_work + 0x53)
    /* A180 80019980 631B6380 */  lb         $v1, %lo(Game_work + 0x53)($v1)
    /* A184 80019984 01000224 */  addiu      $v0, $zero, 0x1
    /* A188 80019988 02006214 */  bne        $v1, $v0, .L80019994
    /* A18C 8001998C 08010224 */   addiu     $v0, $zero, 0x108
    /* A190 80019990 29000224 */  addiu      $v0, $zero, 0x29
  .L80019994:
    /* A194 80019994 0880013C */  lui        $at, %hi(D_80082274)
    /* A198 80019998 742222A4 */  sh         $v0, %lo(D_80082274)($at)
    /* A19C 8001999C 0800E003 */  jr         $ra
    /* A1A0 800199A0 00000000 */   nop
.size func_8001997C, . - func_8001997C
