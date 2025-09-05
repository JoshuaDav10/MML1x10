.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053788
    /* 43F88 80053788 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 43F8C 8005378C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 43F90 80053790 1075000C */  jal        Cd_read_comb
    /* 43F94 80053794 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 43F98 80053798 F975000C */  jal        func_8001D7E4
    /* 43F9C 8005379C 00000000 */   nop
    /* 43FA0 800537A0 21200000 */  addu       $a0, $zero, $zero
    /* 43FA4 800537A4 0C80053C */  lui        $a1, %hi(Moji_work)
    /* 43FA8 800537A8 B8B6A524 */  addiu      $a1, $a1, %lo(Moji_work)
  .L800537AC:
    /* 43FAC 800537AC 00140400 */  sll        $v0, $a0, 16
    /* 43FB0 800537B0 03140200 */  sra        $v0, $v0, 16
    /* 43FB4 800537B4 40180200 */  sll        $v1, $v0, 1
    /* 43FB8 800537B8 21186200 */  addu       $v1, $v1, $v0
    /* 43FBC 800537BC 00190300 */  sll        $v1, $v1, 4
    /* 43FC0 800537C0 21186200 */  addu       $v1, $v1, $v0
    /* 43FC4 800537C4 80180300 */  sll        $v1, $v1, 2
    /* 43FC8 800537C8 21106500 */  addu       $v0, $v1, $a1
    /* 43FCC 800537CC 0C80013C */  lui        $at, %hi(Moji_work)
    /* 43FD0 800537D0 21082300 */  addu       $at, $at, $v1
    /* 43FD4 800537D4 B8B620AC */  sw         $zero, %lo(Moji_work)($at)
    /* 43FD8 800537D8 6C0040AC */  sw         $zero, 0x6C($v0)
    /* 43FDC 800537DC 01008224 */  addiu      $v0, $a0, 0x1
    /* 43FE0 800537E0 0C80013C */  lui        $at, %hi(Moji_work + 0x6)
    /* 43FE4 800537E4 21082300 */  addu       $at, $at, $v1
    /* 43FE8 800537E8 BEB624A4 */  sh         $a0, %lo(Moji_work + 0x6)($at)
    /* 43FEC 800537EC 21204000 */  addu       $a0, $v0, $zero
    /* 43FF0 800537F0 00140200 */  sll        $v0, $v0, 16
    /* 43FF4 800537F4 03140200 */  sra        $v0, $v0, 16
    /* 43FF8 800537F8 05004228 */  slti       $v0, $v0, 0x5
    /* 43FFC 800537FC 0C80013C */  lui        $at, %hi(Moji_work + 0x48)
    /* 44000 80053800 21082300 */  addu       $at, $at, $v1
    /* 44004 80053804 00B720AC */  sw         $zero, %lo(Moji_work + 0x48)($at)
    /* 44008 80053808 E8FF4014 */  bnez       $v0, .L800537AC
    /* 4400C 8005380C 00000000 */   nop
    /* 44010 80053810 C81280AF */  sw         $zero, %gp_rel(D_80098B2C)($gp)
    /* 44014 80053814 F41180AF */  sw         $zero, %gp_rel(Moji_flag)($gp)
    /* 44018 80053818 FC1080AF */  sw         $zero, %gp_rel(D_80098960)($gp)
    /* 4401C 8005381C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44020 80053820 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44024 80053824 0800E003 */  jr         $ra
    /* 44028 80053828 00000000 */   nop
.size func_80053788, . - func_80053788
