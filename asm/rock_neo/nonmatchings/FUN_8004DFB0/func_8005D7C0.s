.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D7C0
    /* 4DFC0 8005D7C0 8C1280AF */  sw         $zero, %gp_rel(D_80098AF0)($gp)
    /* 4DFC4 8005D7C4 21580000 */  addu       $t3, $zero, $zero
    /* 4DFC8 8005D7C8 0C80023C */  lui        $v0, %hi(D_800BBDC0)
    /* 4DFCC 8005D7CC C0BD4224 */  addiu      $v0, $v0, %lo(D_800BBDC0)
    /* 4DFD0 8005D7D0 1C004A24 */  addiu      $t2, $v0, 0x1C
    /* 4DFD4 8005D7D4 18004924 */  addiu      $t1, $v0, 0x18
    /* 4DFD8 8005D7D8 14004824 */  addiu      $t0, $v0, 0x14
    /* 4DFDC 8005D7DC 10004724 */  addiu      $a3, $v0, 0x10
    /* 4DFE0 8005D7E0 0C004624 */  addiu      $a2, $v0, 0xC
    /* 4DFE4 8005D7E4 08004524 */  addiu      $a1, $v0, 0x8
    /* 4DFE8 8005D7E8 04004424 */  addiu      $a0, $v0, 0x4
    /* 4DFEC 8005D7EC 21184000 */  addu       $v1, $v0, $zero
  .L8005D7F0:
    /* 4DFF0 8005D7F0 000060AC */  sw         $zero, 0x0($v1)
    /* 4DFF4 8005D7F4 000080AC */  sw         $zero, 0x0($a0)
    /* 4DFF8 8005D7F8 0000A0AC */  sw         $zero, 0x0($a1)
    /* 4DFFC 8005D7FC 0000C0AC */  sw         $zero, 0x0($a2)
    /* 4E000 8005D800 0000E0AC */  sw         $zero, 0x0($a3)
    /* 4E004 8005D804 000000AD */  sw         $zero, 0x0($t0)
    /* 4E008 8005D808 000020AD */  sw         $zero, 0x0($t1)
    /* 4E00C 8005D80C 000040AD */  sw         $zero, 0x0($t2)
    /* 4E010 8005D810 24004A25 */  addiu      $t2, $t2, 0x24
    /* 4E014 8005D814 24002925 */  addiu      $t1, $t1, 0x24
    /* 4E018 8005D818 24000825 */  addiu      $t0, $t0, 0x24
    /* 4E01C 8005D81C 2400E724 */  addiu      $a3, $a3, 0x24
    /* 4E020 8005D820 2400C624 */  addiu      $a2, $a2, 0x24
    /* 4E024 8005D824 2400A524 */  addiu      $a1, $a1, 0x24
    /* 4E028 8005D828 24008424 */  addiu      $a0, $a0, 0x24
    /* 4E02C 8005D82C 01006B25 */  addiu      $t3, $t3, 0x1
    /* 4E030 8005D830 0300622D */  sltiu      $v0, $t3, 0x3
    /* 4E034 8005D834 EEFF4014 */  bnez       $v0, .L8005D7F0
    /* 4E038 8005D838 24006324 */   addiu     $v1, $v1, 0x24
    /* 4E03C 8005D83C 0800E003 */  jr         $ra
    /* 4E040 8005D840 00000000 */   nop
.size func_8005D7C0, . - func_8005D7C0
