.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BDC0
    /* 2C5C0 8003BDC0 000080A0 */  sb         $zero, 0x0($a0)
    /* 2C5C4 8003BDC4 01000724 */  addiu      $a3, $zero, 0x1
    /* 2C5C8 8003BDC8 FFFF083C */  lui        $t0, (0xFFFF0000 >> 16)
    /* 2C5CC 8003BDCC 1580033C */  lui        $v1, (0x8015C012 >> 16)
    /* 2C5D0 8003BDD0 12C06334 */  ori        $v1, $v1, (0x8015C012 & 0xFFFF)
  .L8003BDD4:
    /* 2C5D4 8003BDD4 0200628C */  lw         $v0, 0x2($v1)
    /* 2C5D8 8003BDD8 00000000 */  nop
    /* 2C5DC 8003BDDC 14004010 */  beqz       $v0, .L8003BE30
    /* 2C5E0 8003BDE0 00000000 */   nop
    /* 2C5E4 8003BDE4 0000428C */  lw         $v0, 0x0($v0)
    /* 2C5E8 8003BDE8 00000000 */  nop
    /* 2C5EC 8003BDEC 24104800 */  and        $v0, $v0, $t0
    /* 2C5F0 8003BDF0 03004510 */  beq        $v0, $a1, .L8003BE00
    /* 2C5F4 8003BDF4 00000000 */   nop
    /* 2C5F8 8003BDF8 09004614 */  bne        $v0, $a2, .L8003BE20
    /* 2C5FC 8003BDFC 00000000 */   nop
  .L8003BE00:
    /* 2C600 8003BE00 00006284 */  lh         $v0, 0x0($v1)
    /* 2C604 8003BE04 00000000 */  nop
    /* 2C608 8003BE08 05004014 */  bnez       $v0, .L8003BE20
    /* 2C60C 8003BE0C 00000000 */   nop
    /* 2C610 8003BE10 00008290 */  lbu        $v0, 0x0($a0)
    /* 2C614 8003BE14 00000000 */  nop
    /* 2C618 8003BE18 01004224 */  addiu      $v0, $v0, 0x1
    /* 2C61C 8003BE1C 000082A0 */  sb         $v0, 0x0($a0)
  .L8003BE20:
    /* 2C620 8003BE20 0100E724 */  addiu      $a3, $a3, 0x1
    /* 2C624 8003BE24 0008E22C */  sltiu      $v0, $a3, 0x800
    /* 2C628 8003BE28 EAFF4014 */  bnez       $v0, .L8003BDD4
    /* 2C62C 8003BE2C 0C006324 */   addiu     $v1, $v1, 0xC
  .L8003BE30:
    /* 2C630 8003BE30 0800E003 */  jr         $ra
    /* 2C634 8003BE34 00000000 */   nop
.size func_8003BDC0, . - func_8003BDC0
