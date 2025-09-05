.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FE24
    /* 50624 8005FE24 5F004010 */  beqz       $v0, .L8005FFA4
    /* 50628 8005FE28 80100300 */   sll       $v0, $v1, 2
    /* 5062C 8005FE2C 0180013C */  lui        $at, %hi(jtbl_800112E4)
    /* 50630 8005FE30 21082200 */  addu       $at, $at, $v0
    /* 50634 8005FE34 E412228C */  lw         $v0, %lo(jtbl_800112E4)($at)
    /* 50638 8005FE38 00000000 */  nop
    /* 5063C 8005FE3C 08004000 */  jr         $v0
    /* 50640 8005FE40 00000000 */   nop
  glabel .L8005FE44
    /* 50644 8005FE44 9676000C */  jal        Sce_flag_test
    /* 50648 8005FE48 18030424 */   addiu     $a0, $zero, 0x318
    /* 5064C 8005FE4C 56004010 */  beqz       $v0, .L8005FFA8
    /* 50650 8005FE50 02000224 */   addiu     $v0, $zero, 0x2
    /* 50654 8005FE54 51000282 */  lb         $v0, 0x51($s0)
.size func_8005FE24, . - func_8005FE24
