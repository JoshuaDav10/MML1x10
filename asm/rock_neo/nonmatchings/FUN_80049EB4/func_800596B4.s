.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800596B4
    /* 49EB4 800596B4 04562280 */  lb         $v0, 0x5604($at)
    /* 49EB8 800596B8 C5650108 */  j          .L80059714
    /* 49EBC 800596BC 80100200 */   sll       $v0, $v0, 2
  .L800596C0:
    /* 49EC0 800596C0 FFFF60A0 */  sb         $zero, -0x1($v1)
    /* 49EC4 800596C4 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 49EC8 800596C8 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 49ECC 800596CC 24104300 */  and        $v0, $v0, $v1
    /* 49ED0 800596D0 08004010 */  beqz       $v0, .L800596F4
    /* 49ED4 800596D4 00000000 */   nop
    /* 49ED8 800596D8 1400858C */  lw         $a1, 0x14($a0)
    /* 49EDC 800596DC 71008280 */  lb         $v0, 0x71($a0)
    /* 49EE0 800596E0 0300A390 */  lbu        $v1, 0x3($a1)
    /* 49EE4 800596E4 00000000 */  nop
    /* 49EE8 800596E8 02006214 */  bne        $v1, $v0, .L800596F4
    /* 49EEC 800596EC 03000224 */   addiu     $v0, $zero, 0x3
    /* 49EF0 800596F0 FFFFA2A0 */  sb         $v0, -0x1($a1)
.size func_800596B4, . - func_800596B4
