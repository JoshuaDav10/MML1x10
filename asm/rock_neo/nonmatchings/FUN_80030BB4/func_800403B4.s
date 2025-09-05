.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800403B4
    /* 30BB4 800403B4 1201A490 */  lbu        $a0, 0x112($a1)
    /* 30BB8 800403B8 02000324 */  addiu      $v1, $zero, 0x2
    /* 30BBC 800403BC 0900A3A0 */  sb         $v1, 0x9($a1)
    /* 30BC0 800403C0 0A00A0A4 */  sh         $zero, 0xA($a1)
    /* 30BC4 800403C4 1201A0A0 */  sb         $zero, 0x112($a1)
    /* 30BC8 800403C8 1301A4A0 */  sb         $a0, 0x113($a1)
  .L800403CC:
    /* 30BCC 800403CC 0800E003 */  jr         $ra
    /* 30BD0 800403D0 00000000 */   nop
.size func_800403B4, . - func_800403B4
