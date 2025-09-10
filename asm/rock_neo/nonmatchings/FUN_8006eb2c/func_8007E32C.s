.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E32C
    /* 6EB2C 8007E32C 01000825 */  addiu      $t0, $t0, 0x1
    /* 6EB30 8007E330 08000296 */  lhu        $v0, 0x8($s0)
    /* 6EB34 8007E334 2130D100 */  addu       $a2, $a2, $s1
    /* 6EB38 8007E338 23106200 */  subu       $v0, $v1, $v0
    /* 6EB3C 8007E33C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 6EB40 8007E340 1200A297 */  lhu        $v0, 0x12($sp)
    /* 6EB44 8007E344 0A000396 */  lhu        $v1, 0xA($s0)
    /* 6EB48 8007E348 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 6EB4C 8007E34C 23104300 */  subu       $v0, $v0, $v1
    /* 6EB50 8007E350 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 6EB54 8007E354 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 6EB58 8007E358 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 6EB5C 8007E35C 00140200 */  sll        $v0, $v0, 16
    /* 6EB60 8007E360 001A0300 */  sll        $v1, $v1, 8
    /* 6EB64 8007E364 25186400 */  or         $v1, $v1, $a0
    /* 6EB68 8007E368 19000492 */  lbu        $a0, 0x19($s0)
    /* 6EB6C 8007E36C 25104300 */  or         $v0, $v0, $v1
    /* 6EB70 8007E370 25104400 */  or         $v0, $v0, $a0
    /* 6EB74 8007E374 0000C2AC */  sw         $v0, 0x0($a2)
    /* 6EB78 8007E378 1000A28F */  lw         $v0, 0x10($sp)
.size func_8007E32C, . - func_8007E32C
