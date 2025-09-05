.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D8C0
    /* E0C0 8001D8C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E0C4 8001D8C4 0E008014 */  bnez       $a0, .L8001D900
    /* E0C8 8001D8C8 1000BFAF */   sw        $ra, 0x10($sp)
    /* E0CC 8001D8CC 0C80033C */  lui        $v1, %hi(Sce_flag)
    /* E0D0 8001D8D0 78E36324 */  addiu      $v1, $v1, %lo(Sce_flag)
    /* E0D4 8001D8D4 3F000224 */  addiu      $v0, $zero, 0x3F
  .L8001D8D8:
    /* E0D8 8001D8D8 000060AC */  sw         $zero, 0x0($v1)
    /* E0DC 8001D8DC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E0E0 8001D8E0 FDFF4104 */  bgez       $v0, .L8001D8D8
    /* E0E4 8001D8E4 04006324 */   addiu     $v1, $v1, 0x4
    /* E0E8 8001D8E8 869F010C */  jal        func_80067E18
    /* E0EC 8001D8EC 00000000 */   nop
    /* E0F0 8001D8F0 939F010C */  jal        func_80067E4C
    /* E0F4 8001D8F4 00000000 */   nop
    /* E0F8 8001D8F8 46760008 */  j          .L8001D918
    /* E0FC 8001D8FC 00000000 */   nop
  .L8001D900:
    /* E100 8001D900 0B80043C */  lui        $a0, %hi(D_800B6130)
    /* E104 8001D904 30618424 */  addiu      $a0, $a0, %lo(D_800B6130)
    /* E108 8001D908 0C80053C */  lui        $a1, %hi(Sce_flag)
    /* E10C 8001D90C 78E3A524 */  addiu      $a1, $a1, %lo(Sce_flag)
    /* E110 8001D910 B75D000C */  jal        .L800176DC
    /* E114 8001D914 08000624 */   addiu     $a2, $zero, 0x8
  .L8001D918:
    /* E118 8001D918 1000BF8F */  lw         $ra, 0x10($sp)
    /* E11C 8001D91C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E120 8001D920 0800E003 */  jr         $ra
    /* E124 8001D924 00000000 */   nop
.size func_8001D8C0, . - func_8001D8C0
