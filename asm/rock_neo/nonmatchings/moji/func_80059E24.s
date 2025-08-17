.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059E24
    /* 4A624 80059E24 1400828C */  lw         $v0, 0x14($a0)
    /* 4A628 80059E28 BE008394 */  lhu        $v1, 0xBE($a0)
    /* 4A62C 80059E2C 01004590 */  lbu        $a1, 0x1($v0)
    /* 4A630 80059E30 01006224 */  addiu      $v0, $v1, 0x1
    /* 4A634 80059E34 80180300 */  sll        $v1, $v1, 2
    /* 4A638 80059E38 BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 4A63C 80059E3C 1400828C */  lw         $v0, 0x14($a0)
    /* 4A640 80059E40 21186400 */  addu       $v1, $v1, $a0
    /* 4A644 80059E44 02004224 */  addiu      $v0, $v0, 0x2
    /* 4A648 80059E48 180062AC */  sw         $v0, 0x18($v1)
    /* 4A64C 80059E4C 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A650 80059E50 21082500 */  addu       $at, $at, $a1
    /* 4A654 80059E54 F8E22290 */  lbu        $v0, %lo(D_800BE2F8)($at)
    /* 4A658 80059E58 00000000 */  nop
    /* 4A65C 80059E5C 80100200 */  sll        $v0, $v0, 2
    /* 4A660 80059E60 0980013C */  lui        $at, %hi(D_8008CE5C)
    /* 4A664 80059E64 21082200 */  addu       $at, $at, $v0
    /* 4A668 80059E68 5CCE228C */  lw         $v0, %lo(D_8008CE5C)($at)
    /* 4A66C 80059E6C 0800E003 */  jr         $ra
    /* 4A670 80059E70 140082AC */   sw        $v0, 0x14($a0)
.size func_80059E24, . - func_80059E24
