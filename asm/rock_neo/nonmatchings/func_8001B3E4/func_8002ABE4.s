.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel func_8002ABE4
    /* 1B3E4 8002ABE4 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* 1B3E8 8002ABE8 00000000 */  nop
    /* 1B3EC 8002ABEC 83600C00 */  sra        $t4, $t4, 2
    /* 1B3F0 8002ABF0 00004CAC */  sw         $t4, 0x0($v0)
    /* 1B3F4 8002ABF4 801F023C */  lui        $v0, (0x1F800006 >> 16)
    /* 1B3F8 8002ABF8 06004294 */  lhu        $v0, (0x1F800006 & 0xFFFF)($v0)
    /* 1B3FC 8002ABFC 2000A38F */  lw         $v1, 0x20($sp)
    /* 1B400 8002AC00 00000000 */  nop
    /* 1B404 8002AC04 2A104300 */  slt        $v0, $v0, $v1
    /* 1B408 8002AC08 B2004014 */  bnez       $v0, .L8002AED4
    /* 1B40C 8002AC0C 30006228 */   slti      $v0, $v1, 0x30
    /* 1B410 8002AC10 B0004014 */  bnez       $v0, .L8002AED4
    /* 1B414 8002AC14 09076228 */   slti      $v0, $v1, 0x709
    /* 1B418 8002AC18 06004014 */  bnez       $v0, .L8002AC34
    /* 1B41C 8002AC1C BD026228 */   slti      $v0, $v1, 0x2BD
    /* 1B420 8002AC20 0000C28C */  lw         $v0, 0x0($a2)
    /* 1B424 8002AC24 00000000 */  nop
    /* 1B428 8002AC28 7800428C */  lw         $v0, 0x78($v0)
    /* 1B42C 8002AC2C 19AB0008 */  j          .L8002AC64
    /* 1B430 8002AC30 14004224 */   addiu     $v0, $v0, 0x14
  .L8002AC34:
    /* 1B434 8002AC34 06004014 */  bnez       $v0, .L8002AC50
    /* 1B438 8002AC38 00000000 */   nop
    /* 1B43C 8002AC3C 0000C28C */  lw         $v0, 0x0($a2)
    /* 1B440 8002AC40 00000000 */  nop
    /* 1B444 8002AC44 7400428C */  lw         $v0, 0x74($v0)
    /* 1B448 8002AC48 19AB0008 */  j          .L8002AC64
    /* 1B44C 8002AC4C 14004224 */   addiu     $v0, $v0, 0x14
  .L8002AC50:
    /* 1B450 8002AC50 0000C28C */  lw         $v0, 0x0($a2)
    /* 1B454 8002AC54 00000000 */  nop
    /* 1B458 8002AC58 7000428C */  lw         $v0, 0x70($v0)
    /* 1B45C 8002AC5C 00000000 */  nop
    /* 1B460 8002AC60 14004224 */  addiu      $v0, $v0, 0x14
  .L8002AC64:
    /* 1B464 8002AC64 801F013C */  lui        $at, (0x1F8000E8 >> 16)
    /* 1B468 8002AC68 E80022AC */  sw         $v0, (0x1F8000E8 & 0xFFFF)($at)
    /* 1B46C 8002AC6C 801F033C */  lui        $v1, (0x1F8000E0 >> 16)
    /* 1B470 8002AC70 2000A28F */  lw         $v0, 0x20($sp)
    /* 1B474 8002AC74 00000000 */  nop
    /* 1B478 8002AC78 02004104 */  bgez       $v0, .L8002AC84
    /* 1B47C 8002AC7C E0006334 */   ori       $v1, $v1, (0x1F8000E0 & 0xFFFF)
    /* 1B480 8002AC80 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8002AC84:
    /* 1B484 8002AC84 C3110200 */  sra        $v0, $v0, 7
    /* 1B488 8002AC88 1F004230 */  andi       $v0, $v0, 0x1F
    /* 1B48C 8002AC8C 0C80013C */  lui        $at, %hi(D_800C0DC0)
    /* 1B490 8002AC90 21082200 */  addu       $at, $at, $v0
    /* 1B494 8002AC94 C00D2290 */  lbu        $v0, %lo(D_800C0DC0)($at)
    /* 1B498 8002AC98 801F083C */  lui        $t0, (0x1F800008 >> 16)
    /* 1B49C 8002AC9C 08000835 */  ori        $t0, $t0, (0x1F800008 & 0xFFFF)
    /* 1B4A0 8002ACA0 00140200 */  sll        $v0, $v0, 16
    /* 1B4A4 8002ACA4 000062AC */  sw         $v0, 0x0($v1)
    /* 1B4A8 8002ACA8 00000C8D */  lw         $t4, 0x0($t0)
    /* 1B4AC 8002ACAC 04000D8D */  lw         $t5, 0x4($t0)
    /* 1B4B0 8002ACB0 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 1B4B4 8002ACB4 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 1B4B8 8002ACB8 08000C8D */  lw         $t4, 0x8($t0)
    /* 1B4BC 8002ACBC 0C000D8D */  lw         $t5, 0xC($t0)
.size func_8002ABE4, . - func_8002ABE4
