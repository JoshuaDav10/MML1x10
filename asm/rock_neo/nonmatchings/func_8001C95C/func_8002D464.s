.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D464
    /* 1DC64 8002D464 0A80053C */  lui        $a1, %hi(D_800988FC)
    /* 1DC68 8002D468 FC88A58C */  lw         $a1, %lo(D_800988FC)($a1)
    /* 1DC6C 8002D46C 00000000 */  nop
    /* 1DC70 8002D470 0001A22C */  sltiu      $v0, $a1, 0x100
    /* 1DC74 8002D474 0D004010 */  beqz       $v0, .L8002D4AC
    /* 1DC78 8002D478 801F043C */   lui       $a0, (0x1F800070 >> 16)
    /* 1DC7C 8002D47C 70008434 */  ori        $a0, $a0, (0x1F800070 & 0xFFFF)
    /* 1DC80 8002D480 0000828C */  lw         $v0, 0x0($a0)
    /* 1DC84 8002D484 0100A324 */  addiu      $v1, $a1, 0x1
    /* 1DC88 8002D488 0A80013C */  lui        $at, %hi(D_800988FC)
    /* 1DC8C 8002D48C FC8823AC */  sw         $v1, %lo(D_800988FC)($at)
    /* 1DC90 8002D490 80180500 */  sll        $v1, $a1, 2
    /* 1DC94 8002D494 0C80013C */  lui        $at, %hi(D_800BE6D8)
    /* 1DC98 8002D498 21082300 */  addu       $at, $at, $v1
    /* 1DC9C 8002D49C D8E622AC */  sw         $v0, %lo(D_800BE6D8)($at)
    /* 1DCA0 8002D4A0 28004324 */  addiu      $v1, $v0, 0x28
    /* 1DCA4 8002D4A4 2CB50008 */  j          .L8002D4B0
    /* 1DCA8 8002D4A8 000083AC */   sw        $v1, 0x0($a0)
  .L8002D4AC:
    /* 1DCAC 8002D4AC 21100000 */  addu       $v0, $zero, $zero
  .L8002D4B0:
    /* 1DCB0 8002D4B0 0800E003 */  jr         $ra
    /* 1DCB4 8002D4B4 00000000 */   nop
.size func_8002D464, . - func_8002D464
