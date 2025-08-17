.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031598
    /* 21D98 80031598 0A80063C */  lui        $a2, %hi(D_800989F0)
    /* 21D9C 8003159C F089C68C */  lw         $a2, %lo(D_800989F0)($a2)
    /* 21DA0 800315A0 21280000 */  addu       $a1, $zero, $zero
    /* 21DA4 800315A4 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 21DA8 800315A8 03000724 */  addiu      $a3, $zero, 0x3
    /* 21DAC 800315AC 0C80033C */  lui        $v1, %hi(D_800BFB20)
    /* 21DB0 800315B0 20FB6324 */  addiu      $v1, $v1, %lo(D_800BFB20)
  .L800315B4:
    /* 21DB4 800315B4 0410A600 */  sllv       $v0, $a2, $a1
    /* 21DB8 800315B8 10004004 */  bltz       $v0, .L800315FC
    /* 21DBC 800315BC 21106000 */   addu      $v0, $v1, $zero
    /* 21DC0 800315C0 0A80033C */  lui        $v1, %hi(D_800989F0)
    /* 21DC4 800315C4 F089638C */  lw         $v1, %lo(D_800989F0)($v1)
    /* 21DC8 800315C8 0620A400 */  srlv       $a0, $a0, $a1
    /* 21DCC 800315CC 100040AC */  sw         $zero, 0x10($v0)
    /* 21DD0 800315D0 780040AC */  sw         $zero, 0x78($v0)
    /* 21DD4 800315D4 25186400 */  or         $v1, $v1, $a0
    /* 21DD8 800315D8 0A80013C */  lui        $at, %hi(D_800989F0)
    /* 21DDC 800315DC F08923AC */  sw         $v1, %lo(D_800989F0)($at)
    /* 21DE0 800315E0 020040A4 */  sh         $zero, 0x2($v0)
    /* 21DE4 800315E4 040040AC */  sw         $zero, 0x4($v0)
    /* 21DE8 800315E8 0C0040AC */  sw         $zero, 0xC($v0)
    /* 21DEC 800315EC 080040AC */  sw         $zero, 0x8($v0)
    /* 21DF0 800315F0 060047A0 */  sb         $a3, 0x6($v0)
    /* 21DF4 800315F4 84C50008 */  j          .L80031610
    /* 21DF8 800315F8 740040AC */   sw        $zero, 0x74($v0)
  .L800315FC:
    /* 21DFC 800315FC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 21E00 80031600 1000A228 */  slti       $v0, $a1, 0x10
    /* 21E04 80031604 EBFF4014 */  bnez       $v0, .L800315B4
    /* 21E08 80031608 0C016324 */   addiu     $v1, $v1, 0x10C
    /* 21E0C 8003160C 21100000 */  addu       $v0, $zero, $zero
  .L80031610:
    /* 21E10 80031610 0800E003 */  jr         $ra
    /* 21E14 80031614 00000000 */   nop
.size func_80031598, . - func_80031598
