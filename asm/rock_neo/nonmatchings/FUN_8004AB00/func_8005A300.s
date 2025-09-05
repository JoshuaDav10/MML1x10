.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A300
    /* 4AB00 8005A300 840E82A3 */  sb         $v0, %gp_rel(D_800986E8)($gp)
    /* 4AB04 8005A304 90000224 */  addiu      $v0, $zero, 0x90
    /* 4AB08 8005A308 03006210 */  beq        $v1, $v0, .L8005A318
    /* 4AB0C 8005A30C 60000224 */   addiu     $v0, $zero, 0x60
    /* 4AB10 8005A310 03006214 */  bne        $v1, $v0, .L8005A320
    /* 4AB14 8005A314 00000000 */   nop
  .L8005A318:
    /* 4AB18 8005A318 23100400 */  negu       $v0, $a0
    /* 4AB1C 8005A31C 880E82A3 */  sb         $v0, %gp_rel(D_800986EC)($gp)
  .L8005A320:
    /* 4AB20 8005A320 7C0F80AF */  sw         $zero, %gp_rel(D_800987E0)($gp)
    /* 4AB24 8005A324 72000282 */  lb         $v0, 0x72($s0)
    /* 4AB28 8005A328 00000000 */  nop
    /* 4AB2C 8005A32C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4AB30 8005A330 1B004018 */  blez       $v0, .L8005A3A0
    /* 4AB34 8005A334 21280000 */   addu      $a1, $zero, $zero
    /* 4AB38 8005A338 6C00078E */  lw         $a3, 0x6C($s0)
    /* 4AB3C 8005A33C 0980063C */  lui        $a2, %hi(D_8008D028)
    /* 4AB40 8005A340 28D0C690 */  lbu        $a2, %lo(D_8008D028)($a2)
  .L8005A344:
    /* 4AB44 8005A344 7C0F828F */  lw         $v0, %gp_rel(D_800987E0)($gp)
    /* 4AB48 8005A348 00000000 */  nop
    /* 4AB4C 8005A34C 80200200 */  sll        $a0, $v0, 2
    /* 4AB50 8005A350 21208200 */  addu       $a0, $a0, $v0
    /* 4AB54 8005A354 40200400 */  sll        $a0, $a0, 1
    /* 4AB58 8005A358 7C0F84AF */  sw         $a0, %gp_rel(D_800987E0)($gp)
    /* 4AB5C 8005A35C 72000382 */  lb         $v1, 0x72($s0)
    /* 4AB60 8005A360 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4AB64 8005A364 23186200 */  subu       $v1, $v1, $v0
    /* 4AB68 8005A368 40100300 */  sll        $v0, $v1, 1
    /* 4AB6C 8005A36C 21104300 */  addu       $v0, $v0, $v1
    /* 4AB70 8005A370 2310E200 */  subu       $v0, $a3, $v0
    /* 4AB74 8005A374 02004290 */  lbu        $v0, 0x2($v0)
    /* 4AB78 8005A378 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AB7C 8005A37C 23104600 */  subu       $v0, $v0, $a2
.size func_8005A300, . - func_8005A300
