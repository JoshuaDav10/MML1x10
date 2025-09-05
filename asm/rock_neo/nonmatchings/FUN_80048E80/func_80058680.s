.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058680
    /* 48E80 80058680 A5610108 */  j          .L80058694
    /* 48E84 80058684 21186200 */   addu      $v1, $v1, $v0
  .L80058688:
    /* 48E88 80058688 0B80023C */  lui        $v0, %hi(Player_work + 0x4F4)
    /* 48E8C 8005868C A4564224 */  addiu      $v0, $v0, %lo(Player_work + 0x4F4)
    /* 48E90 80058690 2118C200 */  addu       $v1, $a2, $v0
  .L80058694:
    /* 48E94 80058694 00008294 */  lhu        $v0, 0x0($a0)
    /* 48E98 80058698 00000000 */  nop
    /* 48E9C 8005869C 08004014 */  bnez       $v0, .L800586C0
    /* 48EA0 800586A0 00000000 */   nop
    /* 48EA4 800586A4 FDFF043C */  lui        $a0, (0xFFFDFFFF >> 16)
    /* 48EA8 800586A8 FFFF8434 */  ori        $a0, $a0, (0xFFFDFFFF & 0xFFFF)
    /* 48EAC 800586AC 6C00E38C */  lw         $v1, 0x6C($a3)
    /* 48EB0 800586B0 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 48EB4 800586B4 02006590 */  lbu        $a1, 0x2($v1)
    /* 48EB8 800586B8 C5610108 */  j          .L80058714
    /* 48EBC 800586BC 24104400 */   and       $v0, $v0, $a0
  .L800586C0:
    /* 48EC0 800586C0 00006280 */  lb         $v0, 0x0($v1)
    /* 48EC4 800586C4 00000000 */  nop
    /* 48EC8 800586C8 40100200 */  sll        $v0, $v0, 1
    /* 48ECC 800586CC 21104400 */  addu       $v0, $v0, $a0
    /* 48ED0 800586D0 00004294 */  lhu        $v0, 0x0($v0)
    /* 48ED4 800586D4 00000000 */  nop
    /* 48ED8 800586D8 08004014 */  bnez       $v0, .L800586FC
    /* 48EDC 800586DC 0200033C */   lui       $v1, (0x20000 >> 16)
    /* 48EE0 800586E0 FDFF043C */  lui        $a0, (0xFFFDFFFF >> 16)
    /* 48EE4 800586E4 FFFF8434 */  ori        $a0, $a0, (0xFFFDFFFF & 0xFFFF)
    /* 48EE8 800586E8 6C00E38C */  lw         $v1, 0x6C($a3)
    /* 48EEC 800586EC F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 48EF0 800586F0 03006590 */  lbu        $a1, 0x3($v1)
    /* 48EF4 800586F4 C5610108 */  j          .L80058714
    /* 48EF8 800586F8 24104400 */   and       $v0, $v0, $a0
  .L800586FC:
    /* 48EFC 800586FC 6C00E28C */  lw         $v0, 0x6C($a3)
.size func_80058680, . - func_80058680
