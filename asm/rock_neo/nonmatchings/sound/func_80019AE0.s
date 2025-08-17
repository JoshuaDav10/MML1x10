.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019AE0
    /* A2E0 80019AE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2E4 80019AE4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A2E8 80019AE8 9676000C */  jal        Sce_flag_test
    /* A2EC 80019AEC E1010424 */   addiu     $a0, $zero, 0x1E1
    /* A2F0 80019AF0 02004014 */  bnez       $v0, .L80019AFC
    /* A2F4 80019AF4 25000224 */   addiu     $v0, $zero, 0x25
    /* A2F8 80019AF8 30000224 */  addiu      $v0, $zero, 0x30
  .L80019AFC:
    /* A2FC 80019AFC 0880013C */  lui        $at, %hi(D_80082218)
    /* A300 80019B00 182222A4 */  sh         $v0, %lo(D_80082218)($at)
    /* A304 80019B04 1000BF8F */  lw         $ra, 0x10($sp)
    /* A308 80019B08 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A30C 80019B0C 0800E003 */  jr         $ra
    /* A310 80019B10 00000000 */   nop
.size func_80019AE0, . - func_80019AE0
