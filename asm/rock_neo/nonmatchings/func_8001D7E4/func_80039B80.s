.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039B80
    /* 2A380 80039B80 0A80033C */  lui        $v1, %hi(D_800A3960)
    /* 2A384 80039B84 60396390 */  lbu        $v1, %lo(D_800A3960)($v1)
    /* 2A388 80039B88 00000000 */  nop
    /* 2A38C 80039B8C 03006010 */  beqz       $v1, .L80039B9C
    /* 2A390 80039B90 21100000 */   addu      $v0, $zero, $zero
    /* 2A394 80039B94 0A80023C */  lui        $v0, %hi(D_800A396C)
    /* 2A398 80039B98 6C39428C */  lw         $v0, %lo(D_800A396C)($v0)
  .L80039B9C:
    /* 2A39C 80039B9C 0800E003 */  jr         $ra
    /* 2A3A0 80039BA0 00000000 */   nop
.size func_80039B80, . - func_80039B80
