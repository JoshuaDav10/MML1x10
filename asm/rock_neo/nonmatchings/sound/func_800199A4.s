.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800199A4
    /* A1A4 800199A4 0C80033C */  lui        $v1, %hi(Game_work + 0x53)
    /* A1A8 800199A8 631B6380 */  lb         $v1, %lo(Game_work + 0x53)($v1)
    /* A1AC 800199AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A1B0 800199B0 04006228 */  slti       $v0, $v1, 0x4
    /* A1B4 800199B4 09004010 */  beqz       $v0, .L800199DC
    /* A1B8 800199B8 1000BFAF */   sw        $ra, 0x10($sp)
    /* A1BC 800199BC 08006018 */  blez       $v1, .L800199E0
    /* A1C0 800199C0 08010224 */   addiu     $v0, $zero, 0x108
    /* A1C4 800199C4 9676000C */  jal        Sce_flag_test
    /* A1C8 800199C8 30000424 */   addiu     $a0, $zero, 0x30
    /* A1CC 800199CC 04004014 */  bnez       $v0, .L800199E0
    /* A1D0 800199D0 08010224 */   addiu     $v0, $zero, 0x108
    /* A1D4 800199D4 78660008 */  j          .L800199E0
    /* A1D8 800199D8 16000224 */   addiu     $v0, $zero, 0x16
  .L800199DC:
    /* A1DC 800199DC 08010224 */  addiu      $v0, $zero, 0x108
  .L800199E0:
    /* A1E0 800199E0 0880013C */  lui        $at, %hi(D_80082278)
    /* A1E4 800199E4 782222A4 */  sh         $v0, %lo(D_80082278)($at)
    /* A1E8 800199E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A1EC 800199EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A1F0 800199F0 0800E003 */  jr         $ra
    /* A1F4 800199F4 00000000 */   nop
.size func_800199A4, . - func_800199A4
