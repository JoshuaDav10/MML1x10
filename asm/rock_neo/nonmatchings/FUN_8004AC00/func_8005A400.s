.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A400
    /* 4AC00 8005A400 FFFFA430 */  andi       $a0, $a1, 0xFFFF
  .L8005A404:
    /* 4AC04 8005A404 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AC08 8005A408 00160600 */  sll        $v0, $a2, 24
    /* 4AC0C 8005A40C 03160200 */  sra        $v0, $v0, 24
    /* 4AC10 8005A410 23104400 */  subu       $v0, $v0, $a0
    /* 4AC14 8005A414 40180200 */  sll        $v1, $v0, 1
    /* 4AC18 8005A418 21186200 */  addu       $v1, $v1, $v0
    /* 4AC1C 8005A41C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AC20 8005A420 0C80013C */  lui        $at, %hi(D_800BE2F9)
    /* 4AC24 8005A424 21082400 */  addu       $at, $at, $a0
    /* 4AC28 8005A428 F9E22490 */  lbu        $a0, %lo(D_800BE2F9)($at)
    /* 4AC2C 8005A42C 23104300 */  subu       $v0, $v0, $v1
    /* 4AC30 8005A430 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4AC34 8005A434 020044A0 */  sb         $a0, 0x2($v0)
    /* 4AC38 8005A438 72000282 */  lb         $v0, 0x72($s0)
    /* 4AC3C 8005A43C 72000692 */  lbu        $a2, 0x72($s0)
    /* 4AC40 8005A440 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4AC44 8005A444 2A186200 */  slt        $v1, $v1, $v0
    /* 4AC48 8005A448 EEFF6014 */  bnez       $v1, .L8005A404
    /* 4AC4C 8005A44C FFFFA430 */   andi      $a0, $a1, 0xFFFF
  .L8005A450:
    /* 4AC50 8005A450 7C0F91AF */  sw         $s1, %gp_rel(D_800987E0)($gp)
    /* 4AC54 8005A454 72000482 */  lb         $a0, 0x72($s0)
    /* 4AC58 8005A458 71000282 */  lb         $v0, 0x71($s0)
    /* 4AC5C 8005A45C 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4AC60 8005A460 23208200 */  subu       $a0, $a0, $v0
    /* 4AC64 8005A464 40100400 */  sll        $v0, $a0, 1
    /* 4AC68 8005A468 21104400 */  addu       $v0, $v0, $a0
    /* 4AC6C 8005A46C 23186200 */  subu       $v1, $v1, $v0
    /* 4AC70 8005A470 02006290 */  lbu        $v0, 0x2($v1)
    /* 4AC74 8005A474 0980033C */  lui        $v1, %hi(D_8008D028)
    /* 4AC78 8005A478 28D06390 */  lbu        $v1, %lo(D_8008D028)($v1)
.size func_8005A400, . - func_8005A400
    /* 4AC7C 8005A47C 00000000 */  nop
