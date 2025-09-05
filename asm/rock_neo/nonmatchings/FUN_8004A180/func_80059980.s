.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059980
    /* 4A180 80059980 21184000 */  addu       $v1, $v0, $zero
    /* 4A184 80059984 CA8F010C */  jal        Game_logo_kill
    /* 4A188 80059988 21200000 */   addu      $a0, $zero, $zero
    /* 4A18C 8005998C CA8F010C */  jal        Game_logo_kill
    /* 4A190 80059990 01000424 */   addiu     $a0, $zero, 0x1
    /* 4A194 80059994 B800028E */  lw         $v0, 0xB8($s0)
    /* 4A198 80059998 0810033C */  lui        $v1, (0x10080000 >> 16)
    /* 4A19C 8005999C 24104300 */  and        $v0, $v0, $v1
    /* 4A1A0 800599A0 06004010 */  beqz       $v0, .L800599BC
    /* 4A1A4 800599A4 83000424 */   addiu     $a0, $zero, 0x83
    /* 4A1A8 800599A8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A1AC 800599AC 0268000C */  jal        Sound_call
    /* 4A1B0 800599B0 21300000 */   addu      $a2, $zero, $zero
    /* 4A1B4 800599B4 8C660108 */  j          .L80059A30
    /* 4A1B8 800599B8 FFFE043C */   lui       $a0, (0xFEFF0000 >> 16)
  .L800599BC:
    /* 4A1BC 800599BC BA000296 */  lhu        $v0, 0xBA($s0)
    /* 4A1C0 800599C0 00000000 */  nop
    /* 4A1C4 800599C4 00404230 */  andi       $v0, $v0, 0x4000
    /* 4A1C8 800599C8 34004010 */  beqz       $v0, .L80059A9C
    /* 4A1CC 800599CC 82000424 */   addiu     $a0, $zero, 0x82
    /* 4A1D0 800599D0 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A1D4 800599D4 0268000C */  jal        Sound_call
    /* 4A1D8 800599D8 21300000 */   addu      $a2, $zero, $zero
    /* 4A1DC 800599DC 71000282 */  lb         $v0, 0x71($s0)
    /* 4A1E0 800599E0 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4A1E4 800599E4 00000000 */  nop
    /* 4A1E8 800599E8 21104300 */  addu       $v0, $v0, $v1
    /* 4A1EC 800599EC 21105100 */  addu       $v0, $v0, $s1
    /* 4A1F0 800599F0 0A80033C */  lui        $v1, %hi(D_80098B2D)
    /* 4A1F4 800599F4 2D8B6390 */  lbu        $v1, %lo(D_80098B2D)($v1)
    /* 4A1F8 800599F8 00004490 */  lbu        $a0, 0x0($v0)
    /* 4A1FC 800599FC 0B80013C */  lui        $at, (0x800B0000 >> 16)
.size func_80059980, . - func_80059980
