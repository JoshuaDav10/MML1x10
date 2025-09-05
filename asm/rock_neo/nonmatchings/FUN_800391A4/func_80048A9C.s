.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048A9C
    /* 3929C 80048A9C 0B80063C */  lui        $a2, %hi(Player_work)
    /* 392A0 80048AA0 B051C624 */  addiu      $a2, $a2, %lo(Player_work)
    /* 392A4 80048AA4 0C80013C */  lui        $at, %hi(D_800C0F96)
    /* 392A8 80048AA8 960F20A4 */  sh         $zero, %lo(D_800C0F96)($at)
    /* 392AC 80048AAC 0A008390 */  lbu        $v1, 0xA($a0)
    /* 392B0 80048AB0 01000224 */  addiu      $v0, $zero, 0x1
    /* 392B4 80048AB4 1F006210 */  beq        $v1, $v0, .L80048B34
    /* 392B8 80048AB8 02006228 */   slti      $v0, $v1, 0x2
    /* 392BC 80048ABC 05004010 */  beqz       $v0, .L80048AD4
    /* 392C0 80048AC0 00000000 */   nop
    /* 392C4 80048AC4 0A006010 */  beqz       $v1, .L80048AF0
    /* 392C8 80048AC8 00000000 */   nop
    /* 392CC 80048ACC F7220108 */  j          .L80048BDC
    /* 392D0 80048AD0 00000000 */   nop
  .L80048AD4:
    /* 392D4 80048AD4 02000224 */  addiu      $v0, $zero, 0x2
    /* 392D8 80048AD8 21006210 */  beq        $v1, $v0, .L80048B60
    /* 392DC 80048ADC 03000224 */   addiu     $v0, $zero, 0x3
    /* 392E0 80048AE0 29006210 */  beq        $v1, $v0, .L80048B88
    /* 392E4 80048AE4 00000000 */   nop
    /* 392E8 80048AE8 F7220108 */  j          .L80048BDC
    /* 392EC 80048AEC 00000000 */   nop
  .L80048AF0:
    /* 392F0 80048AF0 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* 392F4 80048AF4 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* 392F8 80048AF8 0980013C */  lui        $at, %hi(D_8008AA04)
    /* 392FC 80048AFC 21082200 */  addu       $at, $at, $v0
    /* 39300 80048B00 04AA2290 */  lbu        $v0, %lo(D_8008AA04)($at)
    /* 39304 80048B04 00000000 */  nop
    /* 39308 80048B08 0B0082A0 */  sb         $v0, 0xB($a0)
    /* 3930C 80048B0C 0B80023C */  lui        $v0, %hi(Player_work + 0xBD)
    /* 39310 80048B10 6D524290 */  lbu        $v0, %lo(Player_work + 0xBD)($v0)
    /* 39314 80048B14 00000000 */  nop
    /* 39318 80048B18 20004234 */  ori        $v0, $v0, 0x20
    /* 3931C 80048B1C 0B80013C */  lui        $at, %hi(Player_work + 0xBD)
    /* 39320 80048B20 6D5222A0 */  sb         $v0, %lo(Player_work + 0xBD)($at)
    /* 39324 80048B24 0A008290 */  lbu        $v0, 0xA($a0)
    /* 39328 80048B28 00000000 */  nop
    /* 3932C 80048B2C 01004224 */  addiu      $v0, $v0, 0x1
    /* 39330 80048B30 0A0082A0 */  sb         $v0, 0xA($a0)
  .L80048B34:
    /* 39334 80048B34 2401C294 */  lhu        $v0, 0x124($a2)
    /* 39338 80048B38 0C80053C */  lui        $a1, %hi(D_800C0F96)
    /* 3933C 80048B3C 960FA524 */  addiu      $a1, $a1, %lo(D_800C0F96)
    /* 39340 80048B40 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 39344 80048B44 1000828C */  lw         $v0, 0x10($a0)
    /* 39348 80048B48 00000000 */  nop
    /* 3934C 80048B4C 25004228 */  slti       $v0, $v0, 0x25
    /* 39350 80048B50 17004010 */  beqz       $v0, .L80048BB0
    /* 39354 80048B54 00000000 */   nop
    /* 39358 80048B58 F7220108 */  j          .L80048BDC
    /* 3935C 80048B5C 00000000 */   nop
  .L80048B60:
    /* 39360 80048B60 0B80023C */  lui        $v0, %hi(Player_work + 0xBD)
    /* 39364 80048B64 6D524290 */  lbu        $v0, %lo(Player_work + 0xBD)($v0)
    /* 39368 80048B68 00000000 */  nop
    /* 3936C 80048B6C 20004234 */  ori        $v0, $v0, 0x20
    /* 39370 80048B70 0B80013C */  lui        $at, %hi(Player_work + 0xBD)
    /* 39374 80048B74 6D5222A0 */  sb         $v0, %lo(Player_work + 0xBD)($at)
    /* 39378 80048B78 0A008290 */  lbu        $v0, 0xA($a0)
    /* 3937C 80048B7C 00000000 */  nop
    /* 39380 80048B80 01004224 */  addiu      $v0, $v0, 0x1
    /* 39384 80048B84 0A0082A0 */  sb         $v0, 0xA($a0)
  .L80048B88:
    /* 39388 80048B88 2401C294 */  lhu        $v0, 0x124($a2)
    /* 3938C 80048B8C 0C80053C */  lui        $a1, %hi(D_800C0F96)
    /* 39390 80048B90 960FA524 */  addiu      $a1, $a1, %lo(D_800C0F96)
    /* 39394 80048B94 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 39398 80048B98 0B008290 */  lbu        $v0, 0xB($a0)
    /* 3939C 80048B9C 1000838C */  lw         $v1, 0x10($a0)
    /* 393A0 80048BA0 00000000 */  nop
    /* 393A4 80048BA4 2A104300 */  slt        $v0, $v0, $v1
    /* 393A8 80048BA8 0C004010 */  beqz       $v0, .L80048BDC
    /* 393AC 80048BAC 00000000 */   nop
  .L80048BB0:
    /* 393B0 80048BB0 05008290 */  lbu        $v0, 0x5($a0)
    /* 393B4 80048BB4 0A008390 */  lbu        $v1, 0xA($a0)
    /* 393B8 80048BB8 01004224 */  addiu      $v0, $v0, 0x1
    /* 393BC 80048BBC 01006324 */  addiu      $v1, $v1, 0x1
    /* 393C0 80048BC0 050082A0 */  sb         $v0, 0x5($a0)
    /* 393C4 80048BC4 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 393C8 80048BC8 BD00C290 */  lbu        $v0, 0xBD($a2)
    /* 393CC 80048BCC 0000A0A4 */  sh         $zero, 0x0($a1)
    /* 393D0 80048BD0 DF004230 */  andi       $v0, $v0, 0xDF
    /* 393D4 80048BD4 40004234 */  ori        $v0, $v0, 0x40
    /* 393D8 80048BD8 BD00C2A0 */  sb         $v0, 0xBD($a2)
  .L80048BDC:
    /* 393DC 80048BDC 0800E003 */  jr         $ra
    /* 393E0 80048BE0 00000000 */   nop
.size func_80048A9C, . - func_80048A9C
