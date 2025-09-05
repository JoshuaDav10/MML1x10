.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059180
    /* 49980 80059180 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 49984 80059184 1400028E */  lw         $v0, 0x14($s0)
    /* 49988 80059188 00000000 */  nop
    /* 4998C 8005918C 03004290 */  lbu        $v0, 0x3($v0)
    /* 49990 80059190 7B640108 */  j          .L800591EC
    /* 49994 80059194 BC0000A6 */   sh        $zero, 0xBC($s0)
  .L80059198:
    /* 49998 80059198 80004234 */  ori        $v0, $v0, 0x80
    /* 4999C 8005919C 2410A200 */  and        $v0, $a1, $v0
    /* 499A0 800591A0 80000324 */  addiu      $v1, $zero, 0x80
    /* 499A4 800591A4 0B004314 */  bne        $v0, $v1, .L800591D4
.size func_80059180, . - func_80059180
