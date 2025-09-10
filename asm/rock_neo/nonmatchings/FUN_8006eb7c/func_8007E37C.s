.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E37C
    /* 6EB7C 8007E37C 2128B100 */  addu       $a1, $a1, $s1
    /* 6EB80 8007E380 0000A2AC */  sw         $v0, 0x0($a1)
    /* 6EB84 8007E384 80100800 */  sll        $v0, $t0, 2
    /* 6EB88 8007E388 1400A38F */  lw         $v1, 0x14($sp)
    /* 6EB8C 8007E38C 21105100 */  addu       $v0, $v0, $s1
    /* 6EB90 8007E390 000043AC */  sw         $v1, 0x0($v0)
    /* 6EB94 8007E394 1000A297 */  lhu        $v0, 0x10($sp)
    /* 6EB98 8007E398 08000396 */  lhu        $v1, 0x8($s0)
    /* 6EB9C 8007E39C 00000000 */  nop
    /* 6EBA0 8007E3A0 21104300 */  addu       $v0, $v0, $v1
    /* 6EBA4 8007E3A4 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 6EBA8 8007E3A8 1200A297 */  lhu        $v0, 0x12($sp)
    /* 6EBAC 8007E3AC 0A000396 */  lhu        $v1, 0xA($s0)
    /* 6EBB0 8007E3B0 01000825 */  addiu      $t0, $t0, 0x1
    /* 6EBB4 8007E3B4 21104300 */  addu       $v0, $v0, $v1
    /* 6EBB8 8007E3B8 06F90108 */  j          .L8007E418
    /* 6EBBC 8007E3BC 1200A2A7 */   sh        $v0, 0x12($sp)
  .L8007E3C0:
    /* 6EBC0 8007E3C0 01000825 */  addiu      $t0, $t0, 0x1
.size func_8007E37C, . - func_8007E37C
