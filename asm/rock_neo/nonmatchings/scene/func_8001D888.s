.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D888
    /* E088 8001D888 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E08C 8001D88C 1000BFAF */  sw         $ra, 0x10($sp)
  .L8001D890:
    /* E090 8001D890 0E76000C */  jal        Cd_read_sync2
    /* E094 8001D894 00000000 */   nop
    /* E098 8001D898 05004010 */  beqz       $v0, .L8001D8B0
    /* E09C 8001D89C 00000000 */   nop
    /* E0A0 8001D8A0 A64B000C */  jal        func_80012E98
    /* E0A4 8001D8A4 01000424 */   addiu     $a0, $zero, 0x1
    /* E0A8 8001D8A8 24760008 */  j          .L8001D890
    /* E0AC 8001D8AC 00000000 */   nop
  .L8001D8B0:
    /* E0B0 8001D8B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* E0B4 8001D8B4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E0B8 8001D8B8 0800E003 */  jr         $ra
    /* E0BC 8001D8BC 00000000 */   nop
.size func_8001D888, . - func_8001D888
