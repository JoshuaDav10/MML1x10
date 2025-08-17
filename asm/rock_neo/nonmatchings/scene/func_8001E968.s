.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E968
    /* F168 8001E968 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* F16C 8001E96C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F170 8001E970 21988000 */  addu       $s3, $a0, $zero
    /* F174 8001E974 1800B2AF */  sw         $s2, 0x18($sp)
    /* F178 8001E978 2190A000 */  addu       $s2, $a1, $zero
    /* F17C 8001E97C 1000B0AF */  sw         $s0, 0x10($sp)
    /* F180 8001E980 2180E000 */  addu       $s0, $a3, $zero
    /* F184 8001E984 1400B1AF */  sw         $s1, 0x14($sp)
    /* F188 8001E988 21880000 */  addu       $s1, $zero, $zero
    /* F18C 8001E98C 40000224 */  addiu      $v0, $zero, 0x40
    /* F190 8001E990 1300C210 */  beq        $a2, $v0, .L8001E9E0
    /* F194 8001E994 2000BFAF */   sw        $ra, 0x20($sp)
    /* F198 8001E998 4100C228 */  slti       $v0, $a2, 0x41
    /* F19C 8001E99C 05004010 */  beqz       $v0, .L8001E9B4
    /* F1A0 8001E9A0 20000224 */   addiu     $v0, $zero, 0x20
    /* F1A4 8001E9A4 0A00C210 */  beq        $a2, $v0, .L8001E9D0
    /* F1A8 8001E9A8 21102002 */   addu      $v0, $s1, $zero
    /* F1AC 8001E9AC B27A0008 */  j          .L8001EAC8
    /* F1B0 8001E9B0 00000000 */   nop
  .L8001E9B4:
    /* F1B4 8001E9B4 60000224 */  addiu      $v0, $zero, 0x60
    /* F1B8 8001E9B8 1E00C210 */  beq        $a2, $v0, .L8001EA34
    /* F1BC 8001E9BC E0000224 */   addiu     $v0, $zero, 0xE0
    /* F1C0 8001E9C0 0B00C210 */  beq        $a2, $v0, .L8001E9F0
    /* F1C4 8001E9C4 21102002 */   addu      $v0, $s1, $zero
    /* F1C8 8001E9C8 B27A0008 */  j          .L8001EAC8
    /* F1CC 8001E9CC 00000000 */   nop
  .L8001E9D0:
    /* F1D0 8001E9D0 06C5000C */  jal        func_80031418
    /* F1D4 8001E9D4 00000000 */   nop
    /* F1D8 8001E9D8 907A0008 */  j          .L8001EA40
    /* F1DC 8001E9DC 21204000 */   addu      $a0, $v0, $zero
  .L8001E9E0:
    /* F1E0 8001E9E0 26C5000C */  jal        func_80031498
    /* F1E4 8001E9E4 00000000 */   nop
    /* F1E8 8001E9E8 907A0008 */  j          .L8001EA40
    /* F1EC 8001E9EC 21204000 */   addu      $a0, $v0, $zero
  .L8001E9F0:
    /* F1F0 8001E9F0 CDC5000C */  jal        func_80031734
    /* F1F4 8001E9F4 00000000 */   nop
    /* F1F8 8001E9F8 21204000 */  addu       $a0, $v0, $zero
    /* F1FC 8001E9FC 31008010 */  beqz       $a0, .L8001EAC4
    /* F200 8001EA00 01000224 */   addiu     $v0, $zero, 0x1
    /* F204 8001EA04 06008390 */  lbu        $v1, 0x6($a0)
    /* F208 8001EA08 000082A0 */  sb         $v0, 0x0($a0)
    /* F20C 8001EA0C 020092A0 */  sb         $s2, 0x2($a0)
    /* F210 8001EA10 20006334 */  ori        $v1, $v1, 0x20
    /* F214 8001EA14 060083A0 */  sb         $v1, 0x6($a0)
    /* F218 8001EA18 0000028E */  lw         $v0, 0x0($s0)
    /* F21C 8001EA1C 00000000 */  nop
    /* F220 8001EA20 380082AC */  sw         $v0, 0x38($a0)
    /* F224 8001EA24 0400028E */  lw         $v0, 0x4($s0)
    /* F228 8001EA28 21888000 */  addu       $s1, $a0, $zero
    /* F22C 8001EA2C AD7A0008 */  j          .L8001EAB4
    /* F230 8001EA30 3C0022AE */   sw        $v0, 0x3C($s1)
  .L8001EA34:
    /* F234 8001EA34 46C5000C */  jal        func_80031518
    /* F238 8001EA38 00000000 */   nop
    /* F23C 8001EA3C 21204000 */  addu       $a0, $v0, $zero
  .L8001EA40:
    /* F240 8001EA40 20008010 */  beqz       $a0, .L8001EAC4
    /* F244 8001EA44 01000224 */   addiu     $v0, $zero, 0x1
    /* F248 8001EA48 06008390 */  lbu        $v1, 0x6($a0)
    /* F24C 8001EA4C 000082A0 */  sb         $v0, 0x0($a0)
    /* F250 8001EA50 020092A0 */  sb         $s2, 0x2($a0)
    /* F254 8001EA54 20006334 */  ori        $v1, $v1, 0x20
    /* F258 8001EA58 060083A0 */  sb         $v1, 0x6($a0)
    /* F25C 8001EA5C 0000028E */  lw         $v0, 0x0($s0)
    /* F260 8001EA60 00000000 */  nop
    /* F264 8001EA64 140082AC */  sw         $v0, 0x14($a0)
    /* F268 8001EA68 04000296 */  lhu        $v0, 0x4($s0)
    /* F26C 8001EA6C 540080A4 */  sh         $zero, 0x54($a0)
    /* F270 8001EA70 580080A4 */  sh         $zero, 0x58($a0)
    /* F274 8001EA74 180082A4 */  sh         $v0, 0x18($a0)
    /* F278 8001EA78 06000296 */  lhu        $v0, 0x6($s0)
    /* F27C 8001EA7C 00000000 */  nop
    /* F280 8001EA80 560082A4 */  sh         $v0, 0x56($a0)
    /* F284 8001EA84 00000286 */  lh         $v0, 0x0($s0)
    /* F288 8001EA88 00000000 */  nop
    /* F28C 8001EA8C 00140200 */  sll        $v0, $v0, 16
    /* F290 8001EA90 1C0082AC */  sw         $v0, 0x1C($a0)
    /* F294 8001EA94 02000286 */  lh         $v0, 0x2($s0)
    /* F298 8001EA98 00000000 */  nop
    /* F29C 8001EA9C 00140200 */  sll        $v0, $v0, 16
    /* F2A0 8001EAA0 200082AC */  sw         $v0, 0x20($a0)
    /* F2A4 8001EAA4 04000286 */  lh         $v0, 0x4($s0)
    /* F2A8 8001EAA8 21888000 */  addu       $s1, $a0, $zero
    /* F2AC 8001EAAC 00140200 */  sll        $v0, $v0, 16
    /* F2B0 8001EAB0 240022AE */  sw         $v0, 0x24($s1)
  .L8001EAB4:
    /* F2B4 8001EAB4 80101300 */  sll        $v0, $s3, 2
    /* F2B8 8001EAB8 0C80013C */  lui        $at, %hi(Scene_work + 0x24)
    /* F2BC 8001EABC 21082200 */  addu       $at, $at, $v0
    /* F2C0 8001EAC0 6C4C31AC */  sw         $s1, %lo(Scene_work + 0x24)($at)
  .L8001EAC4:
    /* F2C4 8001EAC4 21102002 */  addu       $v0, $s1, $zero
  .L8001EAC8:
    /* F2C8 8001EAC8 2000BF8F */  lw         $ra, 0x20($sp)
    /* F2CC 8001EACC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F2D0 8001EAD0 1800B28F */  lw         $s2, 0x18($sp)
    /* F2D4 8001EAD4 1400B18F */  lw         $s1, 0x14($sp)
    /* F2D8 8001EAD8 1000B08F */  lw         $s0, 0x10($sp)
    /* F2DC 8001EADC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* F2E0 8001EAE0 0800E003 */  jr         $ra
    /* F2E4 8001EAE4 00000000 */   nop
.size func_8001E968, . - func_8001E968
