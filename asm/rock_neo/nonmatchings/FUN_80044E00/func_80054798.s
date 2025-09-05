.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054798
    /* 44F98 80054798 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44F9C 8005479C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 44FA0 800547A0 21808000 */  addu       $s0, $a0, $zero
    /* 44FA4 800547A4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 44FA8 800547A8 6C00048E */  lw         $a0, 0x6C($s0)
    /* 44FAC 800547AC 0451010C */  jal        func_80054410
    /* 44FB0 800547B0 01008424 */   addiu     $a0, $a0, 0x1
    /* 44FB4 800547B4 6C00048E */  lw         $a0, 0x6C($s0)
    /* 44FB8 800547B8 080002A6 */  sh         $v0, 0x8($s0)
.size func_80054798, . - func_80054798
