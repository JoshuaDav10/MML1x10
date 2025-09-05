.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056D10
    /* 47510 80056D10 EC0F8293 */  lbu        $v0, %gp_rel(D_80098850)($gp)
    /* 47514 80056D14 90108393 */  lbu        $v1, %gp_rel(D_800988F4)($gp)
    /* 47518 80056D18 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4751C 80056D1C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 47520 80056D20 21888000 */  addu       $s1, $a0, $zero
    /* 47524 80056D24 3800BFAF */  sw         $ra, 0x38($sp)
    /* 47528 80056D28 3400B5AF */  sw         $s5, 0x34($sp)
    /* 4752C 80056D2C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 47530 80056D30 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 47534 80056D34 2800B2AF */  sw         $s2, 0x28($sp)
    /* 47538 80056D38 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4753C 80056D3C 40100200 */  sll        $v0, $v0, 1
    /* 47540 80056D40 0980013C */  lui        $at, %hi(D_80097F64)
    /* 47544 80056D44 21082200 */  addu       $at, $at, $v0
    /* 47548 80056D48 647F2294 */  lhu        $v0, %lo(D_80097F64)($at)
    /* 4754C 80056D4C 0C80043C */  lui        $a0, %hi(Sce_flag)
    /* 47550 80056D50 78E38424 */  addiu      $a0, $a0, %lo(Sce_flag)
    /* 47554 80056D54 441180AF */  sw         $zero, %gp_rel(D_800989A8)($gp)
    /* 47558 80056D58 381183A3 */  sb         $v1, %gp_rel(D_8009899C)($gp)
    /* 4755C 80056D5C C2180200 */  srl        $v1, $v0, 3
    /* 47560 80056D60 21A06400 */  addu       $s4, $v1, $a0
    /* 47564 80056D64 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 47568 80056D68 C3100200 */  sra        $v0, $v0, 3
    /* 4756C 80056D6C 0B80033C */  lui        $v1, %hi(Player_work + 0xB0)
    /* 47570 80056D70 60526384 */  lh         $v1, %lo(Player_work + 0xB0)($v1)
    /* 47574 80056D74 21984400 */  addu       $s3, $v0, $a0
    /* 47578 80056D78 A0006228 */  slti       $v0, $v1, 0xA0
.size func_80056D10, . - func_80056D10
