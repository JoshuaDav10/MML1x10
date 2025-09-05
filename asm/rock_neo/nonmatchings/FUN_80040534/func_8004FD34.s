.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FD34
    /* 40534 8004FD34 801F013C */  lui        $at, (0x1F800100 >> 16)
    /* 40538 8004FD38 000122A4 */  sh         $v0, (0x1F800100 & 0xFFFF)($at)
    /* 4053C 8004FD3C BB3F0108 */  j          .L8004FEEC
    /* 40540 8004FD40 1000A427 */   addiu     $a0, $sp, 0x10
  .L8004FD44:
    /* 40544 8004FD44 801F043C */  lui        $a0, (0x1F8000F0 >> 16)
    /* 40548 8004FD48 F0008484 */  lh         $a0, (0x1F8000F0 & 0xFFFF)($a0)
    /* 4054C 8004FD4C 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 40550 8004FD50 C0004284 */  lh         $v0, (0x1F8000C0 & 0xFFFF)($v0)
    /* 40554 8004FD54 00000000 */  nop
    /* 40558 8004FD58 23188200 */  subu       $v1, $a0, $v0
    /* 4055C 8004FD5C 02006104 */  bgez       $v1, .L8004FD68
    /* 40560 8004FD60 00000000 */   nop
.size func_8004FD34, . - func_8004FD34
