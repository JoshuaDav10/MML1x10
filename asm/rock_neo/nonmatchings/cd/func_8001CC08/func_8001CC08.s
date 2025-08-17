.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CC08
    /* D408 8001CC08 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D40C 8001CC0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* D410 8001CC10 21808000 */  addu       $s0, $a0, $zero
    /* D414 8001CC14 1400BFAF */  sw         $ra, 0x14($sp)
    /* D418 8001CC18 83DE010C */  jal        CdSyncCallback
    /* D41C 8001CC1C 21200000 */   addu      $a0, $zero, $zero
    /* D420 8001CC20 FF001032 */  andi       $s0, $s0, 0xFF
    /* D424 8001CC24 02000224 */  addiu      $v0, $zero, 0x2
    /* D428 8001CC28 08000216 */  bne        $s0, $v0, .L8001CC4C
    /* D42C 8001CC2C 80000324 */   addiu     $v1, $zero, 0x80
    /* D430 8001CC30 01000224 */  addiu      $v0, $zero, 0x1
    /* D434 8001CC34 0A80013C */  lui        $at, %hi(D_80098964)
    /* D438 8001CC38 648922A0 */  sb         $v0, %lo(D_80098964)($at)
    /* D43C 8001CC3C 0A80013C */  lui        $at, %hi(D_800988C0)
    /* D440 8001CC40 C08820A0 */  sb         $zero, %lo(D_800988C0)($at)
    /* D444 8001CC44 1A730008 */  j          .L8001CC68
    /* D448 8001CC48 00000000 */   nop
  .L8001CC4C:
    /* D44C 8001CC4C 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D450 8001CC50 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D454 8001CC54 0A80013C */  lui        $at, %hi(D_800988C0)
    /* D458 8001CC58 C08823A0 */  sb         $v1, %lo(D_800988C0)($at)
    /* D45C 8001CC5C 08004234 */  ori        $v0, $v0, 0x8
    /* D460 8001CC60 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D464 8001CC64 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
  .L8001CC68:
    /* D468 8001CC68 1400BF8F */  lw         $ra, 0x14($sp)
    /* D46C 8001CC6C 1000B08F */  lw         $s0, 0x10($sp)
    /* D470 8001CC70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D474 8001CC74 0800E003 */  jr         $ra
    /* D478 8001CC78 00000000 */   nop
.size func_8001CC08, . - func_8001CC08
