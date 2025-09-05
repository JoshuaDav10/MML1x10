.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800463F8
    /* 36BF8 800463F8 2E000296 */  lhu        $v0, 0x2E($s0)
    /* 36BFC 800463FC 00000000 */  nop
    /* 36C00 80046400 00140200 */  sll        $v0, $v0, 16
    /* 36C04 80046404 43140200 */  sra        $v0, $v0, 17
    /* 36C08 80046408 2E0002A6 */  sh         $v0, 0x2E($s0)
    /* 36C0C 8004640C 2C000426 */  addiu      $a0, $s0, 0x2C
  .L80046410:
    /* 36C10 80046410 232B010C */  jal        func_8004AC8C
    /* 36C14 80046414 21282002 */   addu      $a1, $s1, $zero
  .L80046418:
    /* 36C18 80046418 831A010C */  jal        func_80046A0C
    /* 36C1C 8004641C 21200002 */   addu      $a0, $s0, $zero
    /* 36C20 80046420 2800BF8F */  lw         $ra, 0x28($sp)
    /* 36C24 80046424 2400B18F */  lw         $s1, 0x24($sp)
    /* 36C28 80046428 2000B08F */  lw         $s0, 0x20($sp)
    /* 36C2C 8004642C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 36C30 80046430 0800E003 */  jr         $ra
    /* 36C34 80046434 00000000 */   nop
.size .L800463F8, . - .L800463F8
