.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BE84
    /* 4C684 8005BE84 0D0062A0 */  sb         $v0, 0xD($v1)
    /* 4C688 8005BE88 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C68C 8005BE8C 0000E290 */  lbu        $v0, 0x0($a3)
    /* 4C690 8005BE90 00000000 */  nop
    /* 4C694 8005BE94 0E0062A0 */  sb         $v0, 0xE($v1)
    /* 4C698 8005BE98 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C69C 8005BE9C 00002291 */  lbu        $v0, 0x0($t1)
    /* 4C6A0 8005BEA0 00000000 */  nop
    /* 4C6A4 8005BEA4 140062A0 */  sb         $v0, 0x14($v1)
    /* 4C6A8 8005BEA8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6AC 8005BEAC 00002291 */  lbu        $v0, 0x0($t1)
    /* 4C6B0 8005BEB0 01004A25 */  addiu      $t2, $t2, 0x1
    /* 4C6B4 8005BEB4 150062A0 */  sb         $v0, 0x15($v1)
    /* 4C6B8 8005BEB8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6BC 8005BEBC 00002291 */  lbu        $v0, 0x0($t1)
    /* 4C6C0 8005BEC0 0400C624 */  addiu      $a2, $a2, 0x4
    /* 4C6C4 8005BEC4 160062A0 */  sb         $v0, 0x16($v1)
    /* 4C6C8 8005BEC8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6CC 8005BECC 00000291 */  lbu        $v0, 0x0($t0)
    /* 4C6D0 8005BED0 0400E724 */  addiu      $a3, $a3, 0x4
    /* 4C6D4 8005BED4 1C0062A0 */  sb         $v0, 0x1C($v1)
    /* 4C6D8 8005BED8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6DC 8005BEDC 00000291 */  lbu        $v0, 0x0($t0)
    /* 4C6E0 8005BEE0 04002925 */  addiu      $t1, $t1, 0x4
    /* 4C6E4 8005BEE4 1D0062A0 */  sb         $v0, 0x1D($v1)
    /* 4C6E8 8005BEE8 00000391 */  lbu        $v1, 0x0($t0)
    /* 4C6EC 8005BEEC 04000825 */  addiu      $t0, $t0, 0x4
    /* 4C6F0 8005BEF0 A000828C */  lw         $v0, 0xA0($a0)
    /* 4C6F4 8005BEF4 00000000 */  nop
    /* 4C6F8 8005BEF8 1E0043A0 */  sb         $v1, 0x1E($v0)
    /* 4C6FC 8005BEFC 04004229 */  slti       $v0, $t2, 0x4
.size func_8005BE84, . - func_8005BE84
