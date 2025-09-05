.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004559C
    /* 35D9C 8004559C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35DA0 800455A0 21288000 */  addu       $a1, $a0, $zero
    /* 35DA4 800455A4 21010424 */  addiu      $a0, $zero, 0x121
    /* 35DA8 800455A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35DAC 800455AC 0800A290 */  lbu        $v0, 0x8($a1)
    /* 35DB0 800455B0 0800A390 */  lbu        $v1, 0x8($a1)
    /* 35DB4 800455B4 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 35DB8 800455B8 80100200 */  sll        $v0, $v0, 2
    /* 35DBC 800455BC FBFF6324 */  addiu      $v1, $v1, -0x5
    /* 35DC0 800455C0 0980013C */  lui        $at, %hi(D_80097E08)
    /* 35DC4 800455C4 21082200 */  addu       $at, $at, $v0
    /* 35DC8 800455C8 087E2294 */  lhu        $v0, %lo(D_80097E08)($at)
    /* 35DCC 800455CC 80180300 */  sll        $v1, $v1, 2
    /* 35DD0 800455D0 2200A2A0 */  sb         $v0, 0x22($a1)
    /* 35DD4 800455D4 0800A290 */  lbu        $v0, 0x8($a1)
    /* 35DD8 800455D8 0980013C */  lui        $at, %hi(D_80097E0A)
    /* 35DDC 800455DC 21082300 */  addu       $at, $at, $v1
    /* 35DE0 800455E0 0A7E2394 */  lhu        $v1, %lo(D_80097E0A)($at)
    /* 35DE4 800455E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 35DE8 800455E8 0800A2A0 */  sb         $v0, 0x8($a1)
    /* 35DEC 800455EC 2300A3A0 */  sb         $v1, 0x23($a1)
    /* 35DF0 800455F0 1468000C */  jal        Sound_call2
    /* 35DF4 800455F4 1C00A524 */   addiu     $a1, $a1, 0x1C
    /* 35DF8 800455F8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35DFC 800455FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35E00 80045600 0800E003 */  jr         $ra
    /* 35E04 80045604 00000000 */   nop
.size func_8004559C, . - func_8004559C
