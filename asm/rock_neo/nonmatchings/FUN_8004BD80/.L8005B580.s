.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8005B580
    /* 4BD80 8005B580 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BD84 8005B584 00000000 */  nop
    /* 4BD88 8005B588 25104300 */  or         $v0, $v0, $v1
    /* 4BD8C 8005B58C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4BD90 8005B590 B000C290 */  lbu        $v0, 0xB0($a2)
    /* 4BD94 8005B594 B100C390 */  lbu        $v1, 0xB1($a2)
    /* 4BD98 8005B598 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4BD9C 8005B59C B000C2A0 */  sb         $v0, 0xB0($a2)
    /* 4BDA0 8005B5A0 B200C290 */  lbu        $v0, 0xB2($a2)
    /* 4BDA4 8005B5A4 F8FF6324 */  addiu      $v1, $v1, -0x8
    /* 4BDA8 8005B5A8 B100C3A0 */  sb         $v1, 0xB1($a2)
    /* 4BDAC 8005B5AC B000C390 */  lbu        $v1, 0xB0($a2)
    /* 4BDB0 8005B5B0 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 4BDB4 8005B5B4 06006014 */  bnez       $v1, .L8005B5D0
    /* 4BDB8 8005B5B8 B200C2A0 */   sb        $v0, 0xB2($a2)
    /* 4BDBC 8005B5BC FFF9033C */  lui        $v1, (0xF9FFFFFF >> 16)
    /* 4BDC0 8005B5C0 0000C28C */  lw         $v0, 0x0($a2)
    /* 4BDC4 8005B5C4 FFFF6334 */  ori        $v1, $v1, (0xF9FFFFFF & 0xFFFF)
    /* 4BDC8 8005B5C8 24104300 */  and        $v0, $v0, $v1
    /* 4BDCC 8005B5CC 0000C2AC */  sw         $v0, 0x0($a2)
  .L8005B5D0:
    /* 4BDD0 8005B5D0 0800E003 */  jr         $ra
    /* 4BDD4 8005B5D4 00000000 */   nop
.size .L8005B580, . - .L8005B580
