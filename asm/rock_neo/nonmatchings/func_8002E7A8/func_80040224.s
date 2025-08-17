.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040224
    /* 30A24 80040224 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 30A28 80040228 1000B0AF */  sw         $s0, 0x10($sp)
    /* 30A2C 8004022C 21808000 */  addu       $s0, $a0, $zero
    /* 30A30 80040230 1800BFAF */  sw         $ra, 0x18($sp)
    /* 30A34 80040234 1400B1AF */  sw         $s1, 0x14($sp)
    /* 30A38 80040238 1C011196 */  lhu        $s1, 0x11C($s0)
    /* 30A3C 8004023C DA02010C */  jal        func_80040B68
    /* 30A40 80040240 21280000 */   addu      $a1, $zero, $zero
    /* 30A44 80040244 0C80033C */  lui        $v1, %hi(Game_work + 0x83)
    /* 30A48 80040248 931B6390 */  lbu        $v1, %lo(Game_work + 0x83)($v1)
    /* 30A4C 8004024C 01000224 */  addiu      $v0, $zero, 0x1
    /* 30A50 80040250 0A006210 */  beq        $v1, $v0, .L8004027C
    /* 30A54 80040254 00000000 */   nop
    /* 30A58 80040258 40010296 */  lhu        $v0, 0x140($s0)
    /* 30A5C 8004025C 00000000 */  nop
    /* 30A60 80040260 24102202 */  and        $v0, $s1, $v0
    /* 30A64 80040264 05004014 */  bnez       $v0, .L8004027C
    /* 30A68 80040268 00000000 */   nop
    /* 30A6C 8004026C 090000A2 */  sb         $zero, 0x9($s0)
    /* 30A70 80040270 2BE5000C */  jal        func_800394AC
    /* 30A74 80040274 0A0000A6 */   sh        $zero, 0xA($s0)
    /* 30A78 80040278 080100A6 */  sh         $zero, 0x108($s0)
  .L8004027C:
    /* 30A7C 8004027C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 30A80 80040280 1400B18F */  lw         $s1, 0x14($sp)
    /* 30A84 80040284 1000B08F */  lw         $s0, 0x10($sp)
    /* 30A88 80040288 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30A8C 8004028C 0800E003 */  jr         $ra
    /* 30A90 80040290 00000000 */   nop
.size func_80040224, . - func_80040224
