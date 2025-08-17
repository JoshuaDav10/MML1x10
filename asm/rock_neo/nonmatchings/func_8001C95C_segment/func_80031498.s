.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031498
    /* 21C98 80031498 0A80063C */  lui        $a2, %hi(D_80098B20)
    /* 21C9C 8003149C 208BC68C */  lw         $a2, %lo(D_80098B20)($a2)
    /* 21CA0 800314A0 21280000 */  addu       $a1, $zero, $zero
    /* 21CA4 800314A4 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 21CA8 800314A8 03000724 */  addiu      $a3, $zero, 0x3
    /* 21CAC 800314AC 0C80033C */  lui        $v1, %hi(D_800C3580)
    /* 21CB0 800314B0 80356324 */  addiu      $v1, $v1, %lo(D_800C3580)
  .L800314B4:
    /* 21CB4 800314B4 0410A600 */  sllv       $v0, $a2, $a1
    /* 21CB8 800314B8 10004004 */  bltz       $v0, .L800314FC
    /* 21CBC 800314BC 21106000 */   addu      $v0, $v1, $zero
    /* 21CC0 800314C0 0A80033C */  lui        $v1, %hi(D_80098B20)
    /* 21CC4 800314C4 208B638C */  lw         $v1, %lo(D_80098B20)($v1)
    /* 21CC8 800314C8 0620A400 */  srlv       $a0, $a0, $a1
    /* 21CCC 800314CC 100040AC */  sw         $zero, 0x10($v0)
    /* 21CD0 800314D0 780040AC */  sw         $zero, 0x78($v0)
    /* 21CD4 800314D4 25186400 */  or         $v1, $v1, $a0
    /* 21CD8 800314D8 0A80013C */  lui        $at, %hi(D_80098B20)
    /* 21CDC 800314DC 208B23AC */  sw         $v1, %lo(D_80098B20)($at)
    /* 21CE0 800314E0 020040A4 */  sh         $zero, 0x2($v0)
    /* 21CE4 800314E4 040040AC */  sw         $zero, 0x4($v0)
    /* 21CE8 800314E8 0C0040AC */  sw         $zero, 0xC($v0)
    /* 21CEC 800314EC 080040AC */  sw         $zero, 0x8($v0)
    /* 21CF0 800314F0 060047A0 */  sb         $a3, 0x6($v0)
    /* 21CF4 800314F4 44C50008 */  j          .L80031510
    /* 21CF8 800314F8 740040AC */   sw        $zero, 0x74($v0)
  .L800314FC:
    /* 21CFC 800314FC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 21D00 80031500 0400A228 */  slti       $v0, $a1, 0x4
    /* 21D04 80031504 EBFF4014 */  bnez       $v0, .L800314B4
    /* 21D08 80031508 A4056324 */   addiu     $v1, $v1, 0x5A4
    /* 21D0C 8003150C 21100000 */  addu       $v0, $zero, $zero
  .L80031510:
    /* 21D10 80031510 0800E003 */  jr         $ra
    /* 21D14 80031514 00000000 */   nop
.size func_80031498, . - func_80031498
