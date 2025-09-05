.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065310
    /* 55B10 80065310 78E38424 */  addiu      $a0, $a0, -0x1C88
    /* 55B14 80065314 80038526 */  addiu      $a1, $s4, 0x380
    /* 55B18 80065318 B75D000C */  jal        .L800176DC
    /* 55B1C 8006531C 08000624 */   addiu     $a2, $zero, 0x8
    /* 55B20 80065320 0C80043C */  lui        $a0, %hi(D_800BD3B8)
    /* 55B24 80065324 B8D38424 */  addiu      $a0, $a0, %lo(D_800BD3B8)
    /* 55B28 80065328 80048526 */  addiu      $a1, $s4, 0x480
    /* 55B2C 8006532C B75D000C */  jal        .L800176DC
    /* 55B30 80065330 70000624 */   addiu     $a2, $zero, 0x70
    /* 55B34 80065334 0C80043C */  lui        $a0, (0x800C0000 >> 16)
.size func_80065310, . - func_80065310
