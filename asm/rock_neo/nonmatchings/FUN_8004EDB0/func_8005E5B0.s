.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E5B0
    /* 4EDB0 8005E5B0 21104E00 */  addu       $v0, $v0, $t6
    /* 4EDB4 8005E5B4 21104300 */  addu       $v0, $v0, $v1
    /* 4EDB8 8005E5B8 00004390 */  lbu        $v1, 0x0($v0)
    /* 4EDBC 8005E5BC 00000000 */  nop
    /* 4EDC0 8005E5C0 1400622C */  sltiu      $v0, $v1, 0x14
    /* 4EDC4 8005E5C4 08004010 */  beqz       $v0, .L8005E5E8
    /* 4EDC8 8005E5C8 00000000 */   nop
    /* 4EDCC 8005E5CC 80100300 */  sll        $v0, $v1, 2
    /* 4EDD0 8005E5D0 0180013C */  lui        $at, %hi(jtbl_800111FC)
    /* 4EDD4 8005E5D4 21082200 */  addu       $at, $at, $v0
    /* 4EDD8 8005E5D8 FC11228C */  lw         $v0, %lo(jtbl_800111FC)($at)
    /* 4EDDC 8005E5DC 00000000 */  nop
    /* 4EDE0 8005E5E0 08004000 */  jr         $v0
    /* 4EDE4 8005E5E4 00000000 */   nop
  glabel .L8005E5E8
    /* 4EDE8 8005E5E8 743E033C */  lui        $v1, (0x3E748109 >> 16)
    /* 4EDEC 8005E5EC 09816334 */  ori        $v1, $v1, (0x3E748109 & 0xFFFF)
    /* 4EDF0 8005E5F0 0D00023C */  lui        $v0, (0xD810F >> 16)
    /* 4EDF4 8005E5F4 0F814234 */  ori        $v0, $v0, (0xD810F & 0xFFFF)
    /* 4EDF8 8005E5F8 140002AD */  sw         $v0, 0x14($t0)
    /* 4EDFC 8005E5FC 09870234 */  ori        $v0, $zero, 0x8709
    /* 4EE00 8005E600 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EE04 8005E604 2D7A0108 */  j          .L8005E8B4
    /* 4EE08 8005E608 0F870234 */   ori       $v0, $zero, 0x870F
  glabel .L8005E60C
    /* 4EE0C 8005E60C 743E033C */  lui        $v1, (0x3E748101 >> 16)
    /* 4EE10 8005E610 01816334 */  ori        $v1, $v1, (0x3E748101 & 0xFFFF)
    /* 4EE14 8005E614 0D00023C */  lui        $v0, (0xD8107 >> 16)
    /* 4EE18 8005E618 07814234 */  ori        $v0, $v0, (0xD8107 & 0xFFFF)
    /* 4EE1C 8005E61C 140002AD */  sw         $v0, 0x14($t0)
    /* 4EE20 8005E620 01870234 */  ori        $v0, $zero, 0x8701
    /* 4EE24 8005E624 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EE28 8005E628 2D7A0108 */  j          .L8005E8B4
    /* 4EE2C 8005E62C 07870234 */   ori       $v0, $zero, 0x8707
  glabel .L8005E630
    /* 4EE30 8005E630 743E033C */  lui        $v1, (0x3E748111 >> 16)
    /* 4EE34 8005E634 11816334 */  ori        $v1, $v1, (0x3E748111 & 0xFFFF)
    /* 4EE38 8005E638 0D00023C */  lui        $v0, (0xD8117 >> 16)
    /* 4EE3C 8005E63C 17814234 */  ori        $v0, $v0, (0xD8117 & 0xFFFF)
    /* 4EE40 8005E640 140002AD */  sw         $v0, 0x14($t0)
    /* 4EE44 8005E644 11870234 */  ori        $v0, $zero, 0x8711
    /* 4EE48 8005E648 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EE4C 8005E64C 2D7A0108 */  j          .L8005E8B4
    /* 4EE50 8005E650 17870234 */   ori       $v0, $zero, 0x8717
  glabel .L8005E654
    /* 4EE54 8005E654 743E033C */  lui        $v1, (0x3E748119 >> 16)
    /* 4EE58 8005E658 19816334 */  ori        $v1, $v1, (0x3E748119 & 0xFFFF)
    /* 4EE5C 8005E65C 0D00023C */  lui        $v0, (0xD811F >> 16)
    /* 4EE60 8005E660 1F814234 */  ori        $v0, $v0, (0xD811F & 0xFFFF)
    /* 4EE64 8005E664 140002AD */  sw         $v0, 0x14($t0)
    /* 4EE68 8005E668 19870234 */  ori        $v0, $zero, 0x8719
    /* 4EE6C 8005E66C 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EE70 8005E670 2D7A0108 */  j          .L8005E8B4
    /* 4EE74 8005E674 1F870234 */   ori       $v0, $zero, 0x871F
  glabel .L8005E678
    /* 4EE78 8005E678 743E033C */  lui        $v1, (0x3E748121 >> 16)
    /* 4EE7C 8005E67C 21816334 */  ori        $v1, $v1, (0x3E748121 & 0xFFFF)
    /* 4EE80 8005E680 0D00023C */  lui        $v0, (0xD8127 >> 16)
    /* 4EE84 8005E684 27814234 */  ori        $v0, $v0, (0xD8127 & 0xFFFF)
    /* 4EE88 8005E688 140002AD */  sw         $v0, 0x14($t0)
    /* 4EE8C 8005E68C 21870234 */  ori        $v0, $zero, 0x8721
    /* 4EE90 8005E690 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EE94 8005E694 2D7A0108 */  j          .L8005E8B4
    /* 4EE98 8005E698 27870234 */   ori       $v0, $zero, 0x8727
  glabel .L8005E69C
    /* 4EE9C 8005E69C 743E033C */  lui        $v1, (0x3E748129 >> 16)
    /* 4EEA0 8005E6A0 29816334 */  ori        $v1, $v1, (0x3E748129 & 0xFFFF)
    /* 4EEA4 8005E6A4 0D00023C */  lui        $v0, (0xD812F >> 16)
    /* 4EEA8 8005E6A8 2F814234 */  ori        $v0, $v0, (0xD812F & 0xFFFF)
    /* 4EEAC 8005E6AC 140002AD */  sw         $v0, 0x14($t0)
    /* 4EEB0 8005E6B0 29870234 */  ori        $v0, $zero, 0x8729
    /* 4EEB4 8005E6B4 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EEB8 8005E6B8 2D7A0108 */  j          .L8005E8B4
    /* 4EEBC 8005E6BC 2F870234 */   ori       $v0, $zero, 0x872F
  glabel .L8005E6C0
    /* 4EEC0 8005E6C0 743E033C */  lui        $v1, (0x3E748131 >> 16)
    /* 4EEC4 8005E6C4 31816334 */  ori        $v1, $v1, (0x3E748131 & 0xFFFF)
    /* 4EEC8 8005E6C8 0D00023C */  lui        $v0, (0xD8137 >> 16)
    /* 4EECC 8005E6CC 37814234 */  ori        $v0, $v0, (0xD8137 & 0xFFFF)
    /* 4EED0 8005E6D0 140002AD */  sw         $v0, 0x14($t0)
    /* 4EED4 8005E6D4 31870234 */  ori        $v0, $zero, 0x8731
    /* 4EED8 8005E6D8 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EEDC 8005E6DC 2D7A0108 */  j          .L8005E8B4
    /* 4EEE0 8005E6E0 37870234 */   ori       $v0, $zero, 0x8737
  glabel .L8005E6E4
    /* 4EEE4 8005E6E4 743E033C */  lui        $v1, (0x3E748139 >> 16)
    /* 4EEE8 8005E6E8 39816334 */  ori        $v1, $v1, (0x3E748139 & 0xFFFF)
    /* 4EEEC 8005E6EC 0D00023C */  lui        $v0, (0xD813F >> 16)
    /* 4EEF0 8005E6F0 3F814234 */  ori        $v0, $v0, (0xD813F & 0xFFFF)
    /* 4EEF4 8005E6F4 140002AD */  sw         $v0, 0x14($t0)
    /* 4EEF8 8005E6F8 39870234 */  ori        $v0, $zero, 0x8739
    /* 4EEFC 8005E6FC 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EF00 8005E700 2D7A0108 */  j          .L8005E8B4
    /* 4EF04 8005E704 3F870234 */   ori       $v0, $zero, 0x873F
  glabel .L8005E708
    /* 4EF08 8005E708 743E033C */  lui        $v1, (0x3E748141 >> 16)
    /* 4EF0C 8005E70C 41816334 */  ori        $v1, $v1, (0x3E748141 & 0xFFFF)
    /* 4EF10 8005E710 0D00023C */  lui        $v0, (0xD8147 >> 16)
    /* 4EF14 8005E714 47814234 */  ori        $v0, $v0, (0xD8147 & 0xFFFF)
    /* 4EF18 8005E718 140002AD */  sw         $v0, 0x14($t0)
    /* 4EF1C 8005E71C 41870234 */  ori        $v0, $zero, 0x8741
    /* 4EF20 8005E720 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EF24 8005E724 2D7A0108 */  j          .L8005E8B4
    /* 4EF28 8005E728 47870234 */   ori       $v0, $zero, 0x8747
  glabel .L8005E72C
    /* 4EF2C 8005E72C 743E033C */  lui        $v1, (0x3E748149 >> 16)
    /* 4EF30 8005E730 49816334 */  ori        $v1, $v1, (0x3E748149 & 0xFFFF)
    /* 4EF34 8005E734 0D00023C */  lui        $v0, (0xD814F >> 16)
    /* 4EF38 8005E738 4F814234 */  ori        $v0, $v0, (0xD814F & 0xFFFF)
    /* 4EF3C 8005E73C 140002AD */  sw         $v0, 0x14($t0)
    /* 4EF40 8005E740 49870234 */  ori        $v0, $zero, 0x8749
    /* 4EF44 8005E744 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EF48 8005E748 2D7A0108 */  j          .L8005E8B4
    /* 4EF4C 8005E74C 4F870234 */   ori       $v0, $zero, 0x874F
  glabel .L8005E750
    /* 4EF50 8005E750 743E033C */  lui        $v1, (0x3E748909 >> 16)
    /* 4EF54 8005E754 09896334 */  ori        $v1, $v1, (0x3E748909 & 0xFFFF)
    /* 4EF58 8005E758 0D00023C */  lui        $v0, (0xD890F >> 16)
    /* 4EF5C 8005E75C 0F894234 */  ori        $v0, $v0, (0xD890F & 0xFFFF)
    /* 4EF60 8005E760 140002AD */  sw         $v0, 0x14($t0)
    /* 4EF64 8005E764 098F0234 */  ori        $v0, $zero, 0x8F09
    /* 4EF68 8005E768 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4EF6C 8005E76C 2D7A0108 */  j          .L8005E8B4
    /* 4EF70 8005E770 0F8F0234 */   ori       $v0, $zero, 0x8F0F
  glabel .L8005E774
    /* 4EF74 8005E774 743E033C */  lui        $v1, (0x3E740000 >> 16)
.size func_8005E5B0, . - func_8005E5B0
