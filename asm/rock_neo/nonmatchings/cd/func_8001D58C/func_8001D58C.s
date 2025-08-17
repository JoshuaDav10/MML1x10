.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D58C
    /* DD8C 8001D58C 04000224 */  addiu      $v0, $zero, 0x4
    /* DD90 8001D590 022F0400 */  srl        $a1, $a0, 28
    /* DD94 8001D594 0300A530 */  andi       $a1, $a1, 0x3
    /* DD98 8001D598 80280500 */  sll        $a1, $a1, 2
    /* DD9C 8001D59C 0A80063C */  lui        $a2, %hi(unknown_Cd_strucptr)
    /* DDA0 8001D5A0 A489C68C */  lw         $a2, %lo(unknown_Cd_strucptr)($a2)
    /* DDA4 8001D5A4 0040073C */  lui        $a3, (0x40000000 >> 16)
    /* DDA8 8001D5A8 0A80013C */  lui        $at, %hi(D_800989B8)
    /* DDAC 8001D5AC B88924AC */  sw         $a0, %lo(D_800989B8)($at)
    /* DDB0 8001D5B0 0000C2AC */  sw         $v0, 0x0($a2)
    /* DDB4 8001D5B4 00110400 */  sll        $v0, $a0, 4
    /* DDB8 8001D5B8 02150200 */  srl        $v0, $v0, 20
    /* DDBC 8001D5BC 0980013C */  lui        $at, %hi(D_80088F9C)
    /* DDC0 8001D5C0 21082500 */  addu       $at, $at, $a1
    /* DDC4 8001D5C4 9C8F238C */  lw         $v1, %lo(D_80088F9C)($at)
    /* DDC8 8001D5C8 80100200 */  sll        $v0, $v0, 2
    /* DDCC 8001D5CC 21184300 */  addu       $v1, $v0, $v1
    /* DDD0 8001D5D0 0000638C */  lw         $v1, 0x0($v1)
    /* DDD4 8001D5D4 24388700 */  and        $a3, $a0, $a3
    /* DDD8 8001D5D8 0400C3AC */  sw         $v1, 0x4($a2)
    /* DDDC 8001D5DC 0980013C */  lui        $at, %hi(D_80088EF8)
    /* DDE0 8001D5E0 21082500 */  addu       $at, $at, $a1
    /* DDE4 8001D5E4 F88E238C */  lw         $v1, %lo(D_80088EF8)($at)
    /* DDE8 8001D5E8 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* DDEC 8001D5EC 21104300 */  addu       $v0, $v0, $v1
    /* DDF0 8001D5F0 0000438C */  lw         $v1, 0x0($v0)
    /* DDF4 8001D5F4 C0200400 */  sll        $a0, $a0, 3
    /* DDF8 8001D5F8 21208300 */  addu       $a0, $a0, $v1
    /* DDFC 8001D5FC 0000828C */  lw         $v0, 0x0($a0)
    /* DE00 8001D600 00000000 */  nop
    /* DE04 8001D604 0800C2AC */  sw         $v0, 0x8($a2)
    /* DE08 8001D608 0400828C */  lw         $v0, 0x4($a0)
    /* DE0C 8001D60C 0A80033C */  lui        $v1, %hi(D_80098A84)
    /* DE10 8001D610 848A638C */  lw         $v1, %lo(D_80098A84)($v1)
    /* DE14 8001D614 25104700 */  or         $v0, $v0, $a3
    /* DE18 8001D618 0C00C2AC */  sw         $v0, 0xC($a2)
    /* DE1C 8001D61C 0800628C */  lw         $v0, 0x8($v1)
    /* DE20 8001D620 0A80013C */  lui        $at, %hi(D_800989BC)
    /* DE24 8001D624 BC8922AC */  sw         $v0, %lo(D_800989BC)($at)
    /* DE28 8001D628 0C00628C */  lw         $v0, 0xC($v1)
    /* DE2C 8001D62C 1000C624 */  addiu      $a2, $a2, 0x10
    /* DE30 8001D630 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DE34 8001D634 A48926AC */  sw         $a2, %lo(unknown_Cd_strucptr)($at)
    /* DE38 8001D638 0A80013C */  lui        $at, %hi(D_800989C0)
    /* DE3C 8001D63C C08922AC */  sw         $v0, %lo(D_800989C0)($at)
    /* DE40 8001D640 0800E003 */  jr         $ra
    /* DE44 8001D644 00000000 */   nop
.size func_8001D58C, . - func_8001D58C
