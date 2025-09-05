.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A598
    /* 4AD98 8005A598 6C00838C */  lw         $v1, 0x6C($a0)
    /* 4AD9C 8005A59C 0C80053C */  lui        $a1, %hi(Game_work + 0x60)
    /* 4ADA0 8005A5A0 701BA584 */  lh         $a1, %lo(Game_work + 0x60)($a1)
    /* 4ADA4 8005A5A4 01006290 */  lbu        $v0, 0x1($v1)
    /* 4ADA8 8005A5A8 00000000 */  nop
    /* 4ADAC 8005A5AC 2A10A200 */  slt        $v0, $a1, $v0
    /* 4ADB0 8005A5B0 09004014 */  bnez       $v0, .L8005A5D8
    /* 4ADB4 8005A5B4 00000000 */   nop
    /* 4ADB8 8005A5B8 02006290 */  lbu        $v0, 0x2($v1)
    /* 4ADBC 8005A5BC 00000000 */  nop
    /* 4ADC0 8005A5C0 2A104500 */  slt        $v0, $v0, $a1
    /* 4ADC4 8005A5C4 04004014 */  bnez       $v0, .L8005A5D8
    /* 4ADC8 8005A5C8 00000000 */   nop
    /* 4ADCC 8005A5CC 03006590 */  lbu        $a1, 0x3($v1)
    /* 4ADD0 8005A5D0 7B690108 */  j          .L8005A5EC
    /* 4ADD4 8005A5D4 FF00A330 */   andi      $v1, $a1, 0xFF
  .L8005A5D8:
    /* 4ADD8 8005A5D8 6C00828C */  lw         $v0, 0x6C($a0)
    /* 4ADDC 8005A5DC 00000000 */  nop
    /* 4ADE0 8005A5E0 04004590 */  lbu        $a1, 0x4($v0)
    /* 4ADE4 8005A5E4 00000000 */  nop
    /* 4ADE8 8005A5E8 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8005A5EC:
    /* 4ADEC 8005A5EC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4ADF0 8005A5F0 06006214 */  bne        $v1, $v0, .L8005A60C
    /* 4ADF4 8005A5F4 40180300 */   sll       $v1, $v1, 1
    /* 4ADF8 8005A5F8 6C00828C */  lw         $v0, 0x6C($a0)
.size func_8005A598, . - func_8005A598
    /* 4ADFC 8005A5FC 00000000 */  nop
