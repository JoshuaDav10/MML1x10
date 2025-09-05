.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058CC8
    /* 494C8 80058CC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 494CC 80058CCC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 494D0 80058CD0 21808000 */  addu       $s0, $a0, $zero
    /* 494D4 80058CD4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 494D8 80058CD8 BE000396 */  lhu        $v1, 0xBE($s0)
    /* 494DC 80058CDC 00000000 */  nop
    /* 494E0 80058CE0 01006224 */  addiu      $v0, $v1, 0x1
    /* 494E4 80058CE4 80180300 */  sll        $v1, $v1, 2
    /* 494E8 80058CE8 BE0002A6 */  sh         $v0, 0xBE($s0)
    /* 494EC 80058CEC 1400028E */  lw         $v0, 0x14($s0)
    /* 494F0 80058CF0 21187000 */  addu       $v1, $v1, $s0
    /* 494F4 80058CF4 03004224 */  addiu      $v0, $v0, 0x3
    /* 494F8 80058CF8 180062AC */  sw         $v0, 0x18($v1)
    /* 494FC 80058CFC 1400048E */  lw         $a0, 0x14($s0)
    /* 49500 80058D00 0451010C */  jal        func_80054410
    /* 49504 80058D04 01008424 */   addiu     $a0, $a0, 0x1
    /* 49508 80058D08 9676000C */  jal        Sce_flag_test
    /* 4950C 80058D0C FFFF4430 */   andi      $a0, $v0, 0xFFFF
    /* 49510 80058D10 0B004010 */  beqz       $v0, .L80058D40
    /* 49514 80058D14 00000000 */   nop
    /* 49518 80058D18 1400048E */  lw         $a0, 0x14($s0)
    /* 4951C 80058D1C 0451010C */  jal        func_80054410
    /* 49520 80058D20 01008424 */   addiu     $a0, $a0, 0x1
    /* 49524 80058D24 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 49528 80058D28 80100200 */  sll        $v0, $v0, 2
    /* 4952C 80058D2C 0980013C */  lui        $at, (0x80090000 >> 16)
.size func_80058CC8, . - func_80058CC8
