.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800435BC
    /* 33DBC 800435BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33DC0 800435C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33DC4 800435C4 21808000 */  addu       $s0, $a0, $zero
    /* 33DC8 800435C8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 33DCC 800435CC 0C000492 */  lbu        $a0, 0xC($s0)
    /* 33DD0 800435D0 A5D8000C */  jal        func_80036294
    /* 33DD4 800435D4 00000000 */   nop
    /* 33DD8 800435D8 21200002 */  addu       $a0, $s0, $zero
    /* 33DDC 800435DC 4CC6000C */  jal        func_80031930
    /* 33DE0 800435E0 980140AC */   sw        $zero, 0x198($v0)
    /* 33DE4 800435E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 33DE8 800435E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 33DEC 800435EC 1800BD27 */  addiu      $sp, $sp, 0x18
.size func_800435BC, . - func_800435BC
