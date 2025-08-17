.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AB78
    /* 4B378 8005AB78 21288000 */  addu       $a1, $a0, $zero
    /* 4B37C 8005AB7C 7D00A390 */  lbu        $v1, 0x7D($a1)
    /* 4B380 8005AB80 00000000 */  nop
    /* 4B384 8005AB84 05006010 */  beqz       $v1, .L8005AB9C
    /* 4B388 8005AB88 02000224 */   addiu     $v0, $zero, 0x2
    /* 4B38C 8005AB8C 3E006210 */  beq        $v1, $v0, .L8005AC88
    /* 4B390 8005AB90 FFF9023C */   lui       $v0, (0xF9FFFFFF >> 16)
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
    /* 4B400 8005AC00 21186400 */  addu       $v1, $v1, $a0
    /* 4B404 8005AC04 80180300 */  sll        $v1, $v1, 2
    /* 4B408 8005AC08 8A00A2A4 */  sh         $v0, 0x8A($a1)
    /* 4B40C 8005AC0C B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4B410 8005AC10 B600A494 */  lhu        $a0, 0xB6($a1)
    /* 4B414 8005AC14 21104300 */  addu       $v0, $v0, $v1
    /* 4B418 8005AC18 8C00A2A4 */  sh         $v0, 0x8C($a1)
    /* 4B41C 8005AC1C B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4B420 8005AC20 23200400 */  negu       $a0, $a0
    /* 4B424 8005AC24 8E00A4A4 */  sh         $a0, 0x8E($a1)
    /* 4B428 8005AC28 7F00A490 */  lbu        $a0, 0x7F($a1)
    /* 4B42C 8005AC2C 23100200 */  negu       $v0, $v0
    /* 4B430 8005AC30 40180400 */  sll        $v1, $a0, 1
    /* 4B434 8005AC34 21186400 */  addu       $v1, $v1, $a0
    /* 4B438 8005AC38 80180300 */  sll        $v1, $v1, 2
    /* 4B43C 8005AC3C 9000A2A4 */  sh         $v0, 0x90($a1)
    /* 4B440 8005AC40 B600A294 */  lhu        $v0, 0xB6($a1)
    /* 4B444 8005AC44 7E00A490 */  lbu        $a0, 0x7E($a1)
    /* 4B448 8005AC48 21104300 */  addu       $v0, $v0, $v1
    /* 4B44C 8005AC4C 40180400 */  sll        $v1, $a0, 1
    /* 4B450 8005AC50 21186400 */  addu       $v1, $v1, $a0
    /* 4B454 8005AC54 80180300 */  sll        $v1, $v1, 2
    /* 4B458 8005AC58 9200A2A4 */  sh         $v0, 0x92($a1)
    /* 4B45C 8005AC5C B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4B460 8005AC60 7F00A490 */  lbu        $a0, 0x7F($a1)
    /* 4B464 8005AC64 21104300 */  addu       $v0, $v0, $v1
    /* 4B468 8005AC68 9400A2A4 */  sh         $v0, 0x94($a1)
    /* 4B46C 8005AC6C 40100400 */  sll        $v0, $a0, 1
    /* 4B470 8005AC70 21104400 */  addu       $v0, $v0, $a0
    /* 4B474 8005AC74 B600A394 */  lhu        $v1, 0xB6($a1)
    /* 4B478 8005AC78 80100200 */  sll        $v0, $v0, 2
    /* 4B47C 8005AC7C 21186200 */  addu       $v1, $v1, $v0
    /* 4B480 8005AC80 286B0108 */  j          .L8005ACA0
    /* 4B484 8005AC84 9600A3A4 */   sh        $v1, 0x96($a1)
  .L8005AC88:
    /* 4B488 8005AC88 FFFF4234 */  ori        $v0, $v0, (0xF9FFFFFF & 0xFFFF)
    /* 4B48C 8005AC8C 0000A38C */  lw         $v1, 0x0($a1)
    /* 4B490 8005AC90 0010043C */  lui        $a0, (0x10000000 >> 16)
    /* 4B494 8005AC94 25186400 */  or         $v1, $v1, $a0
    /* 4B498 8005AC98 24186200 */  and        $v1, $v1, $v0
    /* 4B49C 8005AC9C 0000A3AC */  sw         $v1, 0x0($a1)
  .L8005ACA0:
    /* 4B4A0 8005ACA0 0800E003 */  jr         $ra
    /* 4B4A4 8005ACA4 00000000 */   nop
.size func_8005AB78, . - func_8005AB78
