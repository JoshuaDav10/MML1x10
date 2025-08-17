.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A0A8
    /* A8A8 8001A0A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A8AC 8001A0AC C0200400 */  sll        $a0, $a0, 3
    /* A8B0 8001A0B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A8B4 8001A0B4 0A80013C */  lui        $at, %hi(D_80098AFA)
    /* A8B8 8001A0B8 21082400 */  addu       $at, $at, $a0
    /* A8BC 8001A0BC FA8A2280 */  lb         $v0, %lo(D_80098AFA)($at)
    /* A8C0 8001A0C0 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* A8C4 8001A0C4 0E004310 */  beq        $v0, $v1, .L8001A100
    /* A8C8 8001A0C8 21280000 */   addu      $a1, $zero, $zero
    /* A8CC 8001A0CC 0A80013C */  lui        $at, %hi(D_80098AF8)
    /* A8D0 8001A0D0 21082400 */  addu       $at, $at, $a0
    /* A8D4 8001A0D4 F88A2284 */  lh         $v0, %lo(D_80098AF8)($at)
    /* A8D8 8001A0D8 00000000 */  nop
    /* A8DC 8001A0DC 08004310 */  beq        $v0, $v1, .L8001A100
    /* A8E0 8001A0E0 00000000 */   nop
    /* A8E4 8001A0E4 0A80013C */  lui        $at, %hi(D_80098AFC)
    /* A8E8 8001A0E8 21082400 */  addu       $at, $at, $a0
    /* A8EC 8001A0EC FC8A2590 */  lbu        $a1, %lo(D_80098AFC)($at)
    /* A8F0 8001A0F0 89AD010C */  jal        SsIsEos
    /* A8F4 8001A0F4 21204000 */   addu      $a0, $v0, $zero
    /* A8F8 8001A0F8 00140200 */  sll        $v0, $v0, 16
    /* A8FC 8001A0FC 032C0200 */  sra        $a1, $v0, 16
  .L8001A100:
    /* A900 8001A100 1000BF8F */  lw         $ra, 0x10($sp)
    /* A904 8001A104 2110A000 */  addu       $v0, $a1, $zero
    /* A908 8001A108 0800E003 */  jr         $ra
    /* A90C 8001A10C 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_8001A0A8, . - func_8001A0A8
