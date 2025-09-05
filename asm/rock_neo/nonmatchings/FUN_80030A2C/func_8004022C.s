.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004022C
    /* 30A2C 8004022C 21808000 */  addu       $s0, $a0, $zero
    /* 30A30 80040230 1800BFAF */  sw         $ra, 0x18($sp)
    /* 30A34 80040234 1400B1AF */  sw         $s1, 0x14($sp)
    /* 30A38 80040238 1C011196 */  lhu        $s1, 0x11C($s0)
    /* 30A3C 8004023C DA02010C */  jal        func_80040B68
    /* 30A40 80040240 21280000 */   addu      $a1, $zero, $zero
    /* 30A44 80040244 0C80033C */  lui        $v1, %hi(Game_work + 0x83)
    /* 30A48 80040248 931B6390 */  lbu        $v1, %lo(Game_work + 0x83)($v1)
.size func_8004022C, . - func_8004022C
