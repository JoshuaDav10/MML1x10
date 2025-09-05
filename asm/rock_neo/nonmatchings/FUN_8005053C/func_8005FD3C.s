.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FD3C
    /* 5053C 8005FD3C 7A002392 */  lbu        $v1, 0x7A($s1)
    /* 50540 8005FD40 17000424 */  addiu      $a0, $zero, 0x17
    /* 50544 8005FD44 500022A2 */  sb         $v0, 0x50($s1)
    /* 50548 8005FD48 0C5F000C */  jal        func_80017C30
    /* 5054C 8005FD4C 510023A2 */   sb        $v1, 0x51($s1)
    /* 50550 8005FD50 1576000C */  jal        func_8001D854
    /* 50554 8005FD54 10000424 */   addiu     $a0, $zero, 0x10
  .L8005FD58:
    /* 50558 8005FD58 02000292 */  lbu        $v0, 0x2($s0)
    /* 5055C 8005FD5C 00000000 */  nop
    /* 50560 8005FD60 01004224 */  addiu      $v0, $v0, 0x1
    /* 50564 8005FD64 737F0108 */  j          .L8005FDCC
    /* 50568 8005FD68 020002A2 */   sb        $v0, 0x2($s0)
  glabel .L8005FD6C
    /* 5056C 8005FD6C 595B000C */  jal        func_80016D64
    /* 50570 8005FD70 00000000 */   nop
    /* 50574 8005FD74 CF6C000C */  jal        func_8001B33C
    /* 50578 8005FD78 00000000 */   nop
    /* 5057C 8005FD7C C56C000C */  jal        func_8001B314
    /* 50580 8005FD80 00000000 */   nop
    /* 50584 8005FD84 0A80023C */  lui        $v0, %hi(D_80098958)
    /* 50588 8005FD88 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* 5058C 8005FD8C 00000000 */  nop
    /* 50590 8005FD90 00084234 */  ori        $v0, $v0, 0x800
    /* 50594 8005FD94 0A80013C */  lui        $at, %hi(D_80098958)
    /* 50598 8005FD98 588922AC */  sw         $v0, %lo(D_80098958)($at)
    /* 5059C 8005FD9C 0867000C */  jal        func_80019C20
    /* 505A0 8005FDA0 00000000 */   nop
    /* 505A4 8005FDA4 8F7C000C */  jal        func_8001F23C
    /* 505A8 8005FDA8 00000000 */   nop
    /* 505AC 8005FDAC F27C000C */  jal        func_8001F3C8
    /* 505B0 8005FDB0 00000000 */   nop
    /* 505B4 8005FDB4 05000224 */  addiu      $v0, $zero, 0x5
    /* 505B8 8005FDB8 0C80013C */  lui        $at, %hi(Game_work)
    /* 505BC 8005FDBC 101B22A0 */  sb         $v0, %lo(Game_work)($at)
    /* 505C0 8005FDC0 02000224 */  addiu      $v0, $zero, 0x2
    /* 505C4 8005FDC4 0C80013C */  lui        $at, %hi(Game_work + 0x1)
    /* 505C8 8005FDC8 111B22A0 */  sb         $v0, %lo(Game_work + 0x1)($at)
  .L8005FDCC:
    /* 505CC 8005FDCC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 505D0 8005FDD0 1400B18F */  lw         $s1, 0x14($sp)
    /* 505D4 8005FDD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 505D8 8005FDD8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 505DC 8005FDDC 0800E003 */  jr         $ra
    /* 505E0 8005FDE0 00000000 */   nop
.size func_8005FD3C, . - func_8005FD3C
