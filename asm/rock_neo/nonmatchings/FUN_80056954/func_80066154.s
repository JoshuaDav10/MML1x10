.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80066154
    /* 56954 80066154 21186200 */  addu       $v1, $v1, $v0
    /* 56958 80066158 0800A3AF */  sw         $v1, 0x8($sp)
  .L8006615C:
    /* 5695C 8006615C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 56960 80066160 DC00A22C */  sltiu      $v0, $a1, 0xDC
    /* 56964 80066164 E6FF4014 */  bnez       $v0, func_80066100
    /* 56968 80066168 04000825 */   addiu     $t0, $t0, 0x4
    /* 5696C 8006616C 7003E58C */  lw         $a1, 0x370($a3)
    /* 56970 80066170 0000A28F */  lw         $v0, 0x0($sp)
    /* 56974 80066174 7403E38C */  lw         $v1, 0x374($a3)
    /* 56978 80066178 2110A200 */  addu       $v0, $a1, $v0
    /* 5697C 8006617C CC006214 */  bne        $v1, $v0, .L800664B0
.size func_80066154, . - func_80066154
