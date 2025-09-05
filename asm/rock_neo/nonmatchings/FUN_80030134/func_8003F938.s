.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F938
    /* 30138 8003F938 34010296 */  lhu        $v0, 0x134($s0)
    /* 3013C 8003F93C 00000000 */  nop
    /* 30140 8003F940 24105100 */  and        $v0, $v0, $s1
    /* 30144 8003F944 07004014 */  bnez       $v0, .L8003F964
    /* 30148 8003F948 02000224 */   addiu     $v0, $zero, 0x2
    /* 3014C 8003F94C 090002A2 */  sb         $v0, 0x9($s0)
    /* 30150 8003F950 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 30154 8003F954 59FE0008 */  j          .L8003F964
.size func_8003F938, . - func_8003F938
