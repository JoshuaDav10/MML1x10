.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001319C
    /* 399C 8001319C 21200000 */  addu       $a0, $zero, $zero
    /* 39A0 800131A0 1F80053C */  lui        $a1, (0x801F8300 >> 16)
    /* 39A4 800131A4 0083A534 */  ori        $a1, $a1, (0x801F8300 & 0xFFFF)
    /* 39A8 800131A8 40100400 */  sll        $v0, $a0, 1
  .L800131AC:
    /* 39AC 800131AC 0000A38C */  lw         $v1, 0x0($a1)
    /* 39B0 800131B0 01008424 */  addiu      $a0, $a0, 0x1
    /* 39B4 800131B4 21104300 */  addu       $v0, $v0, $v1
    /* 39B8 800131B8 600040A4 */  sh         $zero, 0x60($v0)
    /* 39BC 800131BC 08008228 */  slti       $v0, $a0, 0x8
    /* 39C0 800131C0 FAFF4014 */  bnez       $v0, .L800131AC
    /* 39C4 800131C4 40100400 */   sll       $v0, $a0, 1
    /* 39C8 800131C8 21200000 */  addu       $a0, $zero, $zero
    /* 39CC 800131CC 1F80033C */  lui        $v1, (0x801F8300 >> 16)
    /* 39D0 800131D0 00836334 */  ori        $v1, $v1, (0x801F8300 & 0xFFFF)
  .L800131D4:
    /* 39D4 800131D4 0000628C */  lw         $v0, 0x0($v1)
    /* 39D8 800131D8 00000000 */  nop
    /* 39DC 800131DC 21104400 */  addu       $v0, $v0, $a0
    /* 39E0 800131E0 01008424 */  addiu      $a0, $a0, 0x1
    /* 39E4 800131E4 710040A0 */  sb         $zero, 0x71($v0)
    /* 39E8 800131E8 10008228 */  slti       $v0, $a0, 0x10
    /* 39EC 800131EC F9FF4014 */  bnez       $v0, .L800131D4
    /* 39F0 800131F0 00000000 */   nop
    /* 39F4 800131F4 0800E003 */  jr         $ra
    /* 39F8 800131F8 00000000 */   nop
.size func_8001319C, . - func_8001319C
