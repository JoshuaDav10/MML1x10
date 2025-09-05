.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F368
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
.size func_8003F368, . - func_8003F368
