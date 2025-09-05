.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DB3C
    /* 4E33C 8005DB3C C0100200 */  sll        $v0, $v0, 3
    /* 4E340 8005DB40 21205000 */  addu       $a0, $v0, $s0
    /* 4E344 8005DB44 FA048284 */  lh         $v0, 0x4FA($a0)
    /* 4E348 8005DB48 00000000 */  nop
    /* 4E34C 8005DB4C 21184000 */  addu       $v1, $v0, $zero
    /* 4E350 8005DB50 10004224 */  addiu      $v0, $v0, 0x10
    /* 4E354 8005DB54 2A104500 */  slt        $v0, $v0, $a1
    /* 4E358 8005DB58 04004014 */  bnez       $v0, .L8005DB6C
    /* 4E35C 8005DB5C 10006224 */   addiu     $v0, $v1, 0x10
    /* 4E360 8005DB60 FA0485A4 */  sh         $a1, 0x4FA($a0)
    /* 4E364 8005DB64 E7760108 */  j          .L8005DB9C
    /* 4E368 8005DB68 01000224 */   addiu     $v0, $zero, 0x1
  .L8005DB6C:
    /* 4E36C 8005DB6C FA0482A4 */  sh         $v0, 0x4FA($a0)
    /* 4E370 8005DB70 E7760108 */  j          .L8005DB9C
    /* 4E374 8005DB74 21100000 */   addu      $v0, $zero, $zero
  .L8005DB78:
    /* 4E378 8005DB78 0B80023C */  lui        $v0, %hi(Player_work + 0x172)
    /* 4E37C 8005DB7C 22534280 */  lb         $v0, %lo(Player_work + 0x172)($v0)
    /* 4E380 8005DB80 00000000 */  nop
    /* 4E384 8005DB84 C0100200 */  sll        $v0, $v0, 3
    /* 4E388 8005DB88 21105000 */  addu       $v0, $v0, $s0
    /* 4E38C 8005DB8C FA044284 */  lh         $v0, 0x4FA($v0)
    /* 4E390 8005DB90 00000000 */  nop
    /* 4E394 8005DB94 26104500 */  xor        $v0, $v0, $a1
    /* 4E398 8005DB98 0100422C */  sltiu      $v0, $v0, 0x1
  .L8005DB9C:
    /* 4E39C 8005DB9C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4E3A0 8005DBA0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4E3A4 8005DBA4 1800B08F */  lw         $s0, 0x18($sp)
    /* 4E3A8 8005DBA8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4E3AC 8005DBAC 0800E003 */  jr         $ra
    /* 4E3B0 8005DBB0 00000000 */   nop
.size func_8005DB3C, . - func_8005DB3C
