.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E7EC
    /* 4EFEC 8005E7EC 27894234 */  ori        $v0, $v0, 0x8927
    /* 4EFF0 8005E7F0 140002AD */  sw         $v0, 0x14($t0)
    /* 4EFF4 8005E7F4 218F0234 */  ori        $v0, $zero, 0x8F21
    /* 4EFF8 8005E7F8 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EFFC 8005E7FC 2D7A0108 */  j          .L8005E8B4
    /* 4F000 8005E800 278F0234 */   ori       $v0, $zero, 0x8F27
  glabel .L8005E804
    /* 4F004 8005E804 743E033C */  lui        $v1, (0x3E748929 >> 16)
    /* 4F008 8005E808 29896334 */  ori        $v1, $v1, (0x3E748929 & 0xFFFF)
    /* 4F00C 8005E80C 0D00023C */  lui        $v0, (0xD892F >> 16)
    /* 4F010 8005E810 2F894234 */  ori        $v0, $v0, (0xD892F & 0xFFFF)
    /* 4F014 8005E814 140002AD */  sw         $v0, 0x14($t0)
    /* 4F018 8005E818 298F0234 */  ori        $v0, $zero, 0x8F29
    /* 4F01C 8005E81C 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4F020 8005E820 2D7A0108 */  j          .L8005E8B4
    /* 4F024 8005E824 2F8F0234 */   ori       $v0, $zero, 0x8F2F
  glabel .L8005E828
    /* 4F028 8005E828 743E033C */  lui        $v1, (0x3E748931 >> 16)
    /* 4F02C 8005E82C 31896334 */  ori        $v1, $v1, (0x3E748931 & 0xFFFF)
    /* 4F030 8005E830 0D00023C */  lui        $v0, (0xD8937 >> 16)
    /* 4F034 8005E834 37894234 */  ori        $v0, $v0, (0xD8937 & 0xFFFF)
    /* 4F038 8005E838 140002AD */  sw         $v0, 0x14($t0)
    /* 4F03C 8005E83C 318F0234 */  ori        $v0, $zero, 0x8F31
    /* 4F040 8005E840 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4F044 8005E844 2D7A0108 */  j          .L8005E8B4
    /* 4F048 8005E848 378F0234 */   ori       $v0, $zero, 0x8F37
  glabel .L8005E84C
    /* 4F04C 8005E84C 743E033C */  lui        $v1, (0x3E748939 >> 16)
    /* 4F050 8005E850 39896334 */  ori        $v1, $v1, (0x3E748939 & 0xFFFF)
    /* 4F054 8005E854 0D00023C */  lui        $v0, (0xD893F >> 16)
    /* 4F058 8005E858 3F894234 */  ori        $v0, $v0, (0xD893F & 0xFFFF)
    /* 4F05C 8005E85C 140002AD */  sw         $v0, 0x14($t0)
.size func_8005E7EC, . - func_8005E7EC
