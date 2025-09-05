.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E778
    /* 4EF78 8005E778 01896334 */  ori        $v1, $v1, 0x8901
    /* 4EF7C 8005E77C 0D00023C */  lui        $v0, (0xD8907 >> 16)
    /* 4EF80 8005E780 07894234 */  ori        $v0, $v0, (0xD8907 & 0xFFFF)
    /* 4EF84 8005E784 140002AD */  sw         $v0, 0x14($t0)
    /* 4EF88 8005E788 018F0234 */  ori        $v0, $zero, 0x8F01
    /* 4EF8C 8005E78C 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EF90 8005E790 2D7A0108 */  j          .L8005E8B4
    /* 4EF94 8005E794 078F0234 */   ori       $v0, $zero, 0x8F07
  glabel .L8005E798
    /* 4EF98 8005E798 743E033C */  lui        $v1, (0x3E748911 >> 16)
    /* 4EF9C 8005E79C 11896334 */  ori        $v1, $v1, (0x3E748911 & 0xFFFF)
    /* 4EFA0 8005E7A0 0D00023C */  lui        $v0, (0xD8917 >> 16)
    /* 4EFA4 8005E7A4 17894234 */  ori        $v0, $v0, (0xD8917 & 0xFFFF)
    /* 4EFA8 8005E7A8 140002AD */  sw         $v0, 0x14($t0)
    /* 4EFAC 8005E7AC 118F0234 */  ori        $v0, $zero, 0x8F11
    /* 4EFB0 8005E7B0 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EFB4 8005E7B4 2D7A0108 */  j          .L8005E8B4
    /* 4EFB8 8005E7B8 178F0234 */   ori       $v0, $zero, 0x8F17
  glabel .L8005E7BC
    /* 4EFBC 8005E7BC 743E033C */  lui        $v1, (0x3E748919 >> 16)
    /* 4EFC0 8005E7C0 19896334 */  ori        $v1, $v1, (0x3E748919 & 0xFFFF)
    /* 4EFC4 8005E7C4 0D00023C */  lui        $v0, (0xD891F >> 16)
    /* 4EFC8 8005E7C8 1F894234 */  ori        $v0, $v0, (0xD891F & 0xFFFF)
.size func_8005E778, . - func_8005E778
