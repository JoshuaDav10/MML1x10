.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004B3C0
    /* 3BBC0 8004B3C0 0C008010 */  beqz       $a0, .L8004B3F4
    /* 3BBC4 8004B3C4 00000000 */   nop
    /* 3BBC8 8004B3C8 0000828C */  lw         $v0, 0x0($a0)
    /* 3BBCC 8004B3CC 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 3BBD0 8004B3D0 240122AC */  sw         $v0, (0x1F800124 & 0xFFFF)($at)
    /* 3BBD4 8004B3D4 0400828C */  lw         $v0, 0x4($a0)
    /* 3BBD8 8004B3D8 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 3BBDC 8004B3DC 280122AC */  sw         $v0, (0x1F800128 & 0xFFFF)($at)
    /* 3BBE0 8004B3E0 0800828C */  lw         $v0, 0x8($a0)
    /* 3BBE4 8004B3E4 801F013C */  lui        $at, (0x1F80012C >> 16)
    /* 3BBE8 8004B3E8 2C0122AC */  sw         $v0, (0x1F80012C & 0xFFFF)($at)
    /* 3BBEC 8004B3EC 032D0108 */  j          .L8004B40C
    /* 3BBF0 8004B3F0 00000000 */   nop
  .L8004B3F4:
    /* 3BBF4 8004B3F4 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 3BBF8 8004B3F8 240120AC */  sw         $zero, (0x1F800124 & 0xFFFF)($at)
    /* 3BBFC 8004B3FC 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 3BC00 8004B400 280120AC */  sw         $zero, (0x1F800128 & 0xFFFF)($at)
    /* 3BC04 8004B404 801F013C */  lui        $at, (0x1F80012C >> 16)
    /* 3BC08 8004B408 2C0120AC */  sw         $zero, (0x1F80012C & 0xFFFF)($at)
  .L8004B40C:
    /* 3BC0C 8004B40C 0800E003 */  jr         $ra
    /* 3BC10 8004B410 00000000 */   nop
.size func_8004B3C0, . - func_8004B3C0
