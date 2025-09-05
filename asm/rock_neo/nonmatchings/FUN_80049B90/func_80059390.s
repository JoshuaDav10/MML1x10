.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059390
    /* 49B90 80059390 F41184AF */  sw         $a0, %gp_rel(Moji_flag)($gp)
    /* 49B94 80059394 71000382 */  lb         $v1, 0x71($s0)
    /* 49B98 80059398 00000000 */  nop
    /* 49B9C 8005939C 21104300 */  addu       $v0, $v0, $v1
    /* 49BA0 800593A0 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 49BA4 800593A4 21082200 */  addu       $at, $at, $v0
    /* 49BA8 800593A8 F8E22590 */  lbu        $a1, %lo(D_800BE2F8)($at)
    /* 49BAC 800593AC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 49BB0 800593B0 0800A210 */  beq        $a1, $v0, .L800593D4
    /* 49BB4 800593B4 0040033C */   lui       $v1, (0x40000000 >> 16)
.size func_80059390, . - func_80059390
