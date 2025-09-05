.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058C28
    /* 49428 80058C28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4942C 80058C2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 49430 80058C30 21808000 */  addu       $s0, $a0, $zero
    /* 49434 80058C34 1400BFAF */  sw         $ra, 0x14($sp)
    /* 49438 80058C38 C0000396 */  lhu        $v1, 0xC0($s0)
    /* 4943C 80058C3C 00000000 */  nop
    /* 49440 80058C40 01006224 */  addiu      $v0, $v1, 0x1
    /* 49444 80058C44 80180300 */  sll        $v1, $v1, 2
    /* 49448 80058C48 C00002A6 */  sh         $v0, 0xC0($s0)
    /* 4944C 80058C4C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 49450 80058C50 21187000 */  addu       $v1, $v1, $s0
    /* 49454 80058C54 03004224 */  addiu      $v0, $v0, 0x3
    /* 49458 80058C58 4C0062AC */  sw         $v0, 0x4C($v1)
    /* 4945C 80058C5C 6C00048E */  lw         $a0, 0x6C($s0)
    /* 49460 80058C60 0451010C */  jal        func_80054410
    /* 49464 80058C64 01008424 */   addiu     $a0, $a0, 0x1
    /* 49468 80058C68 9676000C */  jal        Sce_flag_test
    /* 4946C 80058C6C FFFF4430 */   andi      $a0, $v0, 0xFFFF
    /* 49470 80058C70 0B004010 */  beqz       $v0, .L80058CA0
    /* 49474 80058C74 00000000 */   nop
    /* 49478 80058C78 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4947C 80058C7C 0451010C */  jal        func_80054410
    /* 49480 80058C80 01008424 */   addiu     $a0, $a0, 0x1
    /* 49484 80058C84 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 49488 80058C88 80100200 */  sll        $v0, $v0, 2
    /* 4948C 80058C8C 0980013C */  lui        $at, %hi(D_8008BAA4)
    /* 49490 80058C90 21082200 */  addu       $at, $at, $v0
    /* 49494 80058C94 A4BA228C */  lw         $v0, %lo(D_8008BAA4)($at)
    /* 49498 80058C98 2C630108 */  j          .L80058CB0
    /* 4949C 80058C9C 6C0002AE */   sw        $v0, 0x6C($s0)
  .L80058CA0:
    /* 494A0 80058CA0 0980023C */  lui        $v0, %hi(D_8008CE58)
    /* 494A4 80058CA4 58CE428C */  lw         $v0, %lo(D_8008CE58)($v0)
    /* 494A8 80058CA8 00000000 */  nop
    /* 494AC 80058CAC 6C0002AE */  sw         $v0, 0x6C($s0)
  .L80058CB0:
    /* 494B0 80058CB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 494B4 80058CB4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 494B8 80058CB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 494BC 80058CBC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 494C0 80058CC0 0800E003 */  jr         $ra
    /* 494C4 80058CC4 00000000 */   nop
.size func_80058C28, . - func_80058C28
