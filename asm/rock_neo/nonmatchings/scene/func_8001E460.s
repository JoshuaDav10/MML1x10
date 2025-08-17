.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E460
    /* EC60 8001E460 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EC64 8001E464 1000B0AF */  sw         $s0, 0x10($sp)
    /* EC68 8001E468 21808000 */  addu       $s0, $a0, $zero
    /* EC6C 8001E46C 1400B1AF */  sw         $s1, 0x14($sp)
    /* EC70 8001E470 2188C000 */  addu       $s1, $a2, $zero
    /* EC74 8001E474 0900A010 */  beqz       $a1, .L8001E49C
    /* EC78 8001E478 1800BFAF */   sw        $ra, 0x18($sp)
    /* EC7C 8001E47C A376000C */  jal        Sce_flag_on
    /* EC80 8001E480 E0070426 */   addiu     $a0, $s0, 0x7E0
    /* EC84 8001E484 07002012 */  beqz       $s1, .L8001E4A4
    /* EC88 8001E488 00000000 */   nop
    /* EC8C 8001E48C A376000C */  jal        Sce_flag_on
    /* EC90 8001E490 C0070426 */   addiu     $a0, $s0, 0x7C0
    /* EC94 8001E494 2B790008 */  j          .L8001E4AC
    /* EC98 8001E498 00000000 */   nop
  .L8001E49C:
    /* EC9C 8001E49C 3477000C */  jal        Sce_flag_off
    /* ECA0 8001E4A0 E0070426 */   addiu     $a0, $s0, 0x7E0
  .L8001E4A4:
    /* ECA4 8001E4A4 3477000C */  jal        Sce_flag_off
    /* ECA8 8001E4A8 C0070426 */   addiu     $a0, $s0, 0x7C0
  .L8001E4AC:
    /* ECAC 8001E4AC 1800BF8F */  lw         $ra, 0x18($sp)
    /* ECB0 8001E4B0 1400B18F */  lw         $s1, 0x14($sp)
    /* ECB4 8001E4B4 1000B08F */  lw         $s0, 0x10($sp)
    /* ECB8 8001E4B8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* ECBC 8001E4BC 0800E003 */  jr         $ra
    /* ECC0 8001E4C0 00000000 */   nop
.size func_8001E460, . - func_8001E460
