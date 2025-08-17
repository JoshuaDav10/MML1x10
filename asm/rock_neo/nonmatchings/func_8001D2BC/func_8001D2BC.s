.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D2BC
    /* DABC 8001D2BC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* DAC0 8001D2C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* DAC4 8001D2C4 2190A000 */  addu       $s2, $a1, $zero
    /* DAC8 8001D2C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* DACC 8001D2CC 2180C000 */  addu       $s0, $a2, $zero
    /* DAD0 8001D2D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* DAD4 8001D2D4 21888000 */  addu       $s1, $a0, $zero
    /* DAD8 8001D2D8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* DADC 8001D2DC 01000424 */  addiu      $a0, $zero, 0x1
  .L8001D2E0:
    /* DAE0 8001D2E0 73DE010C */  jal        CdSync
    /* DAE4 8001D2E4 21280002 */   addu      $a1, $s0, $zero
    /* DAE8 8001D2E8 FDFF4010 */  beqz       $v0, .L8001D2E0
    /* DAEC 8001D2EC 01000424 */   addiu     $a0, $zero, 0x1
    /* DAF0 8001D2F0 FF002432 */  andi       $a0, $s1, 0xFF
  .L8001D2F4:
    /* DAF4 8001D2F4 21284002 */  addu       $a1, $s2, $zero
    /* DAF8 8001D2F8 28DF010C */  jal        CdControlB
    /* DAFC 8001D2FC 21300002 */   addu      $a2, $s0, $zero
    /* DB00 8001D300 FCFF4010 */  beqz       $v0, .L8001D2F4
    /* DB04 8001D304 FF002432 */   andi      $a0, $s1, 0xFF
    /* DB08 8001D308 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* DB0C 8001D30C 1800B28F */  lw         $s2, 0x18($sp)
    /* DB10 8001D310 1400B18F */  lw         $s1, 0x14($sp)
    /* DB14 8001D314 1000B08F */  lw         $s0, 0x10($sp)
    /* DB18 8001D318 2000BD27 */  addiu      $sp, $sp, 0x20
    /* DB1C 8001D31C 0800E003 */  jr         $ra
    /* DB20 8001D320 00000000 */   nop
.size func_8001D2BC, . - func_8001D2BC
