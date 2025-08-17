.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001BB4C
    /* C34C 8001BB4C 0A80033C */  lui        $v1, %hi(D_800989C4)
    /* C350 8001BB50 C489638C */  lw         $v1, %lo(D_800989C4)($v1)
    /* C354 8001BB54 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* C358 8001BB58 3400BFAF */  sw         $ra, 0x34($sp)
    /* C35C 8001BB5C 3000B6AF */  sw         $s6, 0x30($sp)
    /* C360 8001BB60 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* C364 8001BB64 2800B4AF */  sw         $s4, 0x28($sp)
    /* C368 8001BB68 2400B3AF */  sw         $s3, 0x24($sp)
    /* C36C 8001BB6C 2000B2AF */  sw         $s2, 0x20($sp)
    /* C370 8001BB70 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C374 8001BB74 0500622C */  sltiu      $v0, $v1, 0x5
    /* C378 8001BB78 12034010 */  beqz       $v0, .L8001C7C4
    /* C37C 8001BB7C 1800B0AF */   sw        $s0, 0x18($sp)
    /* C380 8001BB80 80100300 */  sll        $v0, $v1, 2
    /* C384 8001BB84 0180013C */  lui        $at, %hi(jtbl_80010244)
    /* C388 8001BB88 21082200 */  addu       $at, $at, $v0
    /* C38C 8001BB8C 4402228C */  lw         $v0, %lo(jtbl_80010244)($at)
    /* C390 8001BB90 00000000 */  nop
    /* C394 8001BB94 08004000 */  jr         $v0
    /* C398 8001BB98 00000000 */   nop
  glabel .L8001BB9C
    /* C39C 8001BB9C 0A80023C */  lui        $v0, %hi(D_80098964)
    /* C3A0 8001BBA0 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* C3A4 8001BBA4 00000000 */  nop
    /* C3A8 8001BBA8 03004014 */  bnez       $v0, .L8001BBB8
    /* C3AC 8001BBAC 00000000 */   nop
    /* C3B0 8001BBB0 DF72000C */  jal        func_8001CB7C
    /* C3B4 8001BBB4 00000000 */   nop
  .L8001BBB8:
    /* C3B8 8001BBB8 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* C3BC 8001BBBC C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* C3C0 8001BBC0 00000000 */  nop
    /* C3C4 8001BBC4 01004224 */  addiu      $v0, $v0, 0x1
    /* C3C8 8001BBC8 0A80013C */  lui        $at, %hi(D_800989C4)
    /* C3CC 8001BBCC C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  glabel .L8001BBD0
    /* C3D0 8001BBD0 0A80023C */  lui        $v0, %hi(D_80098964)
    /* C3D4 8001BBD4 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* C3D8 8001BBD8 00000000 */  nop
    /* C3DC 8001BBDC F9024010 */  beqz       $v0, .L8001C7C4
    /* C3E0 8001BBE0 00000000 */   nop
    /* C3E4 8001BBE4 C974000C */  jal        func_8001D324
    /* C3E8 8001BBE8 A0000424 */   addiu     $a0, $zero, 0xA0
    /* C3EC 8001BBEC 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* C3F0 8001BBF0 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* C3F4 8001BBF4 00000000 */  nop
    /* C3F8 8001BBF8 01004224 */  addiu      $v0, $v0, 0x1
    /* C3FC 8001BBFC 0A80013C */  lui        $at, %hi(D_800989C4)
    /* C400 8001BC00 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  glabel .L8001BC04
    /* C404 8001BC04 0A80023C */  lui        $v0, %hi(D_80098828)
    /* C408 8001BC08 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* C40C 8001BC0C 00000000 */  nop
    /* C410 8001BC10 05004010 */  beqz       $v0, .L8001BC28
    /* C414 8001BC14 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* C418 8001BC18 0A80013C */  lui        $at, %hi(D_80098828)
    /* C41C 8001BC1C 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* C420 8001BC20 F1710008 */  j          .L8001C7C4
    /* C424 8001BC24 00000000 */   nop
  .L8001BC28:
    /* C428 8001BC28 0A80023C */  lui        $v0, %hi(D_80098A84)
    /* C42C 8001BC2C 848A428C */  lw         $v0, %lo(D_80098A84)($v0)
    /* C430 8001BC30 00000000 */  nop
    /* C434 8001BC34 0400448C */  lw         $a0, 0x4($v0)
    /* C438 8001BC38 E673000C */  jal        func_8001CF98
    /* C43C 8001BC3C 00000000 */   nop
    /* C440 8001BC40 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* C444 8001BC44 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* C448 8001BC48 0A80013C */  lui        $at, %hi(D_800988D0)
    /* C44C 8001BC4C D08820A0 */  sb         $zero, %lo(D_800988D0)($at)
    /* C450 8001BC50 0A80013C */  lui        $at, %hi(D_800987A8)
    /* C454 8001BC54 A88720AC */  sw         $zero, %lo(D_800987A8)($at)
    /* C458 8001BC58 0A80013C */  lui        $at, %hi(D_80098828)
    /* C45C 8001BC5C 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* C460 8001BC60 01004224 */  addiu      $v0, $v0, 0x1
    /* C464 8001BC64 0A80013C */  lui        $at, %hi(D_800989C4)
    /* C468 8001BC68 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  glabel .L8001BC6C
    /* C46C 8001BC6C 0A80023C */  lui        $v0, %hi(D_80098828)
    /* C470 8001BC70 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* C474 8001BC74 96000324 */  addiu      $v1, $zero, 0x96
    /* C478 8001BC78 01004224 */  addiu      $v0, $v0, 0x1
    /* C47C 8001BC7C 0A80013C */  lui        $at, %hi(D_80098828)
    /* C480 8001BC80 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* C484 8001BC84 09004314 */  bne        $v0, $v1, .L8001BCAC
    /* C488 8001BC88 00000000 */   nop
    /* C48C 8001BC8C 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* C490 8001BC90 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* C494 8001BC94 00000000 */  nop
    /* C498 8001BC98 02004234 */  ori        $v0, $v0, 0x2
    /* C49C 8001BC9C 0A80013C */  lui        $at, %hi(D_8009896C)
    /* C4A0 8001BCA0 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* C4A4 8001BCA4 F1710008 */  j          .L8001C7C4
    /* C4A8 8001BCA8 00000000 */   nop
  .L8001BCAC:
    /* C4AC 8001BCAC 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* C4B0 8001BCB0 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* C4B4 8001BCB4 0A80013C */  lui        $at, %hi(D_80098B38)
    /* C4B8 8001BCB8 21082200 */  addu       $at, $at, $v0
    /* C4BC 8001BCBC 388B2390 */  lbu        $v1, %lo(D_80098B38)($at)
    /* C4C0 8001BCC0 01000224 */  addiu      $v0, $zero, 0x1
    /* C4C4 8001BCC4 BF026214 */  bne        $v1, $v0, .L8001C7C4
    /* C4C8 8001BCC8 01001624 */   addiu     $s6, $zero, 0x1
    /* C4CC 8001BCCC 0B80153C */  lui        $s5, %hi(D_800B5DB0)
    /* C4D0 8001BCD0 B05DB526 */  addiu      $s5, $s5, %lo(D_800B5DB0)
    /* C4D4 8001BCD4 0C80133C */  lui        $s3, %hi(D_800C5604)
    /* C4D8 8001BCD8 04567326 */  addiu      $s3, $s3, %lo(D_800C5604)
    /* C4DC 8001BCDC 08007226 */  addiu      $s2, $s3, 0x8
    /* C4E0 8001BCE0 1C007426 */  addiu      $s4, $s3, 0x1C
  .L8001BCE4:
    /* C4E4 8001BCE4 0A80033C */  lui        $v1, %hi(D_800989C8)
    /* C4E8 8001BCE8 C889638C */  lw         $v1, %lo(D_800989C8)($v1)
    /* C4EC 8001BCEC 00000000 */  nop
    /* C4F0 8001BCF0 0A00622C */  sltiu      $v0, $v1, 0xA
    /* C4F4 8001BCF4 92024010 */  beqz       $v0, .L8001C740
    /* C4F8 8001BCF8 80100300 */   sll       $v0, $v1, 2
    /* C4FC 8001BCFC 0180013C */  lui        $at, %hi(jtbl_8001025C)
    /* C500 8001BD00 21082200 */  addu       $at, $at, $v0
    /* C504 8001BD04 5C02228C */  lw         $v0, %lo(jtbl_8001025C)($at)
    /* C508 8001BD08 00000000 */  nop
    /* C50C 8001BD0C 08004000 */  jr         $v0
    /* C510 8001BD10 00000000 */   nop
  glabel .L8001BD14
    /* C514 8001BD14 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* C518 8001BD18 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* C51C 8001BD1C 00000000 */  nop
    /* C520 8001BD20 C0120200 */  sll        $v0, $v0, 11
    /* C524 8001BD24 21305500 */  addu       $a2, $v0, $s5
    /* C528 8001BD28 0000C38C */  lw         $v1, 0x0($a2)
    /* C52C 8001BD2C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C530 8001BD30 0A80013C */  lui        $at, %hi(D_80098A54)
    /* C534 8001BD34 548A23AC */  sw         $v1, %lo(D_80098A54)($at)
    /* C538 8001BD38 9C026210 */  beq        $v1, $v0, .L8001C7AC
    /* C53C 8001BD3C 04000224 */   addiu     $v0, $zero, 0x4
    /* C540 8001BD40 0400C28C */  lw         $v0, 0x4($a2)
    /* C544 8001BD44 00000000 */  nop
    /* C548 8001BD48 000062AE */  sw         $v0, 0x0($s3)
    /* C54C 8001BD4C 0800C28C */  lw         $v0, 0x8($a2)
    /* C550 8001BD50 00000000 */  nop
    /* C554 8001BD54 040062AE */  sw         $v0, 0x4($s3)
    /* C558 8001BD58 0B00622C */  sltiu      $v0, $v1, 0xB
    /* C55C 8001BD5C 4B014010 */  beqz       $v0, .L8001C28C
    /* C560 8001BD60 2180C000 */   addu      $s0, $a2, $zero
    /* C564 8001BD64 80100300 */  sll        $v0, $v1, 2
    /* C568 8001BD68 0180013C */  lui        $at, %hi(jtbl_80010284)
    /* C56C 8001BD6C 21082200 */  addu       $at, $at, $v0
    /* C570 8001BD70 8402228C */  lw         $v0, %lo(jtbl_80010284)($at)
    /* C574 8001BD74 00000000 */  nop
    /* C578 8001BD78 08004000 */  jr         $v0
    /* C57C 8001BD7C 00000000 */   nop
  glabel .L8001BD80
    /* C580 8001BD80 FCFF428E */  lw         $v0, -0x4($s2)
    /* C584 8001BD84 0C00038E */  lw         $v1, 0xC($s0)
    /* C588 8001BD88 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C58C 8001BD8C 000043AE */  sw         $v1, 0x0($s2)
    /* C590 8001BD90 A3700008 */  j          .L8001C28C
    /* C594 8001BD94 FCFF42AE */   sw        $v0, -0x4($s2)
  glabel .L8001BD98
    /* C598 8001BD98 0C00038E */  lw         $v1, 0xC($s0)
    /* C59C 8001BD9C 00000000 */  nop
    /* C5A0 8001BDA0 000043AE */  sw         $v1, 0x0($s2)
    /* C5A4 8001BDA4 1000028E */  lw         $v0, 0x10($s0)
    /* C5A8 8001BDA8 00000000 */  nop
    /* C5AC 8001BDAC 040042AE */  sw         $v0, 0x4($s2)
    /* C5B0 8001BDB0 1400028E */  lw         $v0, 0x14($s0)
    /* C5B4 8001BDB4 00000000 */  nop
    /* C5B8 8001BDB8 080042AE */  sw         $v0, 0x8($s2)
    /* C5BC 8001BDBC 1800028E */  lw         $v0, 0x18($s0)
    /* C5C0 8001BDC0 00000000 */  nop
    /* C5C4 8001BDC4 0C0042AE */  sw         $v0, 0xC($s2)
    /* C5C8 8001BDC8 1C00028E */  lw         $v0, 0x1C($s0)
    /* C5CC 8001BDCC 00000000 */  nop
    /* C5D0 8001BDD0 100042AE */  sw         $v0, 0x10($s2)
    /* C5D4 8001BDD4 2000028E */  lw         $v0, 0x20($s0)
    /* C5D8 8001BDD8 00000000 */  nop
    /* C5DC 8001BDDC 140042AE */  sw         $v0, 0x14($s2)
    /* C5E0 8001BDE0 2400028E */  lw         $v0, 0x24($s0)
    /* C5E4 8001BDE4 00000000 */  nop
    /* C5E8 8001BDE8 180042AE */  sw         $v0, 0x18($s2)
    /* C5EC 8001BDEC 2800028E */  lw         $v0, 0x28($s0)
    /* C5F0 8001BDF0 0A80113C */  lui        $s1, %hi(D_8009BE48)
    /* C5F4 8001BDF4 48BE3126 */  addiu      $s1, $s1, %lo(D_8009BE48)
    /* C5F8 8001BDF8 2C0040AE */  sw         $zero, 0x2C($s2)
    /* C5FC 8001BDFC 280040AE */  sw         $zero, 0x28($s2)
    /* C600 8001BE00 1C0042AE */  sw         $v0, 0x1C($s2)
    /* C604 8001BE04 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C608 8001BE08 36006210 */  beq        $v1, $v0, .L8001BEE4
    /* C60C 8001BE0C 20000224 */   addiu     $v0, $zero, 0x20
    /* C610 8001BE10 0C00078E */  lw         $a3, 0xC($s0)
    /* C614 8001BE14 00000000 */  nop
    /* C618 8001BE18 4001E22C */  sltiu      $v0, $a3, 0x140
    /* C61C 8001BE1C 23004010 */  beqz       $v0, .L8001BEAC
    /* C620 8001BE20 0001C424 */   addiu     $a0, $a2, 0x100
    /* C624 8001BE24 1800038E */  lw         $v1, 0x18($s0)
    /* C628 8001BE28 1400028E */  lw         $v0, 0x14($s0)
    /* C62C 8001BE2C 1000058E */  lw         $a1, 0x10($s0)
    /* C630 8001BE30 18006200 */  mult       $v1, $v0
    /* C634 8001BE34 0001A330 */  andi       $v1, $a1, 0x100
    /* C638 8001BE38 02110300 */  srl        $v0, $v1, 4
    /* C63C 8001BE3C 2128A200 */  addu       $a1, $a1, $v0
    /* C640 8001BE40 10FFA524 */  addiu      $a1, $a1, -0xF0
    /* C644 8001BE44 2328A300 */  subu       $a1, $a1, $v1
    /* C648 8001BE48 002A0500 */  sll        $a1, $a1, 8
    /* C64C 8001BE4C 2128E500 */  addu       $a1, $a3, $a1
    /* C650 8001BE50 40280500 */  sll        $a1, $a1, 1
    /* C654 8001BE54 0B80023C */  lui        $v0, %hi(D_800AD168)
    /* C658 8001BE58 68D14224 */  addiu      $v0, $v0, %lo(D_800AD168)
    /* C65C 8001BE5C 2128A200 */  addu       $a1, $a1, $v0
    /* C660 8001BE60 12400000 */  mflo       $t0
    /* C664 8001BE64 02310800 */  srl        $a2, $t0, 4
    /* C668 8001BE68 A95D000C */  jal        func_800176A4
    /* C66C 8001BE6C 40300600 */   sll       $a2, $a2, 1
    /* C670 8001BE70 1000028E */  lw         $v0, 0x10($s0)
    /* C674 8001BE74 00000000 */  nop
    /* C678 8001BE78 00014430 */  andi       $a0, $v0, 0x100
    /* C67C 8001BE7C 02190400 */  srl        $v1, $a0, 4
    /* C680 8001BE80 21104300 */  addu       $v0, $v0, $v1
    /* C684 8001BE84 10FF4224 */  addiu      $v0, $v0, -0xF0
    /* C688 8001BE88 23104400 */  subu       $v0, $v0, $a0
    /* C68C 8001BE8C 0A80033C */  lui        $v1, %hi(D_80098868)
    /* C690 8001BE90 6888638C */  lw         $v1, %lo(D_80098868)($v1)
    /* C694 8001BE94 04105600 */  sllv       $v0, $s6, $v0
    /* C698 8001BE98 25186200 */  or         $v1, $v1, $v0
    /* C69C 8001BE9C 0A80013C */  lui        $at, %hi(D_80098868)
    /* C6A0 8001BEA0 688823AC */  sw         $v1, %lo(D_80098868)($at)
    /* C6A4 8001BEA4 B96F0008 */  j          .L8001BEE4
    /* C6A8 8001BEA8 20000224 */   addiu     $v0, $zero, 0x20
  .L8001BEAC:
    /* C6AC 8001BEAC 000027A6 */  sh         $a3, 0x0($s1)
    /* C6B0 8001BEB0 1000028E */  lw         $v0, 0x10($s0)
    /* C6B4 8001BEB4 0A80013C */  lui        $at, %hi(D_8009BE4A)
    /* C6B8 8001BEB8 4ABE22A4 */  sh         $v0, %lo(D_8009BE4A)($at)
    /* C6BC 8001BEBC 1400028E */  lw         $v0, 0x14($s0)
    /* C6C0 8001BEC0 21202002 */  addu       $a0, $s1, $zero
    /* C6C4 8001BEC4 0A80013C */  lui        $at, %hi(D_8009BE4C)
    /* C6C8 8001BEC8 4CBE22A4 */  sh         $v0, %lo(D_8009BE4C)($at)
    /* C6CC 8001BECC 1800028E */  lw         $v0, 0x18($s0)
    /* C6D0 8001BED0 0A80013C */  lui        $at, %hi(D_8009BE4E)
    /* C6D4 8001BED4 4EBE22A4 */  sh         $v0, %lo(D_8009BE4E)($at)
    /* C6D8 8001BED8 BCF4010C */  jal        LoadImage
    /* C6DC 8001BEDC 0001C524 */   addiu     $a1, $a2, 0x100
    /* C6E0 8001BEE0 20000224 */  addiu      $v0, $zero, 0x20
  .L8001BEE4:
    /* C6E4 8001BEE4 0C80033C */  lui        $v1, %hi(D_800C5608)
    /* C6E8 8001BEE8 08566324 */  addiu      $v1, $v1, %lo(D_800C5608)
    /* C6EC 8001BEEC 040022A6 */  sh         $v0, 0x4($s1)
    /* C6F0 8001BEF0 60700008 */  j          .L8001C180
    /* C6F4 8001BEF4 060022A6 */   sh        $v0, 0x6($s1)
  glabel .L8001BEF8
    /* C6F8 8001BEF8 0C00028E */  lw         $v0, 0xC($s0)
    /* C6FC 8001BEFC 00000000 */  nop
    /* C700 8001BF00 000042AE */  sw         $v0, 0x0($s2)
    /* C704 8001BF04 1000028E */  lw         $v0, 0x10($s0)
    /* C708 8001BF08 00000000 */  nop
    /* C70C 8001BF0C 040042AE */  sw         $v0, 0x4($s2)
    /* C710 8001BF10 1400028E */  lw         $v0, 0x14($s0)
    /* C714 8001BF14 00000000 */  nop
    /* C718 8001BF18 080042AE */  sw         $v0, 0x8($s2)
    /* C71C 8001BF1C 1800038E */  lw         $v1, 0x18($s0)
    /* C720 8001BF20 20000224 */  addiu      $v0, $zero, 0x20
    /* C724 8001BF24 2C0040AE */  sw         $zero, 0x2C($s2)
    /* C728 8001BF28 280040AE */  sw         $zero, 0x28($s2)
    /* C72C 8001BF2C 0A80013C */  lui        $at, %hi(D_8009BE4C)
    /* C730 8001BF30 4CBE22A4 */  sh         $v0, %lo(D_8009BE4C)($at)
    /* C734 8001BF34 0A80013C */  lui        $at, %hi(D_8009BE4E)
    /* C738 8001BF38 4EBE22A4 */  sh         $v0, %lo(D_8009BE4E)($at)
    /* C73C 8001BF3C A3700008 */  j          .L8001C28C
    /* C740 8001BF40 0C0043AE */   sw        $v1, 0xC($s2)
  glabel .L8001BF44
    /* C744 8001BF44 0C00078E */  lw         $a3, 0xC($s0)
    /* C748 8001BF48 00000000 */  nop
    /* C74C 8001BF4C 0001E22C */  sltiu      $v0, $a3, 0x100
    /* C750 8001BF50 23004010 */  beqz       $v0, .L8001BFE0
    /* C754 8001BF54 0001C424 */   addiu     $a0, $a2, 0x100
    /* C758 8001BF58 1800038E */  lw         $v1, 0x18($s0)
    /* C75C 8001BF5C 1400028E */  lw         $v0, 0x14($s0)
    /* C760 8001BF60 1000058E */  lw         $a1, 0x10($s0)
    /* C764 8001BF64 18006200 */  mult       $v1, $v0
    /* C768 8001BF68 0001A330 */  andi       $v1, $a1, 0x100
    /* C76C 8001BF6C 02110300 */  srl        $v0, $v1, 4
    /* C770 8001BF70 2128A200 */  addu       $a1, $a1, $v0
    /* C774 8001BF74 10FFA524 */  addiu      $a1, $a1, -0xF0
    /* C778 8001BF78 2328A300 */  subu       $a1, $a1, $v1
    /* C77C 8001BF7C 002A0500 */  sll        $a1, $a1, 8
    /* C780 8001BF80 2128E500 */  addu       $a1, $a3, $a1
    /* C784 8001BF84 40280500 */  sll        $a1, $a1, 1
    /* C788 8001BF88 0B80023C */  lui        $v0, %hi(D_800AD168)
    /* C78C 8001BF8C 68D14224 */  addiu      $v0, $v0, %lo(D_800AD168)
    /* C790 8001BF90 2128A200 */  addu       $a1, $a1, $v0
    /* C794 8001BF94 12400000 */  mflo       $t0
    /* C798 8001BF98 02310800 */  srl        $a2, $t0, 4
    /* C79C 8001BF9C A95D000C */  jal        func_800176A4
    /* C7A0 8001BFA0 40300600 */   sll       $a2, $a2, 1
    /* C7A4 8001BFA4 1000028E */  lw         $v0, 0x10($s0)
    /* C7A8 8001BFA8 00000000 */  nop
    /* C7AC 8001BFAC 00014430 */  andi       $a0, $v0, 0x100
    /* C7B0 8001BFB0 02190400 */  srl        $v1, $a0, 4
    /* C7B4 8001BFB4 21104300 */  addu       $v0, $v0, $v1
    /* C7B8 8001BFB8 10FF4224 */  addiu      $v0, $v0, -0xF0
    /* C7BC 8001BFBC 23104400 */  subu       $v0, $v0, $a0
    /* C7C0 8001BFC0 0A80033C */  lui        $v1, %hi(D_80098868)
    /* C7C4 8001BFC4 6888638C */  lw         $v1, %lo(D_80098868)($v1)
    /* C7C8 8001BFC8 04105600 */  sllv       $v0, $s6, $v0
    /* C7CC 8001BFCC 25186200 */  or         $v1, $v1, $v0
    /* C7D0 8001BFD0 0A80013C */  lui        $at, %hi(D_80098868)
    /* C7D4 8001BFD4 688823AC */  sw         $v1, %lo(D_80098868)($at)
    /* C7D8 8001BFD8 CE710008 */  j          .L8001C738
    /* C7DC 8001BFDC 00000000 */   nop
  .L8001BFE0:
    /* C7E0 8001BFE0 0A80113C */  lui        $s1, %hi(D_8009BE48)
    /* C7E4 8001BFE4 48BE3126 */  addiu      $s1, $s1, %lo(D_8009BE48)
    /* C7E8 8001BFE8 000027A6 */  sh         $a3, 0x0($s1)
    /* C7EC 8001BFEC 1000028E */  lw         $v0, 0x10($s0)
    /* C7F0 8001BFF0 0A80033C */  lui        $v1, %hi(D_80098A54)
    /* C7F4 8001BFF4 548A638C */  lw         $v1, %lo(D_80098A54)($v1)
    /* C7F8 8001BFF8 0A80013C */  lui        $at, %hi(D_8009BE4A)
    /* C7FC 8001BFFC 4ABE22A4 */  sh         $v0, %lo(D_8009BE4A)($at)
    /* C800 8001C000 0A000224 */  addiu      $v0, $zero, 0xA
    /* C804 8001C004 07006210 */  beq        $v1, $v0, .L8001C024
    /* C808 8001C008 00000000 */   nop
    /* C80C 8001C00C 1400028E */  lw         $v0, 0x14($s0)
    /* C810 8001C010 0A80013C */  lui        $at, %hi(D_8009BE4C)
    /* C814 8001C014 4CBE22A4 */  sh         $v0, %lo(D_8009BE4C)($at)
    /* C818 8001C018 1800028E */  lw         $v0, 0x18($s0)
    /* C81C 8001C01C 12700008 */  j          .L8001C048
    /* C820 8001C020 00000000 */   nop
  .L8001C024:
    /* C824 8001C024 1400038E */  lw         $v1, 0x14($s0)
    /* C828 8001C028 1800028E */  lw         $v0, 0x18($s0)
    /* C82C 8001C02C 00000000 */  nop
    /* C830 8001C030 18006200 */  mult       $v1, $v0
    /* C834 8001C034 40000224 */  addiu      $v0, $zero, 0x40
    /* C838 8001C038 0A80013C */  lui        $at, %hi(D_8009BE4C)
    /* C83C 8001C03C 4CBE22A4 */  sh         $v0, %lo(D_8009BE4C)($at)
    /* C840 8001C040 12400000 */  mflo       $t0
    /* C844 8001C044 82110800 */  srl        $v0, $t0, 6
  .L8001C048:
    /* C848 8001C048 0A80013C */  lui        $at, %hi(D_8009BE4E)
    /* C84C 8001C04C 4EBE22A4 */  sh         $v0, %lo(D_8009BE4E)($at)
    /* C850 8001C050 21202002 */  addu       $a0, $s1, $zero
    /* C854 8001C054 BCF4010C */  jal        LoadImage
    /* C858 8001C058 0001C524 */   addiu     $a1, $a2, 0x100
    /* C85C 8001C05C CE710008 */  j          .L8001C738
    /* C860 8001C060 00000000 */   nop
  glabel .L8001C064
    /* C864 8001C064 0C00028E */  lw         $v0, 0xC($s0)
    /* C868 8001C068 00000000 */  nop
    /* C86C 8001C06C 000042AE */  sw         $v0, 0x0($s2)
    /* C870 8001C070 1000028E */  lw         $v0, 0x10($s0)
    /* C874 8001C074 00000000 */  nop
    /* C878 8001C078 040042AE */  sw         $v0, 0x4($s2)
    /* C87C 8001C07C 1400028E */  lw         $v0, 0x14($s0)
    /* C880 8001C080 00000000 */  nop
    /* C884 8001C084 080042AE */  sw         $v0, 0x8($s2)
    /* C888 8001C088 1800028E */  lw         $v0, 0x18($s0)
    /* C88C 8001C08C 1480043C */  lui        $a0, (0x8014B000 >> 16)
    /* C890 8001C090 0C0042AE */  sw         $v0, 0xC($s2)
    /* C894 8001C094 0C00038E */  lw         $v1, 0xC($s0)
    /* C898 8001C098 00B08434 */  ori        $a0, $a0, (0x8014B000 & 0xFFFF)
    /* C89C 8001C09C 140056A2 */  sb         $s6, 0x14($s2)
    /* C8A0 8001C0A0 40100300 */  sll        $v0, $v1, 1
    /* C8A4 8001C0A4 21104300 */  addu       $v0, $v0, $v1
    /* C8A8 8001C0A8 80110200 */  sll        $v0, $v0, 6
    /* C8AC 8001C0AC 21104300 */  addu       $v0, $v0, $v1
    /* C8B0 8001C0B0 40110200 */  sll        $v0, $v0, 5
    /* C8B4 8001C0B4 21104400 */  addu       $v0, $v0, $a0
    /* C8B8 8001C0B8 100042AE */  sw         $v0, 0x10($s2)
    /* C8BC 8001C0BC 0C00038E */  lw         $v1, 0xC($s0)
    /* C8C0 8001C0C0 04000224 */  addiu      $v0, $zero, 0x4
    /* C8C4 8001C0C4 10006214 */  bne        $v1, $v0, .L8001C108
    /* C8C8 8001C0C8 00000000 */   nop
    /* C8CC 8001C0CC 0C80033C */  lui        $v1, %hi(Game_work + 0x1DA)
    /* C8D0 8001C0D0 EA1C6390 */  lbu        $v1, %lo(Game_work + 0x1DA)($v1)
    /* C8D4 8001C0D4 1000028E */  lw         $v0, 0x10($s0)
    /* C8D8 8001C0D8 00000000 */  nop
    /* C8DC 8001C0DC 02006214 */  bne        $v1, $v0, .L8001C0E8
    /* C8E0 8001C0E0 00000000 */   nop
    /* C8E4 8001C0E4 140040A2 */  sb         $zero, 0x14($s2)
  .L8001C0E8:
    /* C8E8 8001C0E8 0A80023C */  lui        $v0, %hi(D_80098958)
    /* C8EC 8001C0EC 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* C8F0 8001C0F0 00000000 */  nop
    /* C8F4 8001C0F4 00084230 */  andi       $v0, $v0, 0x800
    /* C8F8 8001C0F8 03004010 */  beqz       $v0, .L8001C108
    /* C8FC 8001C0FC 00000000 */   nop
    /* C900 8001C100 CF6C000C */  jal        func_8001B33C
    /* C904 8001C104 140056A2 */   sb        $s6, 0x14($s2)
  .L8001C108:
    /* C908 8001C108 0C80023C */  lui        $v0, %hi(D_800C5620)
    /* C90C 8001C10C 20564290 */  lbu        $v0, %lo(D_800C5620)($v0)
    /* C910 8001C110 00000000 */  nop
    /* C914 8001C114 18005614 */  bne        $v0, $s6, .L8001C178
    /* C918 8001C118 00000000 */   nop
    /* C91C 8001C11C 0C00028E */  lw         $v0, 0xC($s0)
    /* C920 8001C120 1000038E */  lw         $v1, 0x10($s0)
    /* C924 8001C124 C0100200 */  sll        $v0, $v0, 3
    /* C928 8001C128 0C80013C */  lui        $at, %hi(Game_work + 0x1BA)
    /* C92C 8001C12C 21082200 */  addu       $at, $at, $v0
    /* C930 8001C130 CA1C23A0 */  sb         $v1, %lo(Game_work + 0x1BA)($at)
    /* C934 8001C134 0C00028E */  lw         $v0, 0xC($s0)
    /* C938 8001C138 1400038E */  lw         $v1, 0x14($s0)
    /* C93C 8001C13C C0100200 */  sll        $v0, $v0, 3
    /* C940 8001C140 0C80013C */  lui        $at, %hi(Game_work + 0x1BC)
    /* C944 8001C144 21082200 */  addu       $at, $at, $v0
    /* C948 8001C148 CC1C23AC */  sw         $v1, %lo(Game_work + 0x1BC)($at)
    /* C94C 8001C14C 0C00028E */  lw         $v0, 0xC($s0)
    /* C950 8001C150 00000000 */  nop
    /* C954 8001C154 C0100200 */  sll        $v0, $v0, 3
    /* C958 8001C158 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* C95C 8001C15C 21082200 */  addu       $at, $at, $v0
    /* C960 8001C160 C81C2484 */  lh         $a0, %lo(Game_work + 0x1B8)($at)
    /* C964 8001C164 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C968 8001C168 03008210 */  beq        $a0, $v0, .L8001C178
    /* C96C 8001C16C 00000000 */   nop
    /* C970 8001C170 BED6010C */  jal        SsVabClose
    /* C974 8001C174 00000000 */   nop
  .L8001C178:
    /* C978 8001C178 0C80033C */  lui        $v1, %hi(D_800C5608)
    /* C97C 8001C17C 08566324 */  addiu      $v1, $v1, %lo(D_800C5608)
  .L8001C180:
    /* C980 8001C180 0000628C */  lw         $v0, 0x0($v1)
    /* C984 8001C184 00000000 */  nop
    /* C988 8001C188 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C98C 8001C18C A3700008 */  j          .L8001C28C
    /* C990 8001C190 000062AC */   sw        $v0, 0x0($v1)
  glabel .L8001C194
    /* C994 8001C194 1380043C */  lui        $a0, (0x8013B000 >> 16)
    /* C998 8001C198 00B08434 */  ori        $a0, $a0, (0x8013B000 & 0xFFFF)
    /* C99C 8001C19C 0C00038E */  lw         $v1, 0xC($s0)
    /* C9A0 8001C1A0 1400028E */  lw         $v0, 0x14($s0)
    /* C9A4 8001C1A4 C0180300 */  sll        $v1, $v1, 3
    /* C9A8 8001C1A8 21104400 */  addu       $v0, $v0, $a0
    /* C9AC 8001C1AC 0A80013C */  lui        $at, %hi(D_80098AD4)
    /* C9B0 8001C1B0 21082300 */  addu       $at, $at, $v1
    /* C9B4 8001C1B4 D48A22AC */  sw         $v0, %lo(D_80098AD4)($at)
    /* C9B8 8001C1B8 0C80013C */  lui        $at, %hi(D_800C5614)
    /* C9BC 8001C1BC 145622AC */  sw         $v0, %lo(D_800C5614)($at)
    /* C9C0 8001C1C0 0C80013C */  lui        $at, %hi(D_800C5618)
    /* C9C4 8001C1C4 185620A0 */  sb         $zero, %lo(D_800C5618)($at)
    /* C9C8 8001C1C8 0C00028E */  lw         $v0, 0xC($s0)
    /* C9CC 8001C1CC 1000038E */  lw         $v1, 0x10($s0)
    /* C9D0 8001C1D0 C0200200 */  sll        $a0, $v0, 3
    /* C9D4 8001C1D4 0A80013C */  lui        $at, %hi(D_80098AD0)
    /* C9D8 8001C1D8 21082400 */  addu       $at, $at, $a0
    /* C9DC 8001C1DC D08A2290 */  lbu        $v0, %lo(D_80098AD0)($at)
    /* C9E0 8001C1E0 00000000 */  nop
    /* C9E4 8001C1E4 29004310 */  beq        $v0, $v1, .L8001C28C
    /* C9E8 8001C1E8 00000000 */   nop
    /* C9EC 8001C1EC 0A80013C */  lui        $at, %hi(D_80098AD0)
    /* C9F0 8001C1F0 21082400 */  addu       $at, $at, $a0
    /* C9F4 8001C1F4 D08A23A0 */  sb         $v1, %lo(D_80098AD0)($at)
    /* C9F8 8001C1F8 0C80013C */  lui        $at, %hi(D_800C5618)
    /* C9FC 8001C1FC 185636A0 */  sb         $s6, %lo(D_800C5618)($at)
    /* CA00 8001C200 A3700008 */  j          .L8001C28C
    /* CA04 8001C204 00000000 */   nop
  glabel .L8001C208
    /* CA08 8001C208 1380043C */  lui        $a0, (0x8013B000 >> 16)
    /* CA0C 8001C20C 00B08434 */  ori        $a0, $a0, (0x8013B000 & 0xFFFF)
    /* CA10 8001C210 0C00038E */  lw         $v1, 0xC($s0)
    /* CA14 8001C214 1800028E */  lw         $v0, 0x18($s0)
    /* CA18 8001C218 C0180300 */  sll        $v1, $v1, 3
    /* CA1C 8001C21C 21104400 */  addu       $v0, $v0, $a0
    /* CA20 8001C220 0A80013C */  lui        $at, %hi(D_80098AD4)
    /* CA24 8001C224 21082300 */  addu       $at, $at, $v1
    /* CA28 8001C228 D48A22AC */  sw         $v0, %lo(D_80098AD4)($at)
    /* CA2C 8001C22C 0C80013C */  lui        $at, %hi(D_800C5618)
    /* CA30 8001C230 185622AC */  sw         $v0, %lo(D_800C5618)($at)
    /* CA34 8001C234 0C80013C */  lui        $at, %hi(D_800C561C)
    /* CA38 8001C238 1C5620A0 */  sb         $zero, %lo(D_800C561C)($at)
    /* CA3C 8001C23C 0C00028E */  lw         $v0, 0xC($s0)
    /* CA40 8001C240 1000038E */  lw         $v1, 0x10($s0)
    /* CA44 8001C244 C0200200 */  sll        $a0, $v0, 3
    /* CA48 8001C248 0A80013C */  lui        $at, %hi(D_80098AD0)
    /* CA4C 8001C24C 21082400 */  addu       $at, $at, $a0
    /* CA50 8001C250 D08A2290 */  lbu        $v0, %lo(D_80098AD0)($at)
    /* CA54 8001C254 00000000 */  nop
    /* CA58 8001C258 0C004310 */  beq        $v0, $v1, .L8001C28C
    /* CA5C 8001C25C 00000000 */   nop
    /* CA60 8001C260 0A80013C */  lui        $at, %hi(D_80098AD0)
    /* CA64 8001C264 21082400 */  addu       $at, $at, $a0
    /* CA68 8001C268 D08A23A0 */  sb         $v1, %lo(D_80098AD0)($at)
    /* CA6C 8001C26C 0C00028E */  lw         $v0, 0xC($s0)
    /* CA70 8001C270 1400038E */  lw         $v1, 0x14($s0)
    /* CA74 8001C274 C0100200 */  sll        $v0, $v0, 3
    /* CA78 8001C278 0A80013C */  lui        $at, %hi(D_80098AD1)
    /* CA7C 8001C27C 21082200 */  addu       $at, $at, $v0
    /* CA80 8001C280 D18A23A0 */  sb         $v1, %lo(D_80098AD1)($at)
    /* CA84 8001C284 0C80013C */  lui        $at, %hi(D_800C561C)
    /* CA88 8001C288 1C5636A0 */  sb         $s6, %lo(D_800C561C)($at)
  glabel .L8001C28C
    /* CA8C 8001C28C 0A80023C */  lui        $v0, %hi(D_80098A54)
    /* CA90 8001C290 548A428C */  lw         $v0, %lo(D_80098A54)($v0)
    /* CA94 8001C294 00000000 */  nop
    /* CA98 8001C298 01004224 */  addiu      $v0, $v0, 0x1
    /* CA9C 8001C29C 0A80013C */  lui        $at, %hi(D_800989C8)
    /* CAA0 8001C2A0 C88922AC */  sw         $v0, %lo(D_800989C8)($at)
    /* CAA4 8001C2A4 D0710008 */  j          .L8001C740
    /* CAA8 8001C2A8 00000000 */   nop
  glabel .L8001C2AC
    /* CAAC 8001C2AC 0000648E */  lw         $a0, 0x0($s3)
    /* CAB0 8001C2B0 00000000 */  nop
    /* CAB4 8001C2B4 0008822C */  sltiu      $v0, $a0, 0x800
    /* CAB8 8001C2B8 0E004014 */  bnez       $v0, .L8001C2F4
    /* CABC 8001C2BC 40000624 */   addiu     $a2, $zero, 0x40
    /* CAC0 8001C2C0 0A80043C */  lui        $a0, %hi(D_800987A8)
    /* CAC4 8001C2C4 A887848C */  lw         $a0, %lo(D_800987A8)($a0)
    /* CAC8 8001C2C8 0800658E */  lw         $a1, 0x8($s3)
    /* CACC 8001C2CC C0220400 */  sll        $a0, $a0, 11
    /* CAD0 8001C2D0 B75D000C */  jal        func_800176DC
    /* CAD4 8001C2D4 21209500 */   addu      $a0, $a0, $s5
    /* CAD8 8001C2D8 0000628E */  lw         $v0, 0x0($s3)
    /* CADC 8001C2DC 0800638E */  lw         $v1, 0x8($s3)
    /* CAE0 8001C2E0 00F84224 */  addiu      $v0, $v0, -0x800
    /* CAE4 8001C2E4 00086324 */  addiu      $v1, $v1, 0x800
    /* CAE8 8001C2E8 000062AE */  sw         $v0, 0x0($s3)
    /* CAEC 8001C2EC CB700008 */  j          .L8001C32C
    /* CAF0 8001C2F0 080063AE */   sw        $v1, 0x8($s3)
  .L8001C2F4:
    /* CAF4 8001C2F4 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* CAF8 8001C2F8 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* CAFC 8001C2FC 0800668E */  lw         $a2, 0x8($s3)
    /* CB00 8001C300 C0120200 */  sll        $v0, $v0, 11
    /* CB04 8001C304 09008010 */  beqz       $a0, .L8001C32C
    /* CB08 8001C308 21185500 */   addu      $v1, $v0, $s5
  .L8001C30C:
    /* CB0C 8001C30C 00006290 */  lbu        $v0, 0x0($v1)
    /* CB10 8001C310 01006324 */  addiu      $v1, $v1, 0x1
    /* CB14 8001C314 0000C2A0 */  sb         $v0, 0x0($a2)
    /* CB18 8001C318 0000628E */  lw         $v0, 0x0($s3)
    /* CB1C 8001C31C 0100C624 */  addiu      $a2, $a2, 0x1
    /* CB20 8001C320 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CB24 8001C324 F9FF4014 */  bnez       $v0, .L8001C30C
    /* CB28 8001C328 000062AE */   sw        $v0, 0x0($s3)
  .L8001C32C:
    /* CB2C 8001C32C 0C80033C */  lui        $v1, %hi(D_800C5608)
    /* CB30 8001C330 08566324 */  addiu      $v1, $v1, %lo(D_800C5608)
    /* CB34 8001C334 0000628C */  lw         $v0, 0x0($v1)
    /* CB38 8001C338 00000000 */  nop
    /* CB3C 8001C33C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CB40 8001C340 FF004014 */  bnez       $v0, .L8001C740
    /* CB44 8001C344 000062AC */   sw        $v0, 0x0($v1)
    /* CB48 8001C348 CE710008 */  j          .L8001C738
    /* CB4C 8001C34C 00000000 */   nop
  glabel .L8001C350
    /* CB50 8001C350 0A80113C */  lui        $s1, %hi(D_8009BE48)
    /* CB54 8001C354 48BE3126 */  addiu      $s1, $s1, %lo(D_8009BE48)
    /* CB58 8001C358 21202002 */  addu       $a0, $s1, $zero
    /* CB5C 8001C35C 0A80053C */  lui        $a1, %hi(D_800987A8)
    /* CB60 8001C360 A887A58C */  lw         $a1, %lo(D_800987A8)($a1)
    /* CB64 8001C364 0C80023C */  lui        $v0, %hi(D_800C5634)
    /* CB68 8001C368 3456428C */  lw         $v0, %lo(D_800C5634)($v0)
    /* CB6C 8001C36C 0C80033C */  lui        $v1, %hi(D_800C561C)
    /* CB70 8001C370 1C56638C */  lw         $v1, %lo(D_800C561C)($v1)
    /* CB74 8001C374 C02A0500 */  sll        $a1, $a1, 11
    /* CB78 8001C378 40110200 */  sll        $v0, $v0, 5
    /* CB7C 8001C37C 21186200 */  addu       $v1, $v1, $v0
    /* CB80 8001C380 000083A4 */  sh         $v1, 0x0($a0)
    /* CB84 8001C384 0C80023C */  lui        $v0, %hi(D_800C5638)
    /* CB88 8001C388 3856428C */  lw         $v0, %lo(D_800C5638)($v0)
    /* CB8C 8001C38C 0C80033C */  lui        $v1, %hi(D_800C5620)
    /* CB90 8001C390 2056638C */  lw         $v1, %lo(D_800C5620)($v1)
    /* CB94 8001C394 40110200 */  sll        $v0, $v0, 5
    /* CB98 8001C398 21186200 */  addu       $v1, $v1, $v0
    /* CB9C 8001C39C 0A80013C */  lui        $at, %hi(D_8009BE4A)
    /* CBA0 8001C3A0 4ABE23A4 */  sh         $v1, %lo(D_8009BE4A)($at)
    /* CBA4 8001C3A4 BCF4010C */  jal        LoadImage
    /* CBA8 8001C3A8 2128B500 */   addu      $a1, $a1, $s5
    /* CBAC 8001C3AC 0C80023C */  lui        $v0, %hi(D_800C5634)
    /* CBB0 8001C3B0 3456428C */  lw         $v0, %lo(D_800C5634)($v0)
    /* CBB4 8001C3B4 0C80033C */  lui        $v1, %hi(D_800C5624)
    /* CBB8 8001C3B8 2456638C */  lw         $v1, %lo(D_800C5624)($v1)
    /* CBBC 8001C3BC 01004224 */  addiu      $v0, $v0, 0x1
    /* CBC0 8001C3C0 42190300 */  srl        $v1, $v1, 5
    /* CBC4 8001C3C4 0C80013C */  lui        $at, %hi(D_800C5634)
    /* CBC8 8001C3C8 345622AC */  sw         $v0, %lo(D_800C5634)($at)
    /* CBCC 8001C3CC DC004314 */  bne        $v0, $v1, .L8001C740
    /* CBD0 8001C3D0 00000000 */   nop
    /* CBD4 8001C3D4 0C80023C */  lui        $v0, %hi(D_800C5638)
    /* CBD8 8001C3D8 3856428C */  lw         $v0, %lo(D_800C5638)($v0)
    /* CBDC 8001C3DC 0C80033C */  lui        $v1, %hi(D_800C5628)
    /* CBE0 8001C3E0 2856638C */  lw         $v1, %lo(D_800C5628)($v1)
    /* CBE4 8001C3E4 0C80013C */  lui        $at, %hi(D_800C5634)
    /* CBE8 8001C3E8 345620AC */  sw         $zero, %lo(D_800C5634)($at)
    /* CBEC 8001C3EC 01004224 */  addiu      $v0, $v0, 0x1
    /* CBF0 8001C3F0 42190300 */  srl        $v1, $v1, 5
    /* CBF4 8001C3F4 0C80013C */  lui        $at, %hi(D_800C5638)
    /* CBF8 8001C3F8 385622AC */  sw         $v0, %lo(D_800C5638)($at)
    /* CBFC 8001C3FC CE004310 */  beq        $v0, $v1, .L8001C738
    /* CC00 8001C400 00000000 */   nop
    /* CC04 8001C404 D0710008 */  j          .L8001C740
    /* CC08 8001C408 00000000 */   nop
  glabel .L8001C40C
    /* CC0C 8001C40C 0A80113C */  lui        $s1, %hi(D_8009BE48)
    /* CC10 8001C410 48BE3126 */  addiu      $s1, $s1, %lo(D_8009BE48)
    /* CC14 8001C414 21202002 */  addu       $a0, $s1, $zero
    /* CC18 8001C418 0A80053C */  lui        $a1, %hi(D_800987A8)
    /* CC1C 8001C41C A887A58C */  lw         $a1, %lo(D_800987A8)($a1)
    /* CC20 8001C420 2800428E */  lw         $v0, 0x28($s2)
    /* CC24 8001C424 0000438E */  lw         $v1, 0x0($s2)
    /* CC28 8001C428 C02A0500 */  sll        $a1, $a1, 11
    /* CC2C 8001C42C 40110200 */  sll        $v0, $v0, 5
    /* CC30 8001C430 21186200 */  addu       $v1, $v1, $v0
    /* CC34 8001C434 000083A4 */  sh         $v1, 0x0($a0)
    /* CC38 8001C438 2C00428E */  lw         $v0, 0x2C($s2)
    /* CC3C 8001C43C 0400438E */  lw         $v1, 0x4($s2)
    /* CC40 8001C440 40110200 */  sll        $v0, $v0, 5
    /* CC44 8001C444 21186200 */  addu       $v1, $v1, $v0
    /* CC48 8001C448 0A80013C */  lui        $at, %hi(D_8009BE4A)
    /* CC4C 8001C44C 4ABE23A4 */  sh         $v1, %lo(D_8009BE4A)($at)
    /* CC50 8001C450 BCF4010C */  jal        LoadImage
    /* CC54 8001C454 2128B500 */   addu      $a1, $a1, $s5
    /* CC58 8001C458 2800428E */  lw         $v0, 0x28($s2)
    /* CC5C 8001C45C 0800438E */  lw         $v1, 0x8($s2)
    /* CC60 8001C460 01004224 */  addiu      $v0, $v0, 0x1
    /* CC64 8001C464 B6004314 */  bne        $v0, $v1, .L8001C740
    /* CC68 8001C468 280042AE */   sw        $v0, 0x28($s2)
    /* CC6C 8001C46C 2C00428E */  lw         $v0, 0x2C($s2)
    /* CC70 8001C470 0C00438E */  lw         $v1, 0xC($s2)
    /* CC74 8001C474 280040AE */  sw         $zero, 0x28($s2)
    /* CC78 8001C478 01004224 */  addiu      $v0, $v0, 0x1
    /* CC7C 8001C47C B0004314 */  bne        $v0, $v1, .L8001C740
    /* CC80 8001C480 2C0042AE */   sw        $v0, 0x2C($s2)
    /* CC84 8001C484 CE710008 */  j          .L8001C738
    /* CC88 8001C488 00000000 */   nop
  glabel .L8001C48C
    /* CC8C 8001C48C 00008292 */  lbu        $v0, 0x0($s4)
    /* CC90 8001C490 00000000 */  nop
    /* CC94 8001C494 08004014 */  bnez       $v0, .L8001C4B8
    /* CC98 8001C498 00000000 */   nop
    /* CC9C 8001C49C E8FF828E */  lw         $v0, -0x18($s4)
    /* CCA0 8001C4A0 00000000 */  nop
    /* CCA4 8001C4A4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CCA8 8001C4A8 A5004014 */  bnez       $v0, .L8001C740
    /* CCAC 8001C4AC E8FF82AE */   sw        $v0, -0x18($s4)
    /* CCB0 8001C4B0 CE710008 */  j          .L8001C738
    /* CCB4 8001C4B4 00000000 */   nop
  .L8001C4B8:
    /* CCB8 8001C4B8 F8FF868E */  lw         $a2, -0x8($s4)
    /* CCBC 8001C4BC 00000000 */  nop
    /* CCC0 8001C4C0 0008C228 */  slti       $v0, $a2, 0x800
    /* CCC4 8001C4C4 0F004014 */  bnez       $v0, .L8001C504
    /* CCC8 8001C4C8 00000000 */   nop
    /* CCCC 8001C4CC 40000624 */  addiu      $a2, $zero, 0x40
    /* CCD0 8001C4D0 0A80043C */  lui        $a0, %hi(D_800987A8)
    /* CCD4 8001C4D4 A887848C */  lw         $a0, %lo(D_800987A8)($a0)
    /* CCD8 8001C4D8 FCFF858E */  lw         $a1, -0x4($s4)
    /* CCDC 8001C4DC C0220400 */  sll        $a0, $a0, 11
    /* CCE0 8001C4E0 B75D000C */  jal        func_800176DC
    /* CCE4 8001C4E4 21209500 */   addu      $a0, $a0, $s5
    /* CCE8 8001C4E8 FCFF828E */  lw         $v0, -0x4($s4)
    /* CCEC 8001C4EC F8FF838E */  lw         $v1, -0x8($s4)
    /* CCF0 8001C4F0 00084224 */  addiu      $v0, $v0, 0x800
    /* CCF4 8001C4F4 00F86324 */  addiu      $v1, $v1, -0x800
    /* CCF8 8001C4F8 FCFF82AE */  sw         $v0, -0x4($s4)
    /* CCFC 8001C4FC D0710008 */  j          .L8001C740
    /* CD00 8001C500 F8FF83AE */   sw        $v1, -0x8($s4)
  .L8001C504:
    /* CD04 8001C504 2100C010 */  beqz       $a2, .L8001C58C
    /* CD08 8001C508 00080524 */   addiu     $a1, $zero, 0x800
    /* CD0C 8001C50C 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* CD10 8001C510 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* CD14 8001C514 00000000 */  nop
    /* CD18 8001C518 C0120200 */  sll        $v0, $v0, 11
    /* CD1C 8001C51C 0200C104 */  bgez       $a2, .L8001C528
    /* CD20 8001C520 21205500 */   addu      $a0, $v0, $s5
    /* CD24 8001C524 0300C624 */  addiu      $a2, $a2, 0x3
  .L8001C528:
    /* CD28 8001C528 FCFF858E */  lw         $a1, -0x4($s4)
    /* CD2C 8001C52C A15D000C */  jal        func_80017684
    /* CD30 8001C530 83300600 */   sra       $a2, $a2, 2
    /* CD34 8001C534 1480023C */  lui        $v0, (0x8014B000 >> 16)
    /* CD38 8001C538 F4FF868E */  lw         $a2, -0xC($s4)
    /* CD3C 8001C53C ECFF858E */  lw         $a1, -0x14($s4)
    /* CD40 8001C540 00B04234 */  ori        $v0, $v0, (0x8014B000 & 0xFFFF)
    /* CD44 8001C544 F8FF80AE */  sw         $zero, -0x8($s4)
    /* CD48 8001C548 40200500 */  sll        $a0, $a1, 1
    /* CD4C 8001C54C 21208500 */  addu       $a0, $a0, $a1
    /* CD50 8001C550 80210400 */  sll        $a0, $a0, 6
    /* CD54 8001C554 21208500 */  addu       $a0, $a0, $a1
    /* CD58 8001C558 40210400 */  sll        $a0, $a0, 5
    /* CD5C 8001C55C 21208200 */  addu       $a0, $a0, $v0
    /* CD60 8001C560 002C0500 */  sll        $a1, $a1, 16
    /* CD64 8001C564 CCD7010C */  jal        SsVabOpenHeadSticky
    /* CD68 8001C568 032C0500 */   sra       $a1, $a1, 16
    /* CD6C 8001C56C ECFF838E */  lw         $v1, -0x14($s4)
    /* CD70 8001C570 00000000 */  nop
    /* CD74 8001C574 C0180300 */  sll        $v1, $v1, 3
    /* CD78 8001C578 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* CD7C 8001C57C 21082300 */  addu       $at, $at, $v1
    /* CD80 8001C580 C81C22A4 */  sh         $v0, %lo(Game_work + 0x1B8)($at)
    /* CD84 8001C584 D0710008 */  j          .L8001C740
    /* CD88 8001C588 00000000 */   nop
  .L8001C58C:
    /* CD8C 8001C58C ECFF828E */  lw         $v0, -0x14($s4)
    /* CD90 8001C590 0A80043C */  lui        $a0, %hi(D_800987A8)
    /* CD94 8001C594 A887848C */  lw         $a0, %lo(D_800987A8)($a0)
    /* CD98 8001C598 C0100200 */  sll        $v0, $v0, 3
    /* CD9C 8001C59C C0220400 */  sll        $a0, $a0, 11
    /* CDA0 8001C5A0 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* CDA4 8001C5A4 21082200 */  addu       $at, $at, $v0
    /* CDA8 8001C5A8 C81C2684 */  lh         $a2, %lo(Game_work + 0x1B8)($at)
    /* CDAC 8001C5AC 8DD9010C */  jal        SsVabTransBodyPartly
    /* CDB0 8001C5B0 21209500 */   addu      $a0, $a0, $s5
    /* CDB4 8001C5B4 ECFF838E */  lw         $v1, -0x14($s4)
    /* CDB8 8001C5B8 00140200 */  sll        $v0, $v0, 16
    /* CDBC 8001C5BC C0180300 */  sll        $v1, $v1, 3
    /* CDC0 8001C5C0 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* CDC4 8001C5C4 21082300 */  addu       $at, $at, $v1
    /* CDC8 8001C5C8 C81C2384 */  lh         $v1, %lo(Game_work + 0x1B8)($at)
    /* CDCC 8001C5CC 03140200 */  sra        $v0, $v0, 16
    /* CDD0 8001C5D0 03004314 */  bne        $v0, $v1, .L8001C5E0
    /* CDD4 8001C5D4 00000000 */   nop
    /* CDD8 8001C5D8 0A80013C */  lui        $at, %hi(D_800989C8)
    /* CDDC 8001C5DC C88920AC */  sw         $zero, %lo(D_800989C8)($at)
  .L8001C5E0:
    /* CDE0 8001C5E0 2BDA010C */  jal        SsVabTransCompleted
    /* CDE4 8001C5E4 01000424 */   addiu     $a0, $zero, 0x1
    /* CDE8 8001C5E8 D0710008 */  j          .L8001C740
    /* CDEC 8001C5EC 00000000 */   nop
  glabel .L8001C5F0
    /* CDF0 8001C5F0 0000648E */  lw         $a0, 0x0($s3)
    /* CDF4 8001C5F4 00000000 */  nop
    /* CDF8 8001C5F8 0008822C */  sltiu      $v0, $a0, 0x800
    /* CDFC 8001C5FC 12004014 */  bnez       $v0, .L8001C648
    /* CE00 8001C600 00000000 */   nop
    /* CE04 8001C604 14006292 */  lbu        $v0, 0x14($s3)
    /* CE08 8001C608 00000000 */  nop
    /* CE0C 8001C60C 07004010 */  beqz       $v0, .L8001C62C
    /* CE10 8001C610 40000624 */   addiu     $a2, $zero, 0x40
    /* CE14 8001C614 0A80043C */  lui        $a0, %hi(D_800987A8)
    /* CE18 8001C618 A887848C */  lw         $a0, %lo(D_800987A8)($a0)
    /* CE1C 8001C61C 1000658E */  lw         $a1, 0x10($s3)
    /* CE20 8001C620 C0220400 */  sll        $a0, $a0, 11
    /* CE24 8001C624 B75D000C */  jal        func_800176DC
    /* CE28 8001C628 21209500 */   addu      $a0, $a0, $s5
  .L8001C62C:
    /* CE2C 8001C62C 0000628E */  lw         $v0, 0x0($s3)
    /* CE30 8001C630 1000638E */  lw         $v1, 0x10($s3)
    /* CE34 8001C634 00F84224 */  addiu      $v0, $v0, -0x800
    /* CE38 8001C638 00086324 */  addiu      $v1, $v1, 0x800
    /* CE3C 8001C63C 000062AE */  sw         $v0, 0x0($s3)
    /* CE40 8001C640 D0710008 */  j          .L8001C740
    /* CE44 8001C644 100063AE */   sw        $v1, 0x10($s3)
  .L8001C648:
    /* CE48 8001C648 14006292 */  lbu        $v0, 0x14($s3)
    /* CE4C 8001C64C 00000000 */  nop
    /* CE50 8001C650 39004010 */  beqz       $v0, .L8001C738
    /* CE54 8001C654 00000000 */   nop
    /* CE58 8001C658 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* CE5C 8001C65C A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* CE60 8001C660 1000668E */  lw         $a2, 0x10($s3)
    /* CE64 8001C664 C0120200 */  sll        $v0, $v0, 11
    /* CE68 8001C668 33008010 */  beqz       $a0, .L8001C738
    /* CE6C 8001C66C 21185500 */   addu      $v1, $v0, $s5
  .L8001C670:
    /* CE70 8001C670 00006290 */  lbu        $v0, 0x0($v1)
    /* CE74 8001C674 01006324 */  addiu      $v1, $v1, 0x1
    /* CE78 8001C678 0000C2A0 */  sb         $v0, 0x0($a2)
    /* CE7C 8001C67C 0000628E */  lw         $v0, 0x0($s3)
    /* CE80 8001C680 0100C624 */  addiu      $a2, $a2, 0x1
    /* CE84 8001C684 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CE88 8001C688 F9FF4014 */  bnez       $v0, .L8001C670
    /* CE8C 8001C68C 000062AE */   sw        $v0, 0x0($s3)
    /* CE90 8001C690 CE710008 */  j          .L8001C738
    /* CE94 8001C694 00000000 */   nop
  glabel .L8001C698
    /* CE98 8001C698 0000648E */  lw         $a0, 0x0($s3)
    /* CE9C 8001C69C 00000000 */  nop
    /* CEA0 8001C6A0 0008822C */  sltiu      $v0, $a0, 0x800
    /* CEA4 8001C6A4 12004014 */  bnez       $v0, .L8001C6F0
    /* CEA8 8001C6A8 00000000 */   nop
    /* CEAC 8001C6AC 18006292 */  lbu        $v0, 0x18($s3)
    /* CEB0 8001C6B0 00000000 */  nop
    /* CEB4 8001C6B4 07004010 */  beqz       $v0, .L8001C6D4
    /* CEB8 8001C6B8 40000624 */   addiu     $a2, $zero, 0x40
    /* CEBC 8001C6BC 0A80043C */  lui        $a0, %hi(D_800987A8)
    /* CEC0 8001C6C0 A887848C */  lw         $a0, %lo(D_800987A8)($a0)
    /* CEC4 8001C6C4 1400658E */  lw         $a1, 0x14($s3)
    /* CEC8 8001C6C8 C0220400 */  sll        $a0, $a0, 11
    /* CECC 8001C6CC B75D000C */  jal        func_800176DC
    /* CED0 8001C6D0 21209500 */   addu      $a0, $a0, $s5
  .L8001C6D4:
    /* CED4 8001C6D4 0000628E */  lw         $v0, 0x0($s3)
    /* CED8 8001C6D8 1400638E */  lw         $v1, 0x14($s3)
    /* CEDC 8001C6DC 00F84224 */  addiu      $v0, $v0, -0x800
    /* CEE0 8001C6E0 00086324 */  addiu      $v1, $v1, 0x800
    /* CEE4 8001C6E4 000062AE */  sw         $v0, 0x0($s3)
    /* CEE8 8001C6E8 D0710008 */  j          .L8001C740
    /* CEEC 8001C6EC 140063AE */   sw        $v1, 0x14($s3)
  .L8001C6F0:
    /* CEF0 8001C6F0 18006292 */  lbu        $v0, 0x18($s3)
    /* CEF4 8001C6F4 00000000 */  nop
    /* CEF8 8001C6F8 0F004010 */  beqz       $v0, .L8001C738
    /* CEFC 8001C6FC 00000000 */   nop
    /* CF00 8001C700 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* CF04 8001C704 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* CF08 8001C708 1400668E */  lw         $a2, 0x14($s3)
    /* CF0C 8001C70C C0120200 */  sll        $v0, $v0, 11
    /* CF10 8001C710 09008010 */  beqz       $a0, .L8001C738
    /* CF14 8001C714 21185500 */   addu      $v1, $v0, $s5
  .L8001C718:
    /* CF18 8001C718 00006290 */  lbu        $v0, 0x0($v1)
    /* CF1C 8001C71C 01006324 */  addiu      $v1, $v1, 0x1
    /* CF20 8001C720 0000C2A0 */  sb         $v0, 0x0($a2)
    /* CF24 8001C724 0000628E */  lw         $v0, 0x0($s3)
    /* CF28 8001C728 0100C624 */  addiu      $a2, $a2, 0x1
    /* CF2C 8001C72C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CF30 8001C730 F9FF4014 */  bnez       $v0, .L8001C718
    /* CF34 8001C734 000062AE */   sw        $v0, 0x0($s3)
  .L8001C738:
    /* CF38 8001C738 0A80013C */  lui        $at, %hi(D_800989C8)
    /* CF3C 8001C73C C88920AC */  sw         $zero, %lo(D_800989C8)($at)
  glabel .L8001C740
    /* CF40 8001C740 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* CF44 8001C744 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* CF48 8001C748 0A80043C */  lui        $a0, %hi(D_80098B38)
    /* CF4C 8001C74C 388B8424 */  addiu      $a0, $a0, %lo(D_80098B38)
    /* CF50 8001C750 0A80013C */  lui        $at, %hi(D_80098B38)
    /* CF54 8001C754 21082200 */  addu       $at, $at, $v0
    /* CF58 8001C758 388B20A0 */  sb         $zero, %lo(D_80098B38)($at)
    /* CF5C 8001C75C 0A80033C */  lui        $v1, %hi(D_800987A8)
    /* CF60 8001C760 A887638C */  lw         $v1, %lo(D_800987A8)($v1)
    /* CF64 8001C764 0A000224 */  addiu      $v0, $zero, 0xA
    /* CF68 8001C768 01006324 */  addiu      $v1, $v1, 0x1
    /* CF6C 8001C76C 0A80013C */  lui        $at, %hi(D_800987A8)
    /* CF70 8001C770 A88723AC */  sw         $v1, %lo(D_800987A8)($at)
    /* CF74 8001C774 03006214 */  bne        $v1, $v0, .L8001C784
    /* CF78 8001C778 00000000 */   nop
    /* CF7C 8001C77C 0A80013C */  lui        $at, %hi(D_800987A8)
    /* CF80 8001C780 A88720AC */  sw         $zero, %lo(D_800987A8)($at)
  .L8001C784:
    /* CF84 8001C784 0A80023C */  lui        $v0, %hi(D_800987A8)
    /* CF88 8001C788 A887428C */  lw         $v0, %lo(D_800987A8)($v0)
    /* CF8C 8001C78C 00000000 */  nop
    /* CF90 8001C790 21104400 */  addu       $v0, $v0, $a0
    /* CF94 8001C794 00004290 */  lbu        $v0, 0x0($v0)
    /* CF98 8001C798 00000000 */  nop
    /* CF9C 8001C79C 51FD5610 */  beq        $v0, $s6, .L8001BCE4
    /* CFA0 8001C7A0 00000000 */   nop
    /* CFA4 8001C7A4 F1710008 */  j          .L8001C7C4
    /* CFA8 8001C7A8 00000000 */   nop
  .L8001C7AC:
    /* CFAC 8001C7AC 0A80013C */  lui        $at, %hi(D_800989C4)
    /* CFB0 8001C7B0 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
    /* CFB4 8001C7B4 F1710008 */  j          .L8001C7C4
    /* CFB8 8001C7B8 00000000 */   nop
  glabel .L8001C7BC
    /* CFBC 8001C7BC AB72000C */  jal        func_8001CAAC
    /* CFC0 8001C7C0 00000000 */   nop
  .L8001C7C4:
    /* CFC4 8001C7C4 3400BF8F */  lw         $ra, 0x34($sp)
    /* CFC8 8001C7C8 3000B68F */  lw         $s6, 0x30($sp)
    /* CFCC 8001C7CC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* CFD0 8001C7D0 2800B48F */  lw         $s4, 0x28($sp)
    /* CFD4 8001C7D4 2400B38F */  lw         $s3, 0x24($sp)
    /* CFD8 8001C7D8 2000B28F */  lw         $s2, 0x20($sp)
    /* CFDC 8001C7DC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CFE0 8001C7E0 1800B08F */  lw         $s0, 0x18($sp)
    /* CFE4 8001C7E4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* CFE8 8001C7E8 0800E003 */  jr         $ra
    /* CFEC 8001C7EC 00000000 */   nop
.size func_8001BB4C, . - func_8001BB4C
