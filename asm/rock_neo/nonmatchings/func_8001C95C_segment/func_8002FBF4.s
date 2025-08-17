.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FBF4
    /* 203F4 8002FBF4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 203F8 8002FBF8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 203FC 8002FBFC 0A80103C */  lui        $s0, %hi(D_8009F108)
    /* 20400 8002FC00 08F11026 */  addiu      $s0, $s0, %lo(D_8009F108)
    /* 20404 8002FC04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 20408 8002FC08 21880000 */  addu       $s1, $zero, $zero
    /* 2040C 8002FC0C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 20410 8002FC10 1880123C */  lui        $s2, (0x8018FFFF >> 16)
    /* 20414 8002FC14 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 20418 8002FC18 0A80133C */  lui        $s3, %hi(D_800987E8)
    /* 2041C 8002FC1C E887738E */  lw         $s3, %lo(D_800987E8)($s3)
    /* 20420 8002FC20 FFFF5236 */  ori        $s2, $s2, (0x8018FFFF & 0xFFFF)
    /* 20424 8002FC24 2800BFAF */  sw         $ra, 0x28($sp)
    /* 20428 8002FC28 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2042C 8002FC2C 2000B4AF */  sw         $s4, 0x20($sp)
  .L8002FC30:
    /* 20430 8002FC30 04103302 */  sllv       $v0, $s3, $s1
    /* 20434 8002FC34 0A004104 */  bgez       $v0, .L8002FC60
    /* 20438 8002FC38 00000000 */   nop
    /* 2043C 8002FC3C 8800028E */  lw         $v0, 0x88($s0)
    /* 20440 8002FC40 00000000 */  nop
    /* 20444 8002FC44 2B104202 */  sltu       $v0, $s2, $v0
    /* 20448 8002FC48 05004014 */  bnez       $v0, .L8002FC60
    /* 2044C 8002FC4C 00000000 */   nop
    /* 20450 8002FC50 4A49010C */  jal        func_80052528
    /* 20454 8002FC54 21200002 */   addu      $a0, $s0, $zero
    /* 20458 8002FC58 09C6000C */  jal        func_80031824
    /* 2045C 8002FC5C 21200002 */   addu      $a0, $s0, $zero
  .L8002FC60:
    /* 20460 8002FC60 01003126 */  addiu      $s1, $s1, 0x1
    /* 20464 8002FC64 1000222A */  slti       $v0, $s1, 0x10
    /* 20468 8002FC68 F1FF4014 */  bnez       $v0, .L8002FC30
    /* 2046C 8002FC6C C0031026 */   addiu     $s0, $s0, 0x3C0
    /* 20470 8002FC70 0C80103C */  lui        $s0, %hi(D_800C3580)
    /* 20474 8002FC74 80351026 */  addiu      $s0, $s0, %lo(D_800C3580)
    /* 20478 8002FC78 0A80133C */  lui        $s3, %hi(D_80098B20)
    /* 2047C 8002FC7C 208B738E */  lw         $s3, %lo(D_80098B20)($s3)
    /* 20480 8002FC80 21880000 */  addu       $s1, $zero, $zero
    /* 20484 8002FC84 1880123C */  lui        $s2, (0x8018FFFF >> 16)
    /* 20488 8002FC88 FFFF5236 */  ori        $s2, $s2, (0x8018FFFF & 0xFFFF)
  .L8002FC8C:
    /* 2048C 8002FC8C 04103302 */  sllv       $v0, $s3, $s1
    /* 20490 8002FC90 0A004104 */  bgez       $v0, .L8002FCBC
    /* 20494 8002FC94 00000000 */   nop
    /* 20498 8002FC98 8800028E */  lw         $v0, 0x88($s0)
    /* 2049C 8002FC9C 00000000 */  nop
    /* 204A0 8002FCA0 2B104202 */  sltu       $v0, $s2, $v0
    /* 204A4 8002FCA4 05004014 */  bnez       $v0, .L8002FCBC
    /* 204A8 8002FCA8 00000000 */   nop
    /* 204AC 8002FCAC 4A49010C */  jal        func_80052528
    /* 204B0 8002FCB0 21200002 */   addu      $a0, $s0, $zero
    /* 204B4 8002FCB4 1FC6000C */  jal        func_8003187C
    /* 204B8 8002FCB8 21200002 */   addu      $a0, $s0, $zero
  .L8002FCBC:
    /* 204BC 8002FCBC 01003126 */  addiu      $s1, $s1, 0x1
    /* 204C0 8002FCC0 0400222A */  slti       $v0, $s1, 0x4
    /* 204C4 8002FCC4 F1FF4014 */  bnez       $v0, .L8002FC8C
    /* 204C8 8002FCC8 A4051026 */   addiu     $s0, $s0, 0x5A4
    /* 204CC 8002FCCC 0C80103C */  lui        $s0, %hi(D_800BFB20)
    /* 204D0 8002FCD0 20FB1026 */  addiu      $s0, $s0, %lo(D_800BFB20)
    /* 204D4 8002FCD4 0A80133C */  lui        $s3, %hi(D_800989F0)
    /* 204D8 8002FCD8 F089738E */  lw         $s3, %lo(D_800989F0)($s3)
    /* 204DC 8002FCDC 21880000 */  addu       $s1, $zero, $zero
    /* 204E0 8002FCE0 1880123C */  lui        $s2, (0x8018FFFF >> 16)
    /* 204E4 8002FCE4 FFFF5236 */  ori        $s2, $s2, (0x8018FFFF & 0xFFFF)
  .L8002FCE8:
    /* 204E8 8002FCE8 04103302 */  sllv       $v0, $s3, $s1
    /* 204EC 8002FCEC 0A004104 */  bgez       $v0, .L8002FD18
    /* 204F0 8002FCF0 00000000 */   nop
    /* 204F4 8002FCF4 8800028E */  lw         $v0, 0x88($s0)
    /* 204F8 8002FCF8 00000000 */  nop
    /* 204FC 8002FCFC 2B104202 */  sltu       $v0, $s2, $v0
    /* 20500 8002FD00 05004014 */  bnez       $v0, .L8002FD18
    /* 20504 8002FD04 00000000 */   nop
    /* 20508 8002FD08 4A49010C */  jal        func_80052528
    /* 2050C 8002FD0C 21200002 */   addu      $a0, $s0, $zero
    /* 20510 8002FD10 4CC6000C */  jal        func_80031930
    /* 20514 8002FD14 21200002 */   addu      $a0, $s0, $zero
  .L8002FD18:
    /* 20518 8002FD18 01003126 */  addiu      $s1, $s1, 0x1
    /* 2051C 8002FD1C 1000222A */  slti       $v0, $s1, 0x10
    /* 20520 8002FD20 F1FF4014 */  bnez       $v0, .L8002FCE8
    /* 20524 8002FD24 0C011026 */   addiu     $s0, $s0, 0x10C
    /* 20528 8002FD28 0A80103C */  lui        $s0, %hi(D_8009CF88)
    /* 2052C 8002FD2C 88CF1026 */  addiu      $s0, $s0, %lo(D_8009CF88)
    /* 20530 8002FD30 0A80133C */  lui        $s3, %hi(D_800987CC)
    /* 20534 8002FD34 CC87738E */  lw         $s3, %lo(D_800987CC)($s3)
    /* 20538 8002FD38 21880000 */  addu       $s1, $zero, $zero
    /* 2053C 8002FD3C 1880123C */  lui        $s2, (0x8018FFFF >> 16)
    /* 20540 8002FD40 FFFF5236 */  ori        $s2, $s2, (0x8018FFFF & 0xFFFF)
  .L8002FD44:
    /* 20544 8002FD44 04103302 */  sllv       $v0, $s3, $s1
    /* 20548 8002FD48 0A004104 */  bgez       $v0, .L8002FD74
    /* 2054C 8002FD4C 00000000 */   nop
    /* 20550 8002FD50 8800028E */  lw         $v0, 0x88($s0)
    /* 20554 8002FD54 00000000 */  nop
    /* 20558 8002FD58 2B104202 */  sltu       $v0, $s2, $v0
    /* 2055C 8002FD5C 05004014 */  bnez       $v0, .L8002FD74
    /* 20560 8002FD60 00000000 */   nop
    /* 20564 8002FD64 4A49010C */  jal        func_80052528
    /* 20568 8002FD68 21200002 */   addu      $a0, $s0, $zero
    /* 2056C 8002FD6C 36C6000C */  jal        func_800318D8
    /* 20570 8002FD70 21200002 */   addu      $a0, $s0, $zero
  .L8002FD74:
    /* 20574 8002FD74 01003126 */  addiu      $s1, $s1, 0x1
    /* 20578 8002FD78 2000222A */  slti       $v0, $s1, 0x20
    /* 2057C 8002FD7C F1FF4014 */  bnez       $v0, .L8002FD44
    /* 20580 8002FD80 0C011026 */   addiu     $s0, $s0, 0x10C
    /* 20584 8002FD84 0A80123C */  lui        $s2, %hi(D_800A3B40)
    /* 20588 8002FD88 403B5226 */  addiu      $s2, $s2, %lo(D_800A3B40)
    /* 2058C 8002FD8C 21880000 */  addu       $s1, $zero, $zero
    /* 20590 8002FD90 1880153C */  lui        $s5, (0x8018FFFF >> 16)
    /* 20594 8002FD94 FFFFB536 */  ori        $s5, $s5, (0x8018FFFF & 0xFFFF)
    /* 20598 8002FD98 0A80143C */  lui        $s4, %hi(D_80098838)
    /* 2059C 8002FD9C 38889426 */  addiu      $s4, $s4, %lo(D_80098838)
  .L8002FDA0:
    /* 205A0 8002FDA0 0000938E */  lw         $s3, 0x0($s4)
    /* 205A4 8002FDA4 21800000 */  addu       $s0, $zero, $zero
  .L8002FDA8:
    /* 205A8 8002FDA8 04101302 */  sllv       $v0, $s3, $s0
    /* 205AC 8002FDAC 08004104 */  bgez       $v0, .L8002FDD0
    /* 205B0 8002FDB0 00000000 */   nop
    /* 205B4 8002FDB4 1400428E */  lw         $v0, 0x14($s2)
    /* 205B8 8002FDB8 00000000 */  nop
    /* 205BC 8002FDBC 2B10A202 */  sltu       $v0, $s5, $v0
    /* 205C0 8002FDC0 03004014 */  bnez       $v0, .L8002FDD0
    /* 205C4 8002FDC4 00000000 */   nop
    /* 205C8 8002FDC8 62C6000C */  jal        func_80031988
    /* 205CC 8002FDCC 21204002 */   addu      $a0, $s2, $zero
  .L8002FDD0:
    /* 205D0 8002FDD0 01001026 */  addiu      $s0, $s0, 0x1
    /* 205D4 8002FDD4 2000022A */  slti       $v0, $s0, 0x20
    /* 205D8 8002FDD8 F3FF4014 */  bnez       $v0, .L8002FDA8
    /* 205DC 8002FDDC 48005226 */   addiu     $s2, $s2, 0x48
    /* 205E0 8002FDE0 01003126 */  addiu      $s1, $s1, 0x1
    /* 205E4 8002FDE4 0200222A */  slti       $v0, $s1, 0x2
    /* 205E8 8002FDE8 EDFF4014 */  bnez       $v0, .L8002FDA0
    /* 205EC 8002FDEC 04009426 */   addiu     $s4, $s4, 0x4
    /* 205F0 8002FDF0 0C80103C */  lui        $s0, %hi(D_800BF118)
    /* 205F4 8002FDF4 18F11026 */  addiu      $s0, $s0, %lo(D_800BF118)
    /* 205F8 8002FDF8 0A80133C */  lui        $s3, %hi(D_800989CC)
    /* 205FC 8002FDFC CC89738E */  lw         $s3, %lo(D_800989CC)($s3)
    /* 20600 8002FE00 21880000 */  addu       $s1, $zero, $zero
    /* 20604 8002FE04 1880123C */  lui        $s2, (0x8018FFFF >> 16)
    /* 20608 8002FE08 FFFF5236 */  ori        $s2, $s2, (0x8018FFFF & 0xFFFF)
  .L8002FE0C:
    /* 2060C 8002FE0C 04103302 */  sllv       $v0, $s3, $s1
    /* 20610 8002FE10 0A004104 */  bgez       $v0, .L8002FE3C
    /* 20614 8002FE14 00000000 */   nop
    /* 20618 8002FE18 1400028E */  lw         $v0, 0x14($s0)
    /* 2061C 8002FE1C 00000000 */  nop
    /* 20620 8002FE20 2B104202 */  sltu       $v0, $s2, $v0
    /* 20624 8002FE24 05004014 */  bnez       $v0, .L8002FE3C
    /* 20628 8002FE28 00000000 */   nop
    /* 2062C 8002FE2C 4A49010C */  jal        func_80052528
    /* 20630 8002FE30 21200002 */   addu      $a0, $s0, $zero
    /* 20634 8002FE34 93C6000C */  jal        func_80031A4C
    /* 20638 8002FE38 21200002 */   addu      $a0, $s0, $zero
  .L8002FE3C:
    /* 2063C 8002FE3C 01003126 */  addiu      $s1, $s1, 0x1
    /* 20640 8002FE40 2000222A */  slti       $v0, $s1, 0x20
    /* 20644 8002FE44 F1FF4014 */  bnez       $v0, .L8002FE0C
    /* 20648 8002FE48 50001026 */   addiu     $s0, $s0, 0x50
    /* 2064C 8002FE4C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 20650 8002FE50 2400B58F */  lw         $s5, 0x24($sp)
    /* 20654 8002FE54 2000B48F */  lw         $s4, 0x20($sp)
    /* 20658 8002FE58 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2065C 8002FE5C 1800B28F */  lw         $s2, 0x18($sp)
    /* 20660 8002FE60 1400B18F */  lw         $s1, 0x14($sp)
    /* 20664 8002FE64 1000B08F */  lw         $s0, 0x10($sp)
    /* 20668 8002FE68 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2066C 8002FE6C 0800E003 */  jr         $ra
    /* 20670 8002FE70 00000000 */   nop
.size func_8002FBF4, . - func_8002FBF4
