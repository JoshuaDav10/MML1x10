.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B3E4
    /* BBE4 8001B3E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BBE8 8001B3E8 1000BFAF */  sw         $ra, 0x10($sp)
  .L8001B3EC:
    /* BBEC 8001B3EC DCDD010C */  jal        CdInit
    /* BBF0 8001B3F0 00000000 */   nop
    /* BBF4 8001B3F4 FDFF4010 */  beqz       $v0, .L8001B3EC
    /* BBF8 8001B3F8 07000224 */   addiu     $v0, $zero, 0x7
    /* BBFC 8001B3FC 0A80053C */  lui        $a1, %hi(D_800988EC)
    /* BC00 8001B400 EC88A524 */  addiu      $a1, $a1, %lo(D_800988EC)
    /* BC04 8001B404 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* BC08 8001B408 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* BC0C 8001B40C 0A80013C */  lui        $at, %hi(D_800988DC)
    /* BC10 8001B410 DC8820A0 */  sb         $zero, %lo(D_800988DC)($at)
    /* BC14 8001B414 0A80013C */  lui        $at, %hi(D_80098998)
    /* BC18 8001B418 988920AC */  sw         $zero, %lo(D_80098998)($at)
    /* BC1C 8001B41C 0A80013C */  lui        $at, %hi(D_800988C0)
    /* BC20 8001B420 C08820A0 */  sb         $zero, %lo(D_800988C0)($at)
    /* BC24 8001B424 0A80013C */  lui        $at, %hi(D_80098B42)
    /* BC28 8001B428 428B22A0 */  sb         $v0, %lo(D_80098B42)($at)
    /* BC2C 8001B42C 0A80013C */  lui        $at, %hi(D_800988EC)
    /* BC30 8001B430 EC8820A0 */  sb         $zero, %lo(D_800988EC)($at)
    /* BC34 8001B434 0A80013C */  lui        $at, %hi(D_80098AA0)
    /* BC38 8001B438 A08A20A0 */  sb         $zero, %lo(D_80098AA0)($at)
    /* BC3C 8001B43C 0A80013C */  lui        $at, %hi(D_800988DC)
    /* BC40 8001B440 DC8820A0 */  sb         $zero, %lo(D_800988DC)($at)
    /* BC44 8001B444 AF74000C */  jal        func_8001D2BC
    /* BC48 8001B448 0E000424 */   addiu     $a0, $zero, 0xE
    /* BC4C 8001B44C F0000324 */  addiu      $v1, $zero, 0xF0
    /* BC50 8001B450 01000224 */  addiu      $v0, $zero, 0x1
    /* BC54 8001B454 0A80013C */  lui        $at, %hi(D_80098964)
    /* BC58 8001B458 648922A0 */  sb         $v0, %lo(D_80098964)($at)
  .L8001B45C:
    /* BC5C 8001B45C 0A80013C */  lui        $at, %hi(D_800A3A40)
    /* BC60 8001B460 21082300 */  addu       $at, $at, $v1
    /* BC64 8001B464 403A20AC */  sw         $zero, %lo(D_800A3A40)($at)
    /* BC68 8001B468 F0FF6324 */  addiu      $v1, $v1, -0x10
    /* BC6C 8001B46C FBFF6104 */  bgez       $v1, .L8001B45C
    /* BC70 8001B470 00000000 */   nop
    /* BC74 8001B474 0A80023C */  lui        $v0, %hi(D_800A3A40)
    /* BC78 8001B478 403A4224 */  addiu      $v0, $v0, %lo(D_800A3A40)
    /* BC7C 8001B47C 0A80013C */  lui        $at, %hi(D_80098A84)
    /* BC80 8001B480 848A22AC */  sw         $v0, %lo(D_80098A84)($at)
    /* BC84 8001B484 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* BC88 8001B488 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* BC8C 8001B48C 0A80013C */  lui        $at, %hi(D_80098828)
    /* BC90 8001B490 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* BC94 8001B494 0A80013C */  lui        $at, %hi(D_80098968)
    /* BC98 8001B498 688920AC */  sw         $zero, %lo(D_80098968)($at)
    /* BC9C 8001B49C 0A80013C */  lui        $at, %hi(D_800989C8)
    /* BCA0 8001B4A0 C88920AC */  sw         $zero, %lo(D_800989C8)($at)
    /* BCA4 8001B4A4 0A80013C */  lui        $at, %hi(D_800989C4)
    /* BCA8 8001B4A8 C48920AC */  sw         $zero, %lo(D_800989C4)($at)
    /* BCAC 8001B4AC 0A80013C */  lui        $at, %hi(D_800988D0)
    /* BCB0 8001B4B0 D08820A0 */  sb         $zero, %lo(D_800988D0)($at)
    /* BCB4 8001B4B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* BCB8 8001B4B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BCBC 8001B4BC 0800E003 */  jr         $ra
    /* BCC0 8001B4C0 00000000 */   nop
.size func_8001B3E4, . - func_8001B3E4
