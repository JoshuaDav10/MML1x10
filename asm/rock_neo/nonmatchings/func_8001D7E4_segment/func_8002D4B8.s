.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D4B8
    /* 1DCB8 8002D4B8 0A80053C */  lui        $a1, %hi(D_800988FC)
    /* 1DCBC 8002D4BC FC88A58C */  lw         $a1, %lo(D_800988FC)($a1)
    /* 1DCC0 8002D4C0 00000000 */  nop
    /* 1DCC4 8002D4C4 0001A22C */  sltiu      $v0, $a1, 0x100
    /* 1DCC8 8002D4C8 0D004010 */  beqz       $v0, .L8002D500
    /* 1DCCC 8002D4CC 801F043C */   lui       $a0, (0x1F800070 >> 16)
    /* 1DCD0 8002D4D0 70008434 */  ori        $a0, $a0, (0x1F800070 & 0xFFFF)
    /* 1DCD4 8002D4D4 0000828C */  lw         $v0, 0x0($a0)
    /* 1DCD8 8002D4D8 0100A324 */  addiu      $v1, $a1, 0x1
    /* 1DCDC 8002D4DC 0A80013C */  lui        $at, %hi(D_800988FC)
    /* 1DCE0 8002D4E0 FC8823AC */  sw         $v1, %lo(D_800988FC)($at)
    /* 1DCE4 8002D4E4 80180500 */  sll        $v1, $a1, 2
    /* 1DCE8 8002D4E8 0C80013C */  lui        $at, %hi(D_800BE6D8)
    /* 1DCEC 8002D4EC 21082300 */  addu       $at, $at, $v1
    /* 1DCF0 8002D4F0 D8E622AC */  sw         $v0, %lo(D_800BE6D8)($at)
    /* 1DCF4 8002D4F4 20004324 */  addiu      $v1, $v0, 0x20
    /* 1DCF8 8002D4F8 41B50008 */  j          .L8002D504
    /* 1DCFC 8002D4FC 000083AC */   sw        $v1, 0x0($a0)
  .L8002D500:
    /* 1DD00 8002D500 21100000 */  addu       $v0, $zero, $zero
  .L8002D504:
    /* 1DD04 8002D504 0800E003 */  jr         $ra
    /* 1DD08 8002D508 00000000 */   nop
.size func_8002D4B8, . - func_8002D4B8
