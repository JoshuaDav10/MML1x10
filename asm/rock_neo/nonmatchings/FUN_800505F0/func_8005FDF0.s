.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FDF0
    /* 505F0 8005FDF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 505F4 8005FDF4 78000282 */  lb         $v0, 0x78($s0)
    /* 505F8 8005FDF8 00000000 */  nop
    /* 505FC 8005FDFC 03004014 */  bnez       $v0, .L8005FE0C
    /* 50600 8005FE00 00000000 */   nop
  .L8005FE04:
    /* 50604 8005FE04 EA7F0108 */  j          .L8005FFA8
    /* 50608 8005FE08 02000224 */   addiu     $v0, $zero, 0x2
  .L8005FE0C:
    /* 5060C 8005FE0C 50000292 */  lbu        $v0, 0x50($s0)
    /* 50610 8005FE10 00000000 */  nop
    /* 50614 8005FE14 FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 50618 8005FE18 00160200 */  sll        $v0, $v0, 24
    /* 5061C 8005FE1C 031E0200 */  sra        $v1, $v0, 24
    /* 50620 8005FE20 1900622C */  sltiu      $v0, $v1, 0x19
.size func_8005FDF0, . - func_8005FDF0
