.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E7CC
    /* 4EFCC 8005E7CC 140002AD */  sw         $v0, 0x14($t0)
    /* 4EFD0 8005E7D0 198F0234 */  ori        $v0, $zero, 0x8F19
    /* 4EFD4 8005E7D4 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EFD8 8005E7D8 2D7A0108 */  j          .L8005E8B4
    /* 4EFDC 8005E7DC 1F8F0234 */   ori       $v0, $zero, 0x8F1F
  glabel .L8005E7E0
    /* 4EFE0 8005E7E0 743E033C */  lui        $v1, (0x3E748921 >> 16)
    /* 4EFE4 8005E7E4 21896334 */  ori        $v1, $v1, (0x3E748921 & 0xFFFF)
    /* 4EFE8 8005E7E8 0D00023C */  lui        $v0, (0xD0000 >> 16)
.size func_8005E7CC, . - func_8005E7CC
