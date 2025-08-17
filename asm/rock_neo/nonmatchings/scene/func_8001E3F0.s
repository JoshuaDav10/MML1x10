.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E3F0
    /* EBF0 8001E3F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EBF4 8001E3F4 0C80053C */  lui        $a1, %hi(Game_work + 0x60)
    /* EBF8 8001E3F8 701BA524 */  addiu      $a1, $a1, %lo(Game_work + 0x60)
    /* EBFC 8001E3FC 00240400 */  sll        $a0, $a0, 16
    /* EC00 8001E400 C3230400 */  sra        $a0, $a0, 15
    /* EC04 8001E404 1000BFAF */  sw         $ra, 0x10($sp)
    /* EC08 8001E408 0000A294 */  lhu        $v0, 0x0($a1)
    /* EC0C 8001E40C 0980013C */  lui        $at, %hi(D_800891B4)
    /* EC10 8001E410 21082400 */  addu       $at, $at, $a0
    /* EC14 8001E414 B4912394 */  lhu        $v1, %lo(D_800891B4)($at)
    /* EC18 8001E418 00000000 */  nop
    /* EC1C 8001E41C 21104300 */  addu       $v0, $v0, $v1
    /* EC20 8001E420 0000A2A4 */  sh         $v0, 0x0($a1)
    /* EC24 8001E424 00140200 */  sll        $v0, $v0, 16
    /* EC28 8001E428 03140200 */  sra        $v0, $v0, 16
    /* EC2C 8001E42C 03004104 */  bgez       $v0, .L8001E43C
    /* EC30 8001E430 00014228 */   slti      $v0, $v0, 0x100
    /* EC34 8001E434 12790008 */  j          .L8001E448
    /* EC38 8001E438 0000A0A4 */   sh        $zero, 0x0($a1)
  .L8001E43C:
    /* EC3C 8001E43C 02004014 */  bnez       $v0, .L8001E448
    /* EC40 8001E440 FF000224 */   addiu     $v0, $zero, 0xFF
    /* EC44 8001E444 0000A2A4 */  sh         $v0, 0x0($a1)
  .L8001E448:
    /* EC48 8001E448 7F5E000C */  jal        func_800179FC
    /* EC4C 8001E44C 00000000 */   nop
    /* EC50 8001E450 1000BF8F */  lw         $ra, 0x10($sp)
    /* EC54 8001E454 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EC58 8001E458 0800E003 */  jr         $ra
    /* EC5C 8001E45C 00000000 */   nop
.size func_8001E3F0, . - func_8001E3F0
