.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F288
    /* 2FA88 8003F288 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FA8C 8003F28C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FA90 8003F290 21808000 */  addu       $s0, $a0, $zero
    /* 2FA94 8003F294 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FA98 8003F298 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2FA9C 8003F29C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FAA0 8003F2A0 15006210 */  beq        $v1, $v0, .L8003F2F8
    /* 2FAA4 8003F2A4 02006228 */   slti      $v0, $v1, 0x2
    /* 2FAA8 8003F2A8 05004010 */  beqz       $v0, .L8003F2C0
    /* 2FAAC 8003F2AC 00000000 */   nop
    /* 2FAB0 8003F2B0 08006010 */  beqz       $v1, .L8003F2D4
    /* 2FAB4 8003F2B4 21200002 */   addu      $a0, $s0, $zero
    /* 2FAB8 8003F2B8 F5FC0008 */  j          .L8003F3D4
    /* 2FABC 8003F2BC 00000000 */   nop
  .L8003F2C0:
    /* 2FAC0 8003F2C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 2FAC4 8003F2C4 41006210 */  beq        $v1, $v0, .L8003F3CC
    /* 2FAC8 8003F2C8 0C000224 */   addiu     $v0, $zero, 0xC
    /* 2FACC 8003F2CC F5FC0008 */  j          .L8003F3D4
    /* 2FAD0 8003F2D0 00000000 */   nop
  .L8003F2D4:
    /* 2FAD4 8003F2D4 80000524 */  addiu      $a1, $zero, 0x80
    /* 2FAD8 8003F2D8 21300000 */  addu       $a2, $zero, $zero
    /* 2FADC 8003F2DC 7707010C */  jal        func_80041DDC
    /* 2FAE0 8003F2E0 01000724 */   addiu     $a3, $zero, 0x1
    /* 2FAE4 8003F2E4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FAE8 8003F2E8 00000000 */  nop
    /* 2FAEC 8003F2EC 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FAF0 8003F2F0 F5FC0008 */  j          .L8003F3D4
    /* 2FAF4 8003F2F4 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003F2F8:
    /* 2FAF8 8003F2F8 1700028A */  lwl        $v0, 0x17($s0)
    /* 2FAFC 8003F2FC 1400029A */  lwr        $v0, 0x14($s0)
    /* 2FB00 8003F300 1B00038A */  lwl        $v1, 0x1B($s0)
    /* 2FB04 8003F304 1800039A */  lwr        $v1, 0x18($s0)
    /* 2FB08 8003F308 2F0002AA */  swl        $v0, 0x2F($s0)
    /* 2FB0C 8003F30C 2C0002BA */  swr        $v0, 0x2C($s0)
    /* 2FB10 8003F310 330003AA */  swl        $v1, 0x33($s0)
    /* 2FB14 8003F314 300003BA */  swr        $v1, 0x30($s0)
    /* 2FB18 8003F318 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2FB1C 8003F31C 2000038E */  lw         $v1, 0x20($s0)
    /* 2FB20 8003F320 2400048E */  lw         $a0, 0x24($s0)
    /* 2FB24 8003F324 2800058E */  lw         $a1, 0x28($s0)
    /* 2FB28 8003F328 340002AE */  sw         $v0, 0x34($s0)
    /* 2FB2C 8003F32C 380003AE */  sw         $v1, 0x38($s0)
    /* 2FB30 8003F330 3C0004AE */  sw         $a0, 0x3C($s0)
    /* 2FB34 8003F334 400005AE */  sw         $a1, 0x40($s0)
    /* 2FB38 8003F338 5700028A */  lwl        $v0, 0x57($s0)
    /* 2FB3C 8003F33C 5400029A */  lwr        $v0, 0x54($s0)
    /* 2FB40 8003F340 5B00038A */  lwl        $v1, 0x5B($s0)
    /* 2FB44 8003F344 5800039A */  lwr        $v1, 0x58($s0)
    /* 2FB48 8003F348 5F0002AA */  swl        $v0, 0x5F($s0)
    /* 2FB4C 8003F34C 5C0002BA */  swr        $v0, 0x5C($s0)
    /* 2FB50 8003F350 630003AA */  swl        $v1, 0x63($s0)
    /* 2FB54 8003F354 600003BA */  swr        $v1, 0x60($s0)
    /* 2FB58 8003F358 AC000292 */  lbu        $v0, 0xAC($s0)
    /* 2FB5C 8003F35C 00000000 */  nop
    /* 2FB60 8003F360 AD0002A2 */  sb         $v0, 0xAD($s0)
    /* 2FB64 8003F364 3B04028A */  lwl        $v0, 0x43B($s0)
    /* 2FB68 8003F368 3804029A */  lwr        $v0, 0x438($s0)
    /* 2FB6C 8003F36C 3F04038A */  lwl        $v1, 0x43F($s0)
    /* 2FB70 8003F370 3C04039A */  lwr        $v1, 0x43C($s0)
    /* 2FB74 8003F374 170002AA */  swl        $v0, 0x17($s0)
    /* 2FB78 8003F378 140002BA */  swr        $v0, 0x14($s0)
    /* 2FB7C 8003F37C 1B0003AA */  swl        $v1, 0x1B($s0)
    /* 2FB80 8003F380 180003BA */  swr        $v1, 0x18($s0)
    /* 2FB84 8003F384 2804028E */  lw         $v0, 0x428($s0)
    /* 2FB88 8003F388 2C04038E */  lw         $v1, 0x42C($s0)
    /* 2FB8C 8003F38C 3004048E */  lw         $a0, 0x430($s0)
    /* 2FB90 8003F390 3404058E */  lw         $a1, 0x434($s0)
    /* 2FB94 8003F394 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 2FB98 8003F398 200003AE */  sw         $v1, 0x20($s0)
    /* 2FB9C 8003F39C 240004AE */  sw         $a0, 0x24($s0)
    /* 2FBA0 8003F3A0 280005AE */  sw         $a1, 0x28($s0)
    /* 2FBA4 8003F3A4 4304028A */  lwl        $v0, 0x443($s0)
    /* 2FBA8 8003F3A8 4004029A */  lwr        $v0, 0x440($s0)
    /* 2FBAC 8003F3AC 4704038A */  lwl        $v1, 0x447($s0)
    /* 2FBB0 8003F3B0 4404039A */  lwr        $v1, 0x444($s0)
    /* 2FBB4 8003F3B4 570002AA */  swl        $v0, 0x57($s0)
    /* 2FBB8 8003F3B8 540002BA */  swr        $v0, 0x54($s0)
    /* 2FBBC 8003F3BC 5B0003AA */  swl        $v1, 0x5B($s0)
    /* 2FBC0 8003F3C0 580003BA */  swr        $v1, 0x58($s0)
    /* 2FBC4 8003F3C4 F5FC0008 */  j          .L8003F3D4
    /* 2FBC8 8003F3C8 00000000 */   nop
  .L8003F3CC:
    /* 2FBCC 8003F3CC 090002A2 */  sb         $v0, 0x9($s0)
    /* 2FBD0 8003F3D0 0A0000A2 */  sb         $zero, 0xA($s0)
  .L8003F3D4:
    /* 2FBD4 8003F3D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FBD8 8003F3D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FBDC 8003F3DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FBE0 8003F3E0 0800E003 */  jr         $ra
    /* 2FBE4 8003F3E4 00000000 */   nop
.size func_8003F288, . - func_8003F288
