.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059A00
    /* 4A200 80059A00 21082300 */  addu       $at, $at, $v1
    /* 4A204 80059A04 00562390 */  lbu        $v1, 0x5600($at)
    /* 4A208 80059A08 00000000 */  nop
    /* 4A20C 80059A0C 000043A0 */  sb         $v1, 0x0($v0)
    /* 4A210 80059A10 0A80023C */  lui        $v0, %hi(D_80098B2D)
    /* 4A214 80059A14 2D8B4290 */  lbu        $v0, %lo(D_80098B2D)($v0)
    /* 4A218 80059A18 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 4A21C 80059A1C 21082200 */  addu       $at, $at, $v0
    /* 4A220 80059A20 005624A0 */  sb         $a0, %lo(Player_work + 0x450)($at)
    /* 4A224 80059A24 C884010C */  jal        Sub_screen_rb_parts_set
    /* 4A228 80059A28 00000000 */   nop
    /* 4A22C 80059A2C FFFE043C */  lui        $a0, (0xFEFFFFFF >> 16)
  .L80059A30:
    /* 4A230 80059A30 FFFF8434 */  ori        $a0, $a0, (0xFEFFFFFF & 0xFFFF)
    /* 4A234 80059A34 FDFF053C */  lui        $a1, (0xFFFD7FFF >> 16)
    /* 4A238 80059A38 FF7FA534 */  ori        $a1, $a1, (0xFFFD7FFF & 0xFFFF)
    /* 4A23C 80059A3C 4400138E */  lw         $s3, 0x44($s0)
    /* 4A240 80059A40 0000028E */  lw         $v0, 0x0($s0)
    /* 4A244 80059A44 71000392 */  lbu        $v1, 0x71($s0)
    /* 4A248 80059A48 24104400 */  and        $v0, $v0, $a0
    /* 4A24C 80059A4C 790003A2 */  sb         $v1, 0x79($s0)
    /* 4A250 80059A50 000002AE */  sw         $v0, 0x0($s0)
    /* 4A254 80059A54 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4A258 80059A58 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4A25C 80059A5C 24104500 */  and        $v0, $v0, $a1
    /* 4A260 80059A60 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4A264 80059A64 04007190 */  lbu        $s1, 0x4($v1)
    /* 4A268 80059A68 03007290 */  lbu        $s2, 0x3($v1)
    /* 4A26C 80059A6C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4A270 80059A70 C20011A6 */  sh         $s1, 0xC2($s0)
    /* 4A274 80059A74 01004490 */  lbu        $a0, 0x1($v0)
    /* 4A278 80059A78 02004690 */  lbu        $a2, 0x2($v0)
    /* 4A27C 80059A7C 0B4E010C */  jal        MojiTaskExec
.size func_80059A00, . - func_80059A00
