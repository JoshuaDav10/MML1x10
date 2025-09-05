.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045450
    /* 35C50 80045450 ECFF4224 */  addiu      $v0, $v0, -0x14
    /* 35C54 80045454 4BE8010C */  jal        rcos
    /* 35C58 80045458 320002A6 */   sh        $v0, 0x32($s0)
    /* 35C5C 8004545C 23100200 */  negu       $v0, $v0
    /* 35C60 80045460 42120200 */  srl        $v0, $v0, 9
    /* 35C64 80045464 340002A6 */  sh         $v0, 0x34($s0)
    /* 35C68 80045468 05000224 */  addiu      $v0, $zero, 0x5
    /* 35C6C 8004546C 2C0000A6 */  sh         $zero, 0x2C($s0)
    /* 35C70 80045470 280000A6 */  sh         $zero, 0x28($s0)
    /* 35C74 80045474 2A0002A6 */  sh         $v0, 0x2A($s0)
    /* 35C78 80045478 1400BF8F */  lw         $ra, 0x14($sp)
    /* 35C7C 8004547C 1000B08F */  lw         $s0, 0x10($sp)
    /* 35C80 80045480 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35C84 80045484 0800E003 */  jr         $ra
    /* 35C88 80045488 00000000 */   nop
.size func_80045450, . - func_80045450
