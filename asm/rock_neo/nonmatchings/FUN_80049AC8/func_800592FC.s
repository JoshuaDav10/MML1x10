.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800592FC
    /* 49AFC 800592FC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 49B00 80059300 1800B0AF */  sw         $s0, 0x18($sp)
    /* 49B04 80059304 21808000 */  addu       $s0, $a0, $zero
    /* 49B08 80059308 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 49B0C 8005930C 0000038E */  lw         $v1, 0x0($s0)
    /* 49B10 80059310 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* 49B14 80059314 24106400 */  and        $v0, $v1, $a0
    /* 49B18 80059318 09004014 */  bnez       $v0, .L80059340
    /* 49B1C 8005931C BFFF023C */   lui       $v0, (0xFFBFFFFF >> 16)
    /* 49B20 80059320 FFFF023C */  lui        $v0, (0xFFFF7FFF >> 16)
    /* 49B24 80059324 FF7F4234 */  ori        $v0, $v0, (0xFFFF7FFF & 0xFFFF)
    /* 49B28 80059328 25186400 */  or         $v1, $v1, $a0
    /* 49B2C 8005932C 24186200 */  and        $v1, $v1, $v0
    /* 49B30 80059330 05000224 */  addiu      $v0, $zero, 0x5
    /* 49B34 80059334 000003AE */  sw         $v1, 0x0($s0)
    /* 49B38 80059338 040002A6 */  sh         $v0, 0x4($s0)
    /* 49B3C 8005933C BFFF023C */  lui        $v0, (0xFFBFFFFF >> 16)
  .L80059340:
    /* 49B40 80059340 FFFF4234 */  ori        $v0, $v0, (0xFFBFFFFF & 0xFFFF)
    /* 49B44 80059344 0000038E */  lw         $v1, 0x0($s0)
    /* 49B48 80059348 04000486 */  lh         $a0, 0x4($s0)
    /* 49B4C 8005934C 24186200 */  and        $v1, $v1, $v0
    /* 49B50 80059350 21108000 */  addu       $v0, $a0, $zero
    /* 49B54 80059354 4400801C */  bgtz       $a0, .L80059468
    /* 49B58 80059358 000003AE */   sw        $v1, 0x0($s0)
    /* 49B5C 8005935C CA8F010C */  jal        Game_logo_kill
    /* 49B60 80059360 21200000 */   addu      $a0, $zero, $zero
    /* 49B64 80059364 CA8F010C */  jal        Game_logo_kill
    /* 49B68 80059368 01000424 */   addiu     $a0, $zero, 0x1
    /* 49B6C 8005936C BA000296 */  lhu        $v0, 0xBA($s0)
    /* 49B70 80059370 00000000 */  nop
    /* 49B74 80059374 00404230 */  andi       $v0, $v0, 0x4000
    /* 49B78 80059378 1C004010 */  beqz       $v0, .L800593EC
    /* 49B7C 8005937C 00FF0224 */   addiu     $v0, $zero, -0x100
    /* 49B80 80059380 F411838F */  lw         $v1, %gp_rel(Moji_flag)($gp)
    /* 49B84 80059384 00000000 */  nop
    /* 49B88 80059388 24206200 */  and        $a0, $v1, $v0
    /* 49B8C 8005938C 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
.size func_800592FC, . - func_800592FC
