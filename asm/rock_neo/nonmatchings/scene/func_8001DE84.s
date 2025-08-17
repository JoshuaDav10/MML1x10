.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DE84
    /* E684 8001DE84 0C80023C */  lui        $v0, %hi(Game_work + 0x5A)
    /* E688 8001DE88 6A1B4280 */  lb         $v0, %lo(Game_work + 0x5A)($v0)
    /* E68C 8001DE8C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E690 8001DE90 07004014 */  bnez       $v0, .L8001DEB0
    /* E694 8001DE94 1000BFAF */   sw        $ra, 0x10($sp)
    /* E698 8001DE98 0C80043C */  lui        $a0, %hi(Scene_work + 0x1)
    /* E69C 8001DE9C 494C8490 */  lbu        $a0, %lo(Scene_work + 0x1)($a0)
    /* E6A0 8001DEA0 9676000C */  jal        Sce_flag_test
    /* E6A4 8001DEA4 80038424 */   addiu     $a0, $a0, 0x380
    /* E6A8 8001DEA8 08004010 */  beqz       $v0, .L8001DECC
    /* E6AC 8001DEAC 21100000 */   addu      $v0, $zero, $zero
  .L8001DEB0:
    /* E6B0 8001DEB0 0C80023C */  lui        $v0, %hi(D_800C0C2A)
    /* E6B4 8001DEB4 2A0C4294 */  lhu        $v0, %lo(D_800C0C2A)($v0)
    /* E6B8 8001DEB8 00000000 */  nop
    /* E6BC 8001DEBC 08004230 */  andi       $v0, $v0, 0x8
    /* E6C0 8001DEC0 02004014 */  bnez       $v0, .L8001DECC
    /* E6C4 8001DEC4 01000224 */   addiu     $v0, $zero, 0x1
    /* E6C8 8001DEC8 21100000 */  addu       $v0, $zero, $zero
  .L8001DECC:
    /* E6CC 8001DECC 1000BF8F */  lw         $ra, 0x10($sp)
    /* E6D0 8001DED0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E6D4 8001DED4 0800E003 */  jr         $ra
    /* E6D8 8001DED8 00000000 */   nop
.size func_8001DE84, . - func_8001DE84
