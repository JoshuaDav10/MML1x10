.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AB84
    /* 4B384 8005AB84 05006010 */  beqz       $v1, .L8005AB9C
    /* 4B388 8005AB88 02000224 */   addiu     $v0, $zero, 0x2
    /* 4B38C 8005AB8C 3E006210 */  beq        $v1, $v0, .L8005AC88
    /* 4B390 8005AB90 FFF9023C */   lui       $v0, (0xF9FF0000 >> 16)
    /* 4B394 8005AB94 286B0108 */  j          .L8005ACA0
    /* 4B398 8005AB98 00000000 */   nop
  .L8005AB9C:
    /* 4B39C 8005AB9C 0006043C */  lui        $a0, (0x6000000 >> 16)
    /* 4B3A0 8005ABA0 7D00A390 */  lbu        $v1, 0x7D($a1)
    /* 4B3A4 8005ABA4 0000A28C */  lw         $v0, 0x0($a1)
    /* 4B3A8 8005ABA8 02006324 */  addiu      $v1, $v1, 0x2
    /* 4B3AC 8005ABAC 7D00A3A0 */  sb         $v1, 0x7D($a1)
    /* 4B3B0 8005ABB0 6C00A38C */  lw         $v1, 0x6C($a1)
    /* 4B3B4 8005ABB4 25104400 */  or         $v0, $v0, $a0
    /* 4B3B8 8005ABB8 0000A2AC */  sw         $v0, 0x0($a1)
    /* 4B3BC 8005ABBC 6C00A28C */  lw         $v0, 0x6C($a1)
    /* 4B3C0 8005ABC0 02006390 */  lbu        $v1, 0x2($v1)
    /* 4B3C4 8005ABC4 03004224 */  addiu      $v0, $v0, 0x3
    /* 4B3C8 8005ABC8 6C00A2AC */  sw         $v0, 0x6C($a1)
    /* 4B3CC 8005ABCC F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4B3D0 8005ABD0 2000043C */  lui        $a0, (0x200000 >> 16)
    /* 4B3D4 8005ABD4 B600A3A4 */  sh         $v1, 0xB6($a1)
    /* 4B3D8 8005ABD8 B400A3A4 */  sh         $v1, 0xB4($a1)
    /* 4B3DC 8005ABDC B400A394 */  lhu        $v1, 0xB4($a1)
    /* 4B3E0 8005ABE0 25104400 */  or         $v0, $v0, $a0
    /* 4B3E4 8005ABE4 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4B3E8 8005ABE8 B600A294 */  lhu        $v0, 0xB6($a1)
    /* 4B3EC 8005ABEC 7E00A490 */  lbu        $a0, 0x7E($a1)
    /* 4B3F0 8005ABF0 23180300 */  negu       $v1, $v1
    /* 4B3F4 8005ABF4 23100200 */  negu       $v0, $v0
    /* 4B3F8 8005ABF8 8800A3A4 */  sh         $v1, 0x88($a1)
    /* 4B3FC 8005ABFC 40180400 */  sll        $v1, $a0, 1
.size func_8005AB84, . - func_8005AB84
