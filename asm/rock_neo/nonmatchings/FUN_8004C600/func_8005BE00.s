.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BE00
    /* 4C600 8005BE00 21082300 */  addu       $at, $at, $v1
    /* 4C604 8005BE04 717F2290 */  lbu        $v0, 0x7F71($at)
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
.size func_8005BE00, . - func_8005BE00
    /* 4C640 8005BE40 00000000 */  nop
