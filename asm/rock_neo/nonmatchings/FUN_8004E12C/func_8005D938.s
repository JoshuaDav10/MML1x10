.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D938
    /* 4E138 8005D938 0C80023C */  lui        $v0, %hi(D_800BBD94)
    /* 4E13C 8005D93C 94BD4284 */  lh         $v0, %lo(D_800BBD94)($v0)
    /* 4E140 8005D940 00000000 */  nop
    /* 4E144 8005D944 0300401C */  bgtz       $v0, .L8005D954
    /* 4E148 8005D948 21100000 */   addu      $v0, $zero, $zero
    /* 4E14C 8005D94C 0C80023C */  lui        $v0, %hi(D_800BBD87)
    /* 4E150 8005D950 87BD4290 */  lbu        $v0, %lo(D_800BBD87)($v0)
  .L8005D954:
    /* 4E154 8005D954 0800E003 */  jr         $ra
    /* 4E158 8005D958 00000000 */   nop
.size func_8005D938, . - func_8005D938
