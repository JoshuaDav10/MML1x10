.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D254
    /* DA54 8001D254 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* DA58 8001D258 1800B2AF */  sw         $s2, 0x18($sp)
    /* DA5C 8001D25C 2190A000 */  addu       $s2, $a1, $zero
    /* DA60 8001D260 1000B0AF */  sw         $s0, 0x10($sp)
    /* DA64 8001D264 2180C000 */  addu       $s0, $a2, $zero
    /* DA68 8001D268 1400B1AF */  sw         $s1, 0x14($sp)
    /* DA6C 8001D26C 21888000 */  addu       $s1, $a0, $zero
    /* DA70 8001D270 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* DA74 8001D274 01000424 */  addiu      $a0, $zero, 0x1
  .L8001D278:
    /* DA78 8001D278 73DE010C */  jal        CdSync
    /* DA7C 8001D27C 21280002 */   addu      $a1, $s0, $zero
    /* DA80 8001D280 FDFF4010 */  beqz       $v0, .L8001D278
    /* DA84 8001D284 01000424 */   addiu     $a0, $zero, 0x1
    /* DA88 8001D288 FF002432 */  andi       $a0, $s1, 0xFF
  .L8001D28C:
    /* DA8C 8001D28C 21284002 */  addu       $a1, $s2, $zero
    /* DA90 8001D290 8FDE010C */  jal        CdControl
    /* DA94 8001D294 21300002 */   addu      $a2, $s0, $zero
    /* DA98 8001D298 FCFF4010 */  beqz       $v0, .L8001D28C
    /* DA9C 8001D29C FF002432 */   andi      $a0, $s1, 0xFF
    /* DAA0 8001D2A0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* DAA4 8001D2A4 1800B28F */  lw         $s2, 0x18($sp)
    /* DAA8 8001D2A8 1400B18F */  lw         $s1, 0x14($sp)
    /* DAAC 8001D2AC 1000B08F */  lw         $s0, 0x10($sp)
    /* DAB0 8001D2B0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* DAB4 8001D2B4 0800E003 */  jr         $ra
    /* DAB8 8001D2B8 00000000 */   nop
.size func_8001D254, . - func_8001D254
