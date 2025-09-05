.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C0B4
    /* 4C8B4 8005C0B4 0200A3A0 */  sb         $v1, 0x2($a1)
    /* 4C8B8 8005C0B8 10380000 */  mfhi       $a3
    /* 4C8BC 8005C0BC C2200700 */  srl        $a0, $a3, 3
    /* 4C8C0 8005C0C0 80100400 */  sll        $v0, $a0, 2
    /* 4C8C4 8005C0C4 21104400 */  addu       $v0, $v0, $a0
    /* 4C8C8 8005C0C8 40100200 */  sll        $v0, $v0, 1
    /* 4C8CC 8005C0CC 23200201 */  subu       $a0, $t0, $v0
    /* 4C8D0 8005C0D0 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4C8D4 8005C0D4 21082400 */  addu       $at, $at, $a0
    /* 4C8D8 8005C0D8 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4C8DC 8005C0DC 0800E003 */  jr         $ra
    /* 4C8E0 8005C0E0 0000A2A0 */   sb        $v0, 0x0($a1)
.size func_8005C0B4, . - func_8005C0B4
