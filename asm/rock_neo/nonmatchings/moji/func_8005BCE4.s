.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BCE4
    /* 4C4E4 8005BCE4 801F033C */  lui        $v1, (0x1F800070 >> 16)
    /* 4C4E8 8005BCE8 70006334 */  ori        $v1, $v1, (0x1F800070 & 0xFFFF)
    /* 4C4EC 8005BCEC 0000628C */  lw         $v0, 0x0($v1)
    /* 4C4F0 8005BCF0 00000000 */  nop
    /* 4C4F4 8005BCF4 18004624 */  addiu      $a2, $v0, 0x18
    /* 4C4F8 8005BCF8 000066AC */  sw         $a2, 0x0($v1)
    /* 4C4FC 8005BCFC 980082AC */  sw         $v0, 0x98($a0)
    /* 4C500 8005BD00 30004224 */  addiu      $v0, $v0, 0x30
    /* 4C504 8005BD04 000062AC */  sw         $v0, 0x0($v1)
    /* 4C508 8005BD08 9800828C */  lw         $v0, 0x98($a0)
    /* 4C50C 8005BD0C 9C0086AC */  sw         $a2, 0x9C($a0)
    /* 4C510 8005BD10 05000624 */  addiu      $a2, $zero, 0x5
    /* 4C514 8005BD14 030046A0 */  sb         $a2, 0x3($v0)
    /* 4C518 8005BD18 9800828C */  lw         $v0, 0x98($a0)
    /* 4C51C 8005BD1C 28000724 */  addiu      $a3, $zero, 0x28
    /* 4C520 8005BD20 070047A0 */  sb         $a3, 0x7($v0)
    /* 4C524 8005BD24 9800838C */  lw         $v1, 0x98($a0)
    /* 4C528 8005BD28 00000000 */  nop
    /* 4C52C 8005BD2C 07006290 */  lbu        $v0, 0x7($v1)
    /* 4C530 8005BD30 00000000 */  nop
    /* 4C534 8005BD34 02004234 */  ori        $v0, $v0, 0x2
    /* 4C538 8005BD38 070062A0 */  sb         $v0, 0x7($v1)
    /* 4C53C 8005BD3C 40180500 */  sll        $v1, $a1, 1
    /* 4C540 8005BD40 21186500 */  addu       $v1, $v1, $a1
    /* 4C544 8005BD44 40180300 */  sll        $v1, $v1, 1
    /* 4C548 8005BD48 9800858C */  lw         $a1, 0x98($a0)
    /* 4C54C 8005BD4C 0980013C */  lui        $at, %hi(D_80097F6C)
    /* 4C550 8005BD50 21082300 */  addu       $at, $at, $v1
    /* 4C554 8005BD54 6C7F2290 */  lbu        $v0, %lo(D_80097F6C)($at)
    /* 4C558 8005BD58 00000000 */  nop
    /* 4C55C 8005BD5C 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 4C560 8005BD60 9800858C */  lw         $a1, 0x98($a0)
    /* 4C564 8005BD64 0980013C */  lui        $at, %hi(D_80097F6D)
    /* 4C568 8005BD68 21082300 */  addu       $at, $at, $v1
    /* 4C56C 8005BD6C 6D7F2290 */  lbu        $v0, %lo(D_80097F6D)($at)
    /* 4C570 8005BD70 21500000 */  addu       $t2, $zero, $zero
    /* 4C574 8005BD74 0500A2A0 */  sb         $v0, 0x5($a1)
    /* 4C578 8005BD78 9800858C */  lw         $a1, 0x98($a0)
    /* 4C57C 8005BD7C 0980013C */  lui        $at, %hi(D_80097F6E)
    /* 4C580 8005BD80 21082300 */  addu       $at, $at, $v1
    /* 4C584 8005BD84 6E7F2290 */  lbu        $v0, %lo(D_80097F6E)($at)
    /* 4C588 8005BD88 801F0B3C */  lui        $t3, (0x1F800070 >> 16)
    /* 4C58C 8005BD8C 0600A2A0 */  sb         $v0, 0x6($a1)
    /* 4C590 8005BD90 9C00828C */  lw         $v0, 0x9C($a0)
    /* 4C594 8005BD94 70006B35 */  ori        $t3, $t3, (0x1F800070 & 0xFFFF)
    /* 4C598 8005BD98 030046A0 */  sb         $a2, 0x3($v0)
    /* 4C59C 8005BD9C 9C00828C */  lw         $v0, 0x9C($a0)
    /* 4C5A0 8005BDA0 08000D24 */  addiu      $t5, $zero, 0x8
    /* 4C5A4 8005BDA4 070047A0 */  sb         $a3, 0x7($v0)
    /* 4C5A8 8005BDA8 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5AC 8005BDAC 38000C24 */  addiu      $t4, $zero, 0x38
    /* 4C5B0 8005BDB0 0700A290 */  lbu        $v0, 0x7($a1)
    /* 4C5B4 8005BDB4 0980083C */  lui        $t0, %hi(D_80097F7B)
    /* 4C5B8 8005BDB8 7B7F0825 */  addiu      $t0, $t0, %lo(D_80097F7B)
    /* 4C5BC 8005BDBC 02004234 */  ori        $v0, $v0, 0x2
    /* 4C5C0 8005BDC0 0700A2A0 */  sb         $v0, 0x7($a1)
    /* 4C5C4 8005BDC4 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5C8 8005BDC8 0980013C */  lui        $at, %hi(D_80097F6F)
    /* 4C5CC 8005BDCC 21082300 */  addu       $at, $at, $v1
    /* 4C5D0 8005BDD0 6F7F2290 */  lbu        $v0, %lo(D_80097F6F)($at)
    /* 4C5D4 8005BDD4 0980093C */  lui        $t1, %hi(D_80097F7A)
    /* 4C5D8 8005BDD8 7A7F2925 */  addiu      $t1, $t1, %lo(D_80097F7A)
    /* 4C5DC 8005BDDC 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 4C5E0 8005BDE0 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5E4 8005BDE4 0980013C */  lui        $at, %hi(D_80097F70)
    /* 4C5E8 8005BDE8 21082300 */  addu       $at, $at, $v1
    /* 4C5EC 8005BDEC 707F2290 */  lbu        $v0, %lo(D_80097F70)($at)
    /* 4C5F0 8005BDF0 FDFF0625 */  addiu      $a2, $t0, -0x3
    /* 4C5F4 8005BDF4 0500A2A0 */  sb         $v0, 0x5($a1)
    /* 4C5F8 8005BDF8 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5FC 8005BDFC 0980013C */  lui        $at, %hi(D_80097F71)
    /* 4C600 8005BE00 21082300 */  addu       $at, $at, $v1
    /* 4C604 8005BE04 717F2290 */  lbu        $v0, %lo(D_80097F71)($at)
    /* 4C608 8005BE08 0980073C */  lui        $a3, %hi(D_80097F79)
    /* 4C60C 8005BE0C 797FE724 */  addiu      $a3, $a3, %lo(D_80097F79)
    /* 4C610 8005BE10 0600A2A0 */  sb         $v0, 0x6($a1)
  .L8005BE14:
    /* 4C614 8005BE14 0000638D */  lw         $v1, 0x0($t3)
    /* 4C618 8005BE18 00000000 */  nop
    /* 4C61C 8005BE1C 24006224 */  addiu      $v0, $v1, 0x24
    /* 4C620 8005BE20 000062AD */  sw         $v0, 0x0($t3)
    /* 4C624 8005BE24 A00083AC */  sw         $v1, 0xA0($a0)
    /* 4C628 8005BE28 03006DA0 */  sb         $t5, 0x3($v1)
    /* 4C62C 8005BE2C A000828C */  lw         $v0, 0xA0($a0)
    /* 4C630 8005BE30 00000000 */  nop
    /* 4C634 8005BE34 07004CA0 */  sb         $t4, 0x7($v0)
    /* 4C638 8005BE38 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C63C 8005BE3C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 4C640 8005BE40 00000000 */  nop
    /* 4C644 8005BE44 040062A0 */  sb         $v0, 0x4($v1)
    /* 4C648 8005BE48 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C64C 8005BE4C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 4C650 8005BE50 00000000 */  nop
    /* 4C654 8005BE54 050062A0 */  sb         $v0, 0x5($v1)
    /* 4C658 8005BE58 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C65C 8005BE5C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 4C660 8005BE60 00000000 */  nop
    /* 4C664 8005BE64 060062A0 */  sb         $v0, 0x6($v1)
    /* 4C668 8005BE68 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C66C 8005BE6C 0000E290 */  lbu        $v0, 0x0($a3)
    /* 4C670 8005BE70 00000000 */  nop
    /* 4C674 8005BE74 0C0062A0 */  sb         $v0, 0xC($v1)
    /* 4C678 8005BE78 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C67C 8005BE7C 0000E290 */  lbu        $v0, 0x0($a3)
    /* 4C680 8005BE80 00000000 */  nop
    /* 4C684 8005BE84 0D0062A0 */  sb         $v0, 0xD($v1)
    /* 4C688 8005BE88 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C68C 8005BE8C 0000E290 */  lbu        $v0, 0x0($a3)
    /* 4C690 8005BE90 00000000 */  nop
    /* 4C694 8005BE94 0E0062A0 */  sb         $v0, 0xE($v1)
    /* 4C698 8005BE98 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C69C 8005BE9C 00002291 */  lbu        $v0, 0x0($t1)
    /* 4C6A0 8005BEA0 00000000 */  nop
    /* 4C6A4 8005BEA4 140062A0 */  sb         $v0, 0x14($v1)
    /* 4C6A8 8005BEA8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6AC 8005BEAC 00002291 */  lbu        $v0, 0x0($t1)
    /* 4C6B0 8005BEB0 01004A25 */  addiu      $t2, $t2, 0x1
    /* 4C6B4 8005BEB4 150062A0 */  sb         $v0, 0x15($v1)
    /* 4C6B8 8005BEB8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6BC 8005BEBC 00002291 */  lbu        $v0, 0x0($t1)
    /* 4C6C0 8005BEC0 0400C624 */  addiu      $a2, $a2, 0x4
    /* 4C6C4 8005BEC4 160062A0 */  sb         $v0, 0x16($v1)
    /* 4C6C8 8005BEC8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6CC 8005BECC 00000291 */  lbu        $v0, 0x0($t0)
    /* 4C6D0 8005BED0 0400E724 */  addiu      $a3, $a3, 0x4
    /* 4C6D4 8005BED4 1C0062A0 */  sb         $v0, 0x1C($v1)
    /* 4C6D8 8005BED8 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C6DC 8005BEDC 00000291 */  lbu        $v0, 0x0($t0)
    /* 4C6E0 8005BEE0 04002925 */  addiu      $t1, $t1, 0x4
    /* 4C6E4 8005BEE4 1D0062A0 */  sb         $v0, 0x1D($v1)
    /* 4C6E8 8005BEE8 00000391 */  lbu        $v1, 0x0($t0)
    /* 4C6EC 8005BEEC 04000825 */  addiu      $t0, $t0, 0x4
    /* 4C6F0 8005BEF0 A000828C */  lw         $v0, 0xA0($a0)
    /* 4C6F4 8005BEF4 00000000 */  nop
    /* 4C6F8 8005BEF8 1E0043A0 */  sb         $v1, 0x1E($v0)
    /* 4C6FC 8005BEFC 04004229 */  slti       $v0, $t2, 0x4
    /* 4C700 8005BF00 C4FF4014 */  bnez       $v0, .L8005BE14
    /* 4C704 8005BF04 04008424 */   addiu     $a0, $a0, 0x4
    /* 4C708 8005BF08 0800E003 */  jr         $ra
    /* 4C70C 8005BF0C 00000000 */   nop
.size func_8005BCE4, . - func_8005BCE4
