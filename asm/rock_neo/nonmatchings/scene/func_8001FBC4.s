.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FBC4
    /* 103C4 8001FBC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 103C8 8001FBC8 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 103CC 8001FBCC 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 103D0 8001FBD0 05000224 */  addiu      $v0, $zero, 0x5
    /* 103D4 8001FBD4 17006214 */  bne        $v1, $v0, .L8001FC34
    /* 103D8 8001FBD8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 103DC 8001FBDC 9676000C */  jal        Sce_flag_test
    /* 103E0 8001FBE0 1C000424 */   addiu     $a0, $zero, 0x1C
    /* 103E4 8001FBE4 08004010 */  beqz       $v0, .L8001FC08
    /* 103E8 8001FBE8 7A000224 */   addiu     $v0, $zero, 0x7A
    /* 103EC 8001FBEC D60982A7 */  sh         $v0, %gp_rel(D_8009823A)($gp)
    /* 103F0 8001FBF0 7C000224 */  addiu      $v0, $zero, 0x7C
    /* 103F4 8001FBF4 DA0982A7 */  sh         $v0, %gp_rel(D_8009823E)($gp)
    /* 103F8 8001FBF8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 103FC 8001FBFC DC0982A7 */  sh         $v0, %gp_rel(D_80098240)($gp)
    /* 10400 8001FC00 107F0008 */  j          .L8001FC40
    /* 10404 8001FC04 00000000 */   nop
  .L8001FC08:
    /* 10408 8001FC08 9676000C */  jal        Sce_flag_test
    /* 1040C 8001FC0C 1B000424 */   addiu     $a0, $zero, 0x1B
    /* 10410 8001FC10 06004010 */  beqz       $v0, .L8001FC2C
    /* 10414 8001FC14 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 10418 8001FC18 DC0982A7 */  sh         $v0, %gp_rel(D_80098240)($gp)
    /* 1041C 8001FC1C DA0982A7 */  sh         $v0, %gp_rel(D_8009823E)($gp)
    /* 10420 8001FC20 D60982A7 */  sh         $v0, %gp_rel(D_8009823A)($gp)
    /* 10424 8001FC24 107F0008 */  j          .L8001FC40
    /* 10428 8001FC28 00000000 */   nop
  .L8001FC2C:
    /* 1042C 8001FC2C 0E7F0008 */  j          .L8001FC38
    /* 10430 8001FC30 7A000224 */   addiu     $v0, $zero, 0x7A
  .L8001FC34:
    /* 10434 8001FC34 7B000224 */  addiu      $v0, $zero, 0x7B
  .L8001FC38:
    /* 10438 8001FC38 DC0982A7 */  sh         $v0, %gp_rel(D_80098240)($gp)
    /* 1043C 8001FC3C DA0982A7 */  sh         $v0, %gp_rel(D_8009823E)($gp)
  .L8001FC40:
    /* 10440 8001FC40 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10444 8001FC44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 10448 8001FC48 0800E003 */  jr         $ra
    /* 1044C 8001FC4C 00000000 */   nop
.size func_8001FBC4, . - func_8001FBC4
