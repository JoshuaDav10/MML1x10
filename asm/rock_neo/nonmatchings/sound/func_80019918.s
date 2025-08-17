.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019918
    /* A118 80019918 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A11C 8001991C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A120 80019920 9676000C */  jal        Sce_flag_test
    /* A124 80019924 04020424 */   addiu     $a0, $zero, 0x204
    /* A128 80019928 05004010 */  beqz       $v0, .L80019940
    /* A12C 8001992C 00000000 */   nop
    /* A130 80019930 9676000C */  jal        Sce_flag_test
    /* A134 80019934 06020424 */   addiu     $a0, $zero, 0x206
    /* A138 80019938 0A004010 */  beqz       $v0, .L80019964
    /* A13C 8001993C 39000224 */   addiu     $v0, $zero, 0x39
  .L80019940:
    /* A140 80019940 9676000C */  jal        Sce_flag_test
    /* A144 80019944 12020424 */   addiu     $a0, $zero, 0x212
    /* A148 80019948 06004010 */  beqz       $v0, .L80019964
    /* A14C 8001994C 07000224 */   addiu     $v0, $zero, 0x7
    /* A150 80019950 9676000C */  jal        Sce_flag_test
    /* A154 80019954 13020424 */   addiu     $a0, $zero, 0x213
    /* A158 80019958 02004014 */  bnez       $v0, .L80019964
    /* A15C 8001995C 07000224 */   addiu     $v0, $zero, 0x7
    /* A160 80019960 39000224 */  addiu      $v0, $zero, 0x39
  .L80019964:
    /* A164 80019964 0880013C */  lui        $at, %hi(D_8008222C)
    /* A168 80019968 2C2222A4 */  sh         $v0, %lo(D_8008222C)($at)
    /* A16C 8001996C 1000BF8F */  lw         $ra, 0x10($sp)
    /* A170 80019970 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A174 80019974 0800E003 */  jr         $ra
    /* A178 80019978 00000000 */   nop
.size func_80019918, . - func_80019918
