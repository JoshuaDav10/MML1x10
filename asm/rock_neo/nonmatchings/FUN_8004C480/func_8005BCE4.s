.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BCE4
    /* 4C4E4 8005BCE4 801F033C */  lui        $v1, (0x1F800070 >> 16)
    /* 4C4E8 8005BCE8 70006334 */  ori        $v1, $v1, (0x1F800070 & 0xFFFF)
    /* 4C4EC 8005BCEC 0000628C */  lw         $v0, 0x0($v1)
    /* 4C4F0 8005BCF0 00000000 */  nop
    /* 4C4F4 8005BCF4 18004624 */  addiu      $a2, $v0, 0x18
    /* 4C4F8 8005BCF8 000066AC */  sw         $a2, 0x0($v1)
    /* 4C4FC 8005BCFC 980082AC */  sw         $v0, 0x98($a0)
.size func_8005BCE4, . - func_8005BCE4
