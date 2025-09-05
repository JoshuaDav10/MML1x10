.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041B8C
    /* 3238C 80041B8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 32390 80041B90 1000B0AF */  sw         $s0, 0x10($sp)
    /* 32394 80041B94 21808000 */  addu       $s0, $a0, $zero
    /* 32398 80041B98 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3239C 80041B9C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 323A0 80041BA0 09000392 */  lbu        $v1, 0x9($s0)
    /* 323A4 80041BA4 01001124 */  addiu      $s1, $zero, 0x1
    /* 323A8 80041BA8 28007110 */  beq        $v1, $s1, .L80041C4C
    /* 323AC 80041BAC 02006228 */   slti      $v0, $v1, 0x2
    /* 323B0 80041BB0 05004010 */  beqz       $v0, .L80041BC8
    /* 323B4 80041BB4 00000000 */   nop
    /* 323B8 80041BB8 0A006010 */  beqz       $v1, .L80041BE4
    /* 323BC 80041BBC 00000000 */   nop
    /* 323C0 80041BC0 6F070108 */  j          .L80041DBC
    /* 323C4 80041BC4 00000000 */   nop
  .L80041BC8:
    /* 323C8 80041BC8 02000224 */  addiu      $v0, $zero, 0x2
    /* 323CC 80041BCC 25006210 */  beq        $v1, $v0, .L80041C64
    /* 323D0 80041BD0 03000224 */   addiu     $v0, $zero, 0x3
    /* 323D4 80041BD4 74006210 */  beq        $v1, $v0, .L80041DA8
    /* 323D8 80041BD8 00000000 */   nop
    /* 323DC 80041BDC 6F070108 */  j          .L80041DBC
    /* 323E0 80041BE0 00000000 */   nop
  .L80041BE4:
    /* 323E4 80041BE4 1700028A */  lwl        $v0, 0x17($s0)
    /* 323E8 80041BE8 1400029A */  lwr        $v0, 0x14($s0)
.size func_80041B8C, . - func_80041B8C
