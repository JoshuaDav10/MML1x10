.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057888
    /* 48088 80057888 FF008530 */  andi       $a1, $a0, 0xFF
  .L8005788C:
    /* 4808C 8005788C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 48090 80057890 00000000 */  nop
    /* 48094 80057894 02004490 */  lbu        $a0, 0x2($v0)
    /* 48098 80057898 00000000 */  nop
    /* 4809C 8005789C FF008530 */  andi       $a1, $a0, 0xFF
  .L800578A0:
    /* 480A0 800578A0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 480A4 800578A4 0600A214 */  bne        $a1, $v0, .L800578C0
    /* 480A8 800578A8 00000000 */   nop
    /* 480AC 800578AC 6C00028E */  lw         $v0, 0x6C($s0)
.size func_80057888, . - func_80057888
