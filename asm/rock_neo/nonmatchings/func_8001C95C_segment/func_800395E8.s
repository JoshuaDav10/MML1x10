.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800395E8
    /* 29DE8 800395E8 30000224 */  addiu      $v0, $zero, 0x30
    /* 29DEC 800395EC 0A80013C */  lui        $at, %hi(D_800A396C)
    /* 29DF0 800395F0 6C3922AC */  sw         $v0, %lo(D_800A396C)($at)
    /* 29DF4 800395F4 00020224 */  addiu      $v0, $zero, 0x200
    /* 29DF8 800395F8 0A80013C */  lui        $at, %hi(D_800A3964)
    /* 29DFC 800395FC 643922AC */  sw         $v0, %lo(D_800A3964)($at)
    /* 29E00 80039600 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 29E04 80039604 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 29E08 80039608 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 29E0C 8003960C 96000224 */  addiu      $v0, $zero, 0x96
    /* 29E10 80039610 0A80013C */  lui        $at, %hi(D_800A3960)
    /* 29E14 80039614 603920A0 */  sb         $zero, %lo(D_800A3960)($at)
    /* 29E18 80039618 0A80013C */  lui        $at, %hi(D_800A39B4)
    /* 29E1C 8003961C B43922AC */  sw         $v0, %lo(D_800A39B4)($at)
    /* 29E20 80039620 0A80013C */  lui        $at, %hi(D_800A3959)
    /* 29E24 80039624 593920A0 */  sb         $zero, %lo(D_800A3959)($at)
    /* 29E28 80039628 0800E003 */  jr         $ra
    /* 29E2C 8003962C 00000000 */   nop
.size func_800395E8, . - func_800395E8
