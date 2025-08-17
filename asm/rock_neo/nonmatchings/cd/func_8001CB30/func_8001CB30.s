.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CB30
    /* D330 8001CB30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D334 8001CB34 1000BFAF */  sw         $ra, 0x10($sp)
    /* D338 8001CB38 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D33C 8001CB3C 6C8920A0 */  sb         $zero, %lo(D_8009896C)($at)
    /* D340 8001CB40 89DE010C */  jal        CdReadyCallback
    /* D344 8001CB44 21200000 */   addu      $a0, $zero, $zero
    /* D348 8001CB48 0280043C */  lui        $a0, %hi(func_8001CC08)
    /* D34C 8001CB4C 08CC8424 */  addiu      $a0, $a0, %lo(func_8001CC08)
    /* D350 8001CB50 83DE010C */  jal        CdSyncCallback
    /* D354 8001CB54 00000000 */   nop
    /* D358 8001CB58 09000424 */  addiu      $a0, $zero, 0x9
    /* D35C 8001CB5C 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D360 8001CB60 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D364 8001CB64 9574000C */  jal        func_8001D254
    /* D368 8001CB68 21280000 */   addu      $a1, $zero, $zero
    /* D36C 8001CB6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* D370 8001CB70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D374 8001CB74 0800E003 */  jr         $ra
    /* D378 8001CB78 00000000 */   nop
.size func_8001CB30, . - func_8001CB30
