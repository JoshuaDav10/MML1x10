.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D7B0
    /* 4DFB0 8005D7B0 000060AC */  sw         $zero, 0x0($v1)
  .L8005D7B4:
    /* 4DFB4 8005D7B4 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 4DFB8 8005D7B8 0800E003 */  jr         $ra
    /* 4DFBC 8005D7BC 00000000 */   nop
.size func_8005D7B0, . - func_8005D7B0
