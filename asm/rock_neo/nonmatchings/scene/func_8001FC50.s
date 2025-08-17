.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FC50
    /* 10450 8001FC50 0C80023C */  lui        $v0, %hi(Game_work + 0x52)
    /* 10454 8001FC54 621B4280 */  lb         $v0, %lo(Game_work + 0x52)($v0)
    /* 10458 8001FC58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1045C 8001FC5C 0B004010 */  beqz       $v0, .L8001FC8C
    /* 10460 8001FC60 1000BFAF */   sw        $ra, 0x10($sp)
    /* 10464 8001FC64 09004004 */  bltz       $v0, .L8001FC8C
    /* 10468 8001FC68 04004228 */   slti      $v0, $v0, 0x4
    /* 1046C 8001FC6C 08004010 */  beqz       $v0, .L8001FC90
    /* 10470 8001FC70 81000224 */   addiu     $v0, $zero, 0x81
    /* 10474 8001FC74 9676000C */  jal        Sce_flag_test
    /* 10478 8001FC78 30000424 */   addiu     $a0, $zero, 0x30
    /* 1047C 8001FC7C 04004014 */  bnez       $v0, .L8001FC90
    /* 10480 8001FC80 81000224 */   addiu     $v0, $zero, 0x81
    /* 10484 8001FC84 247F0008 */  j          .L8001FC90
    /* 10488 8001FC88 82000224 */   addiu     $v0, $zero, 0x82
  .L8001FC8C:
    /* 1048C 8001FC8C 81000224 */  addiu      $v0, $zero, 0x81
  .L8001FC90:
    /* 10490 8001FC90 E80982A7 */  sh         $v0, %gp_rel(D_8009824C)($gp)
    /* 10494 8001FC94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10498 8001FC98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1049C 8001FC9C 0800E003 */  jr         $ra
    /* 104A0 8001FCA0 00000000 */   nop
.size func_8001FC50, . - func_8001FC50
