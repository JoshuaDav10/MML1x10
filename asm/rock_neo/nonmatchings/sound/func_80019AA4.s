.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019AA4
    /* A2A4 80019AA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2A8 80019AA8 1000BFAF */  sw         $ra, 0x10($sp)
    /* A2AC 80019AAC 9676000C */  jal        Sce_flag_test
    /* A2B0 80019AB0 35000424 */   addiu     $a0, $zero, 0x35
    /* A2B4 80019AB4 02004014 */  bnez       $v0, .L80019AC0
    /* A2B8 80019AB8 2D000224 */   addiu     $v0, $zero, 0x2D
    /* A2BC 80019ABC FFFF0234 */  ori        $v0, $zero, 0xFFFF
  .L80019AC0:
    /* A2C0 80019AC0 0880013C */  lui        $at, %hi(D_800822F2)
    /* A2C4 80019AC4 F22222A4 */  sh         $v0, %lo(D_800822F2)($at)
    /* A2C8 80019AC8 0880013C */  lui        $at, %hi(D_800822F4)
    /* A2CC 80019ACC F42222A4 */  sh         $v0, %lo(D_800822F4)($at)
    /* A2D0 80019AD0 1000BF8F */  lw         $ra, 0x10($sp)
    /* A2D4 80019AD4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2D8 80019AD8 0800E003 */  jr         $ra
    /* A2DC 80019ADC 00000000 */   nop
.size func_80019AA4, . - func_80019AA4
