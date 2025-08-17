.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800317AC
    /* 21FAC 800317AC 20008228 */  slti       $v0, $a0, 0x20
    /* 21FB0 800317B0 1A004010 */  beqz       $v0, .L8003181C
    /* 21FB4 800317B4 21100000 */   addu      $v0, $zero, $zero
    /* 21FB8 800317B8 0A80053C */  lui        $a1, %hi(D_800989CC)
    /* 21FBC 800317BC CC89A58C */  lw         $a1, %lo(D_800989CC)($a1)
    /* 21FC0 800317C0 00000000 */  nop
    /* 21FC4 800317C4 04108500 */  sllv       $v0, $a1, $a0
    /* 21FC8 800317C8 13004004 */  bltz       $v0, .L80031818
    /* 21FCC 800317CC 80100400 */   sll       $v0, $a0, 2
    /* 21FD0 800317D0 21104400 */  addu       $v0, $v0, $a0
    /* 21FD4 800317D4 00110200 */  sll        $v0, $v0, 4
    /* 21FD8 800317D8 0C80033C */  lui        $v1, %hi(D_800BF118)
    /* 21FDC 800317DC 18F16324 */  addiu      $v1, $v1, %lo(D_800BF118)
    /* 21FE0 800317E0 21104300 */  addu       $v0, $v0, $v1
    /* 21FE4 800317E4 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 21FE8 800317E8 06188300 */  srlv       $v1, $v1, $a0
    /* 21FEC 800317EC 2518A300 */  or         $v1, $a1, $v1
    /* 21FF0 800317F0 0A80013C */  lui        $at, %hi(D_800989CC)
    /* 21FF4 800317F4 CC8923AC */  sw         $v1, %lo(D_800989CC)($at)
    /* 21FF8 800317F8 03000324 */  addiu      $v1, $zero, 0x3
    /* 21FFC 800317FC 020040A4 */  sh         $zero, 0x2($v0)
    /* 22000 80031800 040040AC */  sw         $zero, 0x4($v0)
    /* 22004 80031804 0C0040AC */  sw         $zero, 0xC($v0)
    /* 22008 80031808 080040AC */  sw         $zero, 0x8($v0)
    /* 2200C 8003180C 060043A0 */  sb         $v1, 0x6($v0)
    /* 22010 80031810 07C60008 */  j          .L8003181C
    /* 22014 80031814 100040AC */   sw        $zero, 0x10($v0)
  .L80031818:
    /* 22018 80031818 21100000 */  addu       $v0, $zero, $zero
  .L8003181C:
    /* 2201C 8003181C 0800E003 */  jr         $ra
    /* 22020 80031820 00000000 */   nop
.size func_800317AC, . - func_800317AC
