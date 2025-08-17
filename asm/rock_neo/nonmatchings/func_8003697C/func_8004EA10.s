.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004EA10
    /* 3F210 8004EA10 45000224 */  addiu      $v0, $zero, 0x45
    /* 3F214 8004EA14 1C00A210 */  beq        $a1, $v0, .L8004EA88
    /* 3F218 8004EA18 21308000 */   addu      $a2, $a0, $zero
    /* 3F21C 8004EA1C 0000C294 */  lhu        $v0, 0x0($a2)
    /* 3F220 8004EA20 801F033C */  lui        $v1, (0x1F800126 >> 16)
    /* 3F224 8004EA24 26016394 */  lhu        $v1, (0x1F800126 & 0xFFFF)($v1)
    /* 3F228 8004EA28 00000000 */  nop
    /* 3F22C 8004EA2C 21104300 */  addu       $v0, $v0, $v1
    /* 3F230 8004EA30 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3F234 8004EA34 00140200 */  sll        $v0, $v0, 16
    /* 3F238 8004EA38 036C0200 */  sra        $t5, $v0, 16
    /* 3F23C 8004EA3C 0200C394 */  lhu        $v1, 0x2($a2)
    /* 3F240 8004EA40 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 3F244 8004EA44 24018494 */  lhu        $a0, (0x1F800124 & 0xFFFF)($a0)
    /* 3F248 8004EA48 0400C294 */  lhu        $v0, 0x4($a2)
    /* 3F24C 8004EA4C 23186400 */  subu       $v1, $v1, $a0
    /* 3F250 8004EA50 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3F254 8004EA54 001C0300 */  sll        $v1, $v1, 16
    /* 3F258 8004EA58 03640300 */  sra        $t4, $v1, 16
    /* 3F25C 8004EA5C 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3F260 8004EA60 2A018494 */  lhu        $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3F264 8004EA64 0600C394 */  lhu        $v1, 0x6($a2)
    /* 3F268 8004EA68 21104400 */  addu       $v0, $v0, $a0
    /* 3F26C 8004EA6C 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3F270 8004EA70 00140200 */  sll        $v0, $v0, 16
    /* 3F274 8004EA74 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3F278 8004EA78 28018494 */  lhu        $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3F27C 8004EA7C 035C0200 */  sra        $t3, $v0, 16
    /* 3F280 8004EA80 BC3A0108 */  j          .L8004EAF0
    /* 3F284 8004EA84 23186400 */   subu      $v1, $v1, $a0
  .L8004EA88:
    /* 3F288 8004EA88 0000C294 */  lhu        $v0, 0x0($a2)
    /* 3F28C 8004EA8C 801F033C */  lui        $v1, (0x1F800126 >> 16)
    /* 3F290 8004EA90 26016394 */  lhu        $v1, (0x1F800126 & 0xFFFF)($v1)
    /* 3F294 8004EA94 00000000 */  nop
    /* 3F298 8004EA98 23104300 */  subu       $v0, $v0, $v1
    /* 3F29C 8004EA9C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3F2A0 8004EAA0 00140200 */  sll        $v0, $v0, 16
    /* 3F2A4 8004EAA4 036C0200 */  sra        $t5, $v0, 16
    /* 3F2A8 8004EAA8 0200C394 */  lhu        $v1, 0x2($a2)
    /* 3F2AC 8004EAAC 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 3F2B0 8004EAB0 24018494 */  lhu        $a0, (0x1F800124 & 0xFFFF)($a0)
    /* 3F2B4 8004EAB4 0400C294 */  lhu        $v0, 0x4($a2)
    /* 3F2B8 8004EAB8 21186400 */  addu       $v1, $v1, $a0
    /* 3F2BC 8004EABC 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3F2C0 8004EAC0 001C0300 */  sll        $v1, $v1, 16
    /* 3F2C4 8004EAC4 03640300 */  sra        $t4, $v1, 16
    /* 3F2C8 8004EAC8 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3F2CC 8004EACC 2A018494 */  lhu        $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3F2D0 8004EAD0 0600C394 */  lhu        $v1, 0x6($a2)
    /* 3F2D4 8004EAD4 23104400 */  subu       $v0, $v0, $a0
    /* 3F2D8 8004EAD8 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3F2DC 8004EADC 00140200 */  sll        $v0, $v0, 16
    /* 3F2E0 8004EAE0 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3F2E4 8004EAE4 28018494 */  lhu        $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3F2E8 8004EAE8 035C0200 */  sra        $t3, $v0, 16
    /* 3F2EC 8004EAEC 21186400 */  addu       $v1, $v1, $a0
  .L8004EAF0:
    /* 3F2F0 8004EAF0 00140300 */  sll        $v0, $v1, 16
    /* 3F2F4 8004EAF4 034C0200 */  sra        $t1, $v0, 16
    /* 3F2F8 8004EAF8 0600C3A4 */  sh         $v1, 0x6($a2)
    /* 3F2FC 8004EAFC 801F0A3C */  lui        $t2, (0x1F8000C4 >> 16)
    /* 3F300 8004EB00 C4004A85 */  lh         $t2, (0x1F8000C4 & 0xFFFF)($t2)
    /* 3F304 8004EB04 23408D01 */  subu       $t0, $t4, $t5
    /* 3F308 8004EB08 23104B01 */  subu       $v0, $t2, $t3
    /* 3F30C 8004EB0C 18004800 */  mult       $v0, $t0
    /* 3F310 8004EB10 12100000 */  mflo       $v0
    /* 3F314 8004EB14 23282B01 */  subu       $a1, $t1, $t3
    /* 3F318 8004EB18 00000000 */  nop
    /* 3F31C 8004EB1C 1A004500 */  div        $zero, $v0, $a1
    /* 3F320 8004EB20 0200A014 */  bnez       $a1, .L8004EB2C
    /* 3F324 8004EB24 00000000 */   nop
    /* 3F328 8004EB28 0D000700 */  break      7
  .L8004EB2C:
    /* 3F32C 8004EB2C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F330 8004EB30 0400A114 */  bne        $a1, $at, .L8004EB44
    /* 3F334 8004EB34 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F338 8004EB38 02004114 */  bne        $v0, $at, .L8004EB44
    /* 3F33C 8004EB3C 00000000 */   nop
    /* 3F340 8004EB40 0D000600 */  break      6
  .L8004EB44:
    /* 3F344 8004EB44 12100000 */  mflo       $v0
    /* 3F348 8004EB48 801F033C */  lui        $v1, (0x1F8000C0 >> 16)
    /* 3F34C 8004EB4C 23108201 */  subu       $v0, $t4, $v0
    /* 3F350 8004EB50 04004724 */  addiu      $a3, $v0, 0x4
    /* 3F354 8004EB54 2A108701 */  slt        $v0, $t4, $a3
    /* 3F358 8004EB58 02004010 */  beqz       $v0, .L8004EB64
    /* 3F35C 8004EB5C C0006334 */   ori       $v1, $v1, (0x1F8000C0 & 0xFFFF)
    /* 3F360 8004EB60 21388001 */  addu       $a3, $t4, $zero
  .L8004EB64:
    /* 3F364 8004EB64 00006484 */  lh         $a0, 0x0($v1)
    /* 3F368 8004EB68 00000000 */  nop
    /* 3F36C 8004EB6C 23108D00 */  subu       $v0, $a0, $t5
    /* 3F370 8004EB70 18004500 */  mult       $v0, $a1
    /* 3F374 8004EB74 12100000 */  mflo       $v0
    /* 3F378 8004EB78 00000000 */  nop
    /* 3F37C 8004EB7C 00000000 */  nop
    /* 3F380 8004EB80 1A004800 */  div        $zero, $v0, $t0
    /* 3F384 8004EB84 02000015 */  bnez       $t0, .L8004EB90
    /* 3F388 8004EB88 00000000 */   nop
    /* 3F38C 8004EB8C 0D000700 */  break      7
  .L8004EB90:
    /* 3F390 8004EB90 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F394 8004EB94 04000115 */  bne        $t0, $at, .L8004EBA8
    /* 3F398 8004EB98 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F39C 8004EB9C 02004114 */  bne        $v0, $at, .L8004EBA8
    /* 3F3A0 8004EBA0 00000000 */   nop
    /* 3F3A4 8004EBA4 0D000600 */  break      6
  .L8004EBA8:
    /* 3F3A8 8004EBA8 12100000 */  mflo       $v0
    /* 3F3AC 8004EBAC 00000000 */  nop
    /* 3F3B0 8004EBB0 23102201 */  subu       $v0, $t1, $v0
    /* 3F3B4 8004EBB4 04004624 */  addiu      $a2, $v0, 0x4
    /* 3F3B8 8004EBB8 2A102601 */  slt        $v0, $t1, $a2
    /* 3F3BC 8004EBBC 02004010 */  beqz       $v0, .L8004EBC8
    /* 3F3C0 8004EBC0 2A10A401 */   slt       $v0, $t5, $a0
    /* 3F3C4 8004EBC4 21302001 */  addu       $a2, $t1, $zero
  .L8004EBC8:
    /* 3F3C8 8004EBC8 3E004010 */  beqz       $v0, .L8004ECC4
    /* 3F3CC 8004EBCC 2A108700 */   slt       $v0, $a0, $a3
    /* 3F3D0 8004EBD0 3C004010 */  beqz       $v0, .L8004ECC4
    /* 3F3D4 8004EBD4 2A106A01 */   slt       $v0, $t3, $t2
    /* 3F3D8 8004EBD8 3A004010 */  beqz       $v0, .L8004ECC4
    /* 3F3DC 8004EBDC 2A104601 */   slt       $v0, $t2, $a2
    /* 3F3E0 8004EBE0 39004010 */  beqz       $v0, .L8004ECC8
    /* 3F3E4 8004EBE4 21100000 */   addu      $v0, $zero, $zero
    /* 3F3E8 8004EBE8 801F0A3C */  lui        $t2, (0x1F8000CC >> 16)
    /* 3F3EC 8004EBEC CC004A85 */  lh         $t2, (0x1F8000CC & 0xFFFF)($t2)
    /* 3F3F0 8004EBF0 00000000 */  nop
    /* 3F3F4 8004EBF4 23104B01 */  subu       $v0, $t2, $t3
    /* 3F3F8 8004EBF8 18004800 */  mult       $v0, $t0
    /* 3F3FC 8004EBFC 12100000 */  mflo       $v0
    /* 3F400 8004EC00 00000000 */  nop
    /* 3F404 8004EC04 00000000 */  nop
    /* 3F408 8004EC08 1A004500 */  div        $zero, $v0, $a1
    /* 3F40C 8004EC0C 0200A014 */  bnez       $a1, .L8004EC18
    /* 3F410 8004EC10 00000000 */   nop
    /* 3F414 8004EC14 0D000700 */  break      7
  .L8004EC18:
    /* 3F418 8004EC18 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F41C 8004EC1C 0400A114 */  bne        $a1, $at, .L8004EC30
    /* 3F420 8004EC20 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F424 8004EC24 02004114 */  bne        $v0, $at, .L8004EC30
    /* 3F428 8004EC28 00000000 */   nop
    /* 3F42C 8004EC2C 0D000600 */  break      6
  .L8004EC30:
    /* 3F430 8004EC30 12200000 */  mflo       $a0
    /* 3F434 8004EC34 801F033C */  lui        $v1, (0x1F8000C8 >> 16)
    /* 3F438 8004EC38 C8006384 */  lh         $v1, (0x1F8000C8 & 0xFFFF)($v1)
    /* 3F43C 8004EC3C 00000000 */  nop
    /* 3F440 8004EC40 23106D00 */  subu       $v0, $v1, $t5
    /* 3F444 8004EC44 18004500 */  mult       $v0, $a1
    /* 3F448 8004EC48 12100000 */  mflo       $v0
    /* 3F44C 8004EC4C 00000000 */  nop
    /* 3F450 8004EC50 00000000 */  nop
    /* 3F454 8004EC54 1A004800 */  div        $zero, $v0, $t0
    /* 3F458 8004EC58 02000015 */  bnez       $t0, .L8004EC64
    /* 3F45C 8004EC5C 00000000 */   nop
    /* 3F460 8004EC60 0D000700 */  break      7
  .L8004EC64:
    /* 3F464 8004EC64 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F468 8004EC68 04000115 */  bne        $t0, $at, .L8004EC7C
    /* 3F46C 8004EC6C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F470 8004EC70 02004114 */  bne        $v0, $at, .L8004EC7C
    /* 3F474 8004EC74 00000000 */   nop
    /* 3F478 8004EC78 0D000600 */  break      6
  .L8004EC7C:
    /* 3F47C 8004EC7C 12100000 */  mflo       $v0
    /* 3F480 8004EC80 801F013C */  lui        $at, (0x1F8000F0 >> 16)
    /* 3F484 8004EC84 F0002DA4 */  sh         $t5, (0x1F8000F0 & 0xFFFF)($at)
    /* 3F488 8004EC88 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 3F48C 8004EC8C F80027A4 */  sh         $a3, (0x1F8000F8 & 0xFFFF)($at)
    /* 3F490 8004EC90 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3F494 8004EC94 F4002BA4 */  sh         $t3, (0x1F8000F4 & 0xFFFF)($at)
    /* 3F498 8004EC98 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3F49C 8004EC9C FC0026A4 */  sh         $a2, (0x1F8000FC & 0xFFFF)($at)
    /* 3F4A0 8004ECA0 23388401 */  subu       $a3, $t4, $a0
    /* 3F4A4 8004ECA4 2A186700 */  slt        $v1, $v1, $a3
    /* 3F4A8 8004ECA8 04006014 */  bnez       $v1, .L8004ECBC
    /* 3F4AC 8004ECAC 23302201 */   subu      $a2, $t1, $v0
    /* 3F4B0 8004ECB0 2A104601 */  slt        $v0, $t2, $a2
    /* 3F4B4 8004ECB4 04004010 */  beqz       $v0, .L8004ECC8
    /* 3F4B8 8004ECB8 02000224 */   addiu     $v0, $zero, 0x2
  .L8004ECBC:
    /* 3F4BC 8004ECBC 323B0108 */  j          .L8004ECC8
    /* 3F4C0 8004ECC0 01000224 */   addiu     $v0, $zero, 0x1
  .L8004ECC4:
    /* 3F4C4 8004ECC4 21100000 */  addu       $v0, $zero, $zero
  .L8004ECC8:
    /* 3F4C8 8004ECC8 0800E003 */  jr         $ra
    /* 3F4CC 8004ECCC 00000000 */   nop
.size func_8004EA10, . - func_8004EA10
