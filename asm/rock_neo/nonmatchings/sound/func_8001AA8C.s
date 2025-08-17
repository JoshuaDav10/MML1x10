.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001AA8C
    /* B28C 8001AA8C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B290 8001AA90 1800B2AF */  sw         $s2, 0x18($sp)
    /* B294 8001AA94 21908000 */  addu       $s2, $a0, $zero
    /* B298 8001AA98 2400BFAF */  sw         $ra, 0x24($sp)
    /* B29C 8001AA9C 2000B4AF */  sw         $s4, 0x20($sp)
    /* B2A0 8001AAA0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B2A4 8001AAA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* B2A8 8001AAA8 1000B0AF */  sw         $s0, 0x10($sp)
    /* B2AC 8001AAAC 02004286 */  lh         $v0, 0x2($s2)
    /* B2B0 8001AAB0 0880033C */  lui        $v1, %hi(D_8008241C)
    /* B2B4 8001AAB4 1C246324 */  addiu      $v1, $v1, %lo(D_8008241C)
    /* B2B8 8001AAB8 80100200 */  sll        $v0, $v0, 2
    /* B2BC 8001AABC 21884300 */  addu       $s1, $v0, $v1
    /* B2C0 8001AAC0 00002492 */  lbu        $a0, 0x0($s1)
    /* B2C4 8001AAC4 7F68000C */  jal        func_8001A1FC
    /* B2C8 8001AAC8 3F008430 */   andi      $a0, $a0, 0x3F
    /* B2CC 8001AACC 21A04000 */  addu       $s4, $v0, $zero
    /* B2D0 8001AAD0 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* B2D4 8001AAD4 57009012 */  beq        $s4, $s0, .L8001AC34
    /* B2D8 8001AAD8 00000000 */   nop
    /* B2DC 8001AADC 01002492 */  lbu        $a0, 0x1($s1)
    /* B2E0 8001AAE0 8E68000C */  jal        func_8001A238
    /* B2E4 8001AAE4 7F008430 */   andi      $a0, $a0, 0x7F
    /* B2E8 8001AAE8 21984000 */  addu       $s3, $v0, $zero
    /* B2EC 8001AAEC 51007012 */  beq        $s3, $s0, .L8001AC34
    /* B2F0 8001AAF0 00000000 */   nop
    /* B2F4 8001AAF4 0A80033C */  lui        $v1, %hi(D_80098AF8)
    /* B2F8 8001AAF8 F88A6324 */  addiu      $v1, $v1, %lo(D_80098AF8)
    /* B2FC 8001AAFC 02002292 */  lbu        $v0, 0x2($s1)
    /* B300 8001AB00 0400448E */  lw         $a0, 0x4($s2)
    /* B304 8001AB04 02110200 */  srl        $v0, $v0, 4
    /* B308 8001AB08 C0100200 */  sll        $v0, $v0, 3
    /* B30C 8001AB0C 0A008014 */  bnez       $a0, .L8001AB38
    /* B310 8001AB10 21804300 */   addu      $s0, $v0, $v1
    /* B314 8001AB14 05000292 */  lbu        $v0, 0x5($s0)
    /* B318 8001AB18 00000000 */  nop
    /* B31C 8001AB1C 06004010 */  beqz       $v0, .L8001AB38
    /* B320 8001AB20 00000000 */   nop
    /* B324 8001AB24 06000386 */  lh         $v1, 0x6($s0)
    /* B328 8001AB28 02004286 */  lh         $v0, 0x2($s2)
    /* B32C 8001AB2C 00000000 */  nop
    /* B330 8001AB30 40006210 */  beq        $v1, $v0, .L8001AC34
    /* B334 8001AB34 00000000 */   nop
  .L8001AB38:
    /* B338 8001AB38 02002292 */  lbu        $v0, 0x2($s1)
    /* B33C 8001AB3C 03000382 */  lb         $v1, 0x3($s0)
    /* B340 8001AB40 0F004230 */  andi       $v0, $v0, 0xF
    /* B344 8001AB44 2A104300 */  slt        $v0, $v0, $v1
    /* B348 8001AB48 3A004014 */  bnez       $v0, .L8001AC34
    /* B34C 8001AB4C FFFF0324 */   addiu     $v1, $zero, -0x1
    /* B350 8001AB50 00000486 */  lh         $a0, 0x0($s0)
    /* B354 8001AB54 00000000 */  nop
    /* B358 8001AB58 15008310 */  beq        $a0, $v1, .L8001ABB0
    /* B35C 8001AB5C C0101300 */   sll       $v0, $s3, 3
    /* B360 8001AB60 02000282 */  lb         $v0, 0x2($s0)
    /* B364 8001AB64 00000000 */  nop
    /* B368 8001AB68 10004310 */  beq        $v0, $v1, .L8001ABAC
    /* B36C 8001AB6C 00000000 */   nop
    /* B370 8001AB70 08004014 */  bnez       $v0, .L8001AB94
    /* B374 8001AB74 00000000 */   nop
    /* B378 8001AB78 45C0010C */  jal        func_80070114
    /* B37C 8001AB7C 00000000 */   nop
    /* B380 8001AB80 00000486 */  lh         $a0, 0x0($s0)
    /* B384 8001AB84 19AD010C */  jal        SsSeqClose
    /* B388 8001AB88 00000000 */   nop
    /* B38C 8001AB8C EC6A0008 */  j          .L8001ABB0
    /* B390 8001AB90 C0101300 */   sll       $v0, $s3, 3
  .L8001AB94:
    /* B394 8001AB94 04000592 */  lbu        $a1, 0x4($s0)
    /* B398 8001AB98 4FC0010C */  jal        func_8007013C
    /* B39C 8001AB9C 00000000 */   nop
    /* B3A0 8001ABA0 00000486 */  lh         $a0, 0x0($s0)
    /* B3A4 8001ABA4 22AD010C */  jal        SsSepClose
    /* B3A8 8001ABA8 00000000 */   nop
  .L8001ABAC:
    /* B3AC 8001ABAC C0101300 */  sll        $v0, $s3, 3
  .L8001ABB0:
    /* B3B0 8001ABB0 0A80013C */  lui        $at, %hi(D_80098AD4)
    /* B3B4 8001ABB4 21082200 */  addu       $at, $at, $v0
    /* B3B8 8001ABB8 D48A248C */  lw         $a0, %lo(D_80098AD4)($at)
    /* B3BC 8001ABBC C0101400 */  sll        $v0, $s4, 3
    /* B3C0 8001ABC0 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* B3C4 8001ABC4 21082200 */  addu       $at, $at, $v0
    /* B3C8 8001ABC8 C81C2584 */  lh         $a1, %lo(Game_work + 0x1B8)($at)
    /* B3CC 8001ABCC 25B7010C */  jal        SsSeqOpen
    /* B3D0 8001ABD0 00000000 */   nop
    /* B3D4 8001ABD4 000002A6 */  sh         $v0, 0x0($s0)
    /* B3D8 8001ABD8 02002292 */  lbu        $v0, 0x2($s1)
    /* B3DC 8001ABDC 00000486 */  lh         $a0, 0x0($s0)
    /* B3E0 8001ABE0 020000A2 */  sb         $zero, 0x2($s0)
    /* B3E4 8001ABE4 0F004230 */  andi       $v0, $v0, 0xF
    /* B3E8 8001ABE8 030002A2 */  sb         $v0, 0x3($s0)
    /* B3EC 8001ABEC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B3F0 8001ABF0 10008210 */  beq        $a0, $v0, .L8001AC34
    /* B3F4 8001ABF4 00000000 */   nop
    /* B3F8 8001ABF8 01002292 */  lbu        $v0, 0x1($s1)
    /* B3FC 8001ABFC 0B80113C */  lui        $s1, %hi(D_800AD140)
    /* B400 8001AC00 40D13126 */  addiu      $s1, $s1, %lo(D_800AD140)
    /* B404 8001AC04 03004010 */  beqz       $v0, .L8001AC14
    /* B408 8001AC08 01000524 */   addiu     $a1, $zero, 0x1
    /* B40C 8001AC0C 066B0008 */  j          .L8001AC18
    /* B410 8001AC10 21300000 */   addu      $a2, $zero, $zero
  .L8001AC14:
    /* B414 8001AC14 01000624 */  addiu      $a2, $zero, 0x1
  .L8001AC18:
    /* B418 8001AC18 C0B8010C */  jal        SsSeqPlay
    /* B41C 8001AC1C 00000000 */   nop
    /* B420 8001AC20 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B424 8001AC24 120022A6 */  sh         $v0, 0x12($s1)
    /* B428 8001AC28 02004296 */  lhu        $v0, 0x2($s2)
    /* B42C 8001AC2C 00000000 */  nop
    /* B430 8001AC30 060002A6 */  sh         $v0, 0x6($s0)
  .L8001AC34:
    /* B434 8001AC34 2400BF8F */  lw         $ra, 0x24($sp)
    /* B438 8001AC38 2000B48F */  lw         $s4, 0x20($sp)
    /* B43C 8001AC3C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B440 8001AC40 1800B28F */  lw         $s2, 0x18($sp)
    /* B444 8001AC44 1400B18F */  lw         $s1, 0x14($sp)
    /* B448 8001AC48 1000B08F */  lw         $s0, 0x10($sp)
    /* B44C 8001AC4C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B450 8001AC50 0800E003 */  jr         $ra
    /* B454 8001AC54 00000000 */   nop
.size func_8001AA8C, . - func_8001AA8C
