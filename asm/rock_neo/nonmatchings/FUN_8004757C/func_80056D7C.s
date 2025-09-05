.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056D7C
    /* 4757C 80056D7C 07004014 */  bnez       $v0, .L80056D9C
    /* 47580 80056D80 A0000224 */   addiu     $v0, $zero, 0xA0
    /* 47584 80056D84 0980023C */  lui        $v0, %hi(D_8008FE44)
    /* 47588 80056D88 44FE4294 */  lhu        $v0, %lo(D_8008FE44)($v0)
    /* 4758C 80056D8C 0980013C */  lui        $at, %hi(D_8008FD82)
    /* 47590 80056D90 82FD22A4 */  sh         $v0, %lo(D_8008FD82)($at)
    /* 47594 80056D94 755B0108 */  j          .L80056DD4
    /* 47598 80056D98 00000000 */   nop
  .L80056D9C:
    /* 4759C 80056D9C 23104300 */  subu       $v0, $v0, $v1
    /* 475A0 80056DA0 0980043C */  lui        $a0, %hi(D_8008FD82)
    /* 475A4 80056DA4 82FD8424 */  addiu      $a0, $a0, %lo(D_8008FD82)
    /* 475A8 80056DA8 02004104 */  bgez       $v0, .L80056DB4
.size func_80056D7C, . - func_80056D7C
