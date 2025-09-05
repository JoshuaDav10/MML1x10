.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047CD8
    /* 384D8 80047CD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 384DC 80047CDC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 384E0 80047CE0 0A008290 */  lbu        $v0, 0xA($a0)
    /* 384E4 80047CE4 00000000 */  nop
    /* 384E8 80047CE8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 384EC 80047CEC 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 384F0 80047CF0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 384F4 80047CF4 25004014 */  bnez       $v0, .L80047D8C
    /* 384F8 80047CF8 00000000 */   nop
    /* 384FC 80047CFC 09008290 */  lbu        $v0, 0x9($a0)
    /* 38500 80047D00 00000000 */  nop
    /* 38504 80047D04 01004224 */  addiu      $v0, $v0, 0x1
    /* 38508 80047D08 090082A0 */  sb         $v0, 0x9($a0)
    /* 3850C 80047D0C FF004230 */  andi       $v0, $v0, 0xFF
    /* 38510 80047D10 C0180200 */  sll        $v1, $v0, 3
    /* 38514 80047D14 0980013C */  lui        $at, %hi(D_8008A6CD)
    /* 38518 80047D18 21082300 */  addu       $at, $at, $v1
    /* 3851C 80047D1C CDA62290 */  lbu        $v0, %lo(D_8008A6CD)($at)
    /* 38520 80047D20 00000000 */  nop
    /* 38524 80047D24 05004014 */  bnez       $v0, .L80047D3C
    /* 38528 80047D28 0A0082A0 */   sb        $v0, 0xA($a0)
    /* 3852C 80047D2C 62C6000C */  jal        func_80031988
.size func_80047CD8, . - func_80047CD8
