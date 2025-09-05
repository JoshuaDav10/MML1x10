.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005016C
    /* 4096C 8005016C 0400E2A4 */  sh         $v0, 0x4($a3)
    /* 40970 80050170 1000A297 */  lhu        $v0, 0x10($sp)
    /* 40974 80050174 1400A397 */  lhu        $v1, 0x14($sp)
    /* 40978 80050178 23100200 */  negu       $v0, $v0
    /* 4097C 8005017C 23180300 */  negu       $v1, $v1
    /* 40980 80050180 801F013C */  lui        $at, (0x1F80010C >> 16)
    /* 40984 80050184 0C0122A4 */  sh         $v0, (0x1F80010C & 0xFFFF)($at)
    /* 40988 80050188 801F013C */  lui        $at, (0x1F800110 >> 16)
    /* 4098C 8005018C 100123A4 */  sh         $v1, (0x1F800110 & 0xFFFF)($at)
    /* 40990 80050190 DD42010C */  jal        func_80050B74
    /* 40994 80050194 1000A427 */   addiu     $a0, $sp, 0x10
    /* 40998 80050198 ED42010C */  jal        func_80050BB4
    /* 4099C 8005019C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 409A0 800501A0 76400108 */  j          .L800501D8
    /* 409A4 800501A4 21100000 */   addu      $v0, $zero, $zero
  .L800501A8:
    /* 409A8 800501A8 0200E394 */  lhu        $v1, 0x2($a3)
    /* 409AC 800501AC 1200A497 */  lhu        $a0, 0x12($sp)
    /* 409B0 800501B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 409B4 800501B4 21186400 */  addu       $v1, $v1, $a0
.size func_8005016C, . - func_8005016C
