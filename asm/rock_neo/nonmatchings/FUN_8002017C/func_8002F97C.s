.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F97C
    /* 2017C 8002F97C 20008294 */  lhu        $v0, 0x20($a0)
    /* 20180 8002F980 0400A394 */  lhu        $v1, 0x4($a1)
    /* 20184 8002F984 00000000 */  nop
    /* 20188 8002F988 21104300 */  addu       $v0, $v0, $v1
    /* 2018C 8002F98C 200082A4 */  sh         $v0, 0x20($a0)
  .L8002F990:
    /* 20190 8002F990 0800E003 */  jr         $ra
    /* 20194 8002F994 00000000 */   nop
.size func_8002F97C, . - func_8002F97C
