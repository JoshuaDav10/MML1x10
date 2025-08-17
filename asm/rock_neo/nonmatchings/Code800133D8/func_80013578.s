.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013578
    /* 3D78 80013578 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D7C 8001357C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3D80 80013580 03008290 */  lbu        $v0, 0x3($a0)
    /* 3D84 80013584 00000000 */  nop
    /* 3D88 80013588 01004238 */  xori       $v0, $v0, 0x1
    /* 3D8C 8001358C 03004010 */  beqz       $v0, .L8001359C
    /* 3D90 80013590 030082A0 */   sb        $v0, 0x3($a0)
    /* 3D94 80013594 684D0008 */  j          .L800135A0
    /* 3D98 80013598 01000224 */   addiu     $v0, $zero, 0x1
  .L8001359C:
    /* 3D9C 8001359C 07000224 */  addiu      $v0, $zero, 0x7
  .L800135A0:
    /* 3DA0 800135A0 0C80013C */  lui        $at, %hi(Game_work + 0x50)
    /* 3DA4 800135A4 601B22A0 */  sb         $v0, %lo(Game_work + 0x50)($at)
    /* 3DA8 800135A8 0C80013C */  lui        $at, %hi(Game_work + 0x51)
    /* 3DAC 800135AC 611B20A0 */  sb         $zero, %lo(Game_work + 0x51)($at)
    /* 3DB0 800135B0 80FF0224 */  addiu      $v0, $zero, -0x80
    /* 3DB4 800135B4 0C80013C */  lui        $at, %hi(Game_work + 0x82)
    /* 3DB8 800135B8 921B22A0 */  sb         $v0, %lo(Game_work + 0x82)($at)
    /* 3DBC 800135BC 0180043C */  lui        $a0, %hi(func_800155A4)
    /* 3DC0 800135C0 A4558424 */  addiu      $a0, $a0, %lo(func_800155A4)
    /* 3DC4 800135C4 DE4B000C */  jal        func_80012F78
    /* 3DC8 800135C8 00000000 */   nop
    /* 3DCC 800135CC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3DD0 800135D0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3DD4 800135D4 0800E003 */  jr         $ra
    /* 3DD8 800135D8 00000000 */   nop
.size func_80013578, . - func_80013578
