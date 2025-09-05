.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80066614
    /* 56E14 80066614 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 56E18 80066618 1000BFAF */  sw         $ra, 0x10($sp)
    /* 56E1C 8006661C 0A80013C */  lui        $at, %hi(D_80098912)
    /* 56E20 80066620 128924A4 */  sh         $a0, %lo(D_80098912)($at)
    /* 56E24 80066624 80100200 */  sll        $v0, $v0, 2
    /* 56E28 80066628 0A80013C */  lui        $at, %hi(D_8009891A)
    /* 56E2C 8006662C 1A8923A4 */  sh         $v1, %lo(D_8009891A)($at)
    /* 56E30 80066630 0A80013C */  lui        $at, %hi(D_80098918)
    /* 56E34 80066634 188925A4 */  sh         $a1, %lo(D_80098918)($at)
    /* 56E38 80066638 0980013C */  lui        $at, %hi(D_8008FD10)
    /* 56E3C 8006663C 21082200 */  addu       $at, $at, $v0
    /* 56E40 80066640 10FD228C */  lw         $v0, %lo(D_8008FD10)($at)
    /* 56E44 80066644 0A80043C */  lui        $a0, %hi(D_80098910)
    /* 56E48 80066648 10898424 */  addiu      $a0, $a0, %lo(D_80098910)
    /* 56E4C 8006664C 09F84000 */  jalr       $v0
    /* 56E50 80066650 00000000 */   nop
    /* 56E54 80066654 1000BF8F */  lw         $ra, 0x10($sp)
    /* 56E58 80066658 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 56E5C 8006665C 0800E003 */  jr         $ra
    /* 56E60 80066660 00000000 */   nop
.size func_80066614, . - func_80066614
