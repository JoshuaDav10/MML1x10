.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D720
    /* 4DF20 8005D720 07004410 */  beq        $v0, $a0, .L8005D740
    /* 4DF24 8005D724 00000000 */   nop
  .L8005D728:
    /* 4DF28 8005D728 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4DF2C 8005D72C 0300A22C */  sltiu      $v0, $a1, 0x3
    /* 4DF30 8005D730 F0FF4014 */  bnez       $v0, .L8005D6F4
    /* 4DF34 8005D734 24006624 */   addiu     $a2, $v1, 0x24
    /* 4DF38 8005D738 ED750108 */  j          .L8005D7B4
    /* 4DF3C 8005D73C 00000000 */   nop
  .L8005D740:
    /* 4DF40 8005D740 8C12828F */  lw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DF44 8005D744 0C80033C */  lui        $v1, %hi(D_800BBD78)
    /* 4DF48 8005D748 78BD6324 */  addiu      $v1, $v1, %lo(D_800BBD78)
    /* 4DF4C 8005D74C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4DF50 8005D750 8C1282AF */  sw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DF54 8005D754 04006224 */  addiu      $v0, $v1, 0x4
    /* 4DF58 8005D758 2110C200 */  addu       $v0, $a2, $v0
    /* 4DF5C 8005D75C 0C80013C */  lui        $at, %hi(D_800BBD78)
    /* 4DF60 8005D760 21082600 */  addu       $at, $at, $a2
    /* 4DF64 8005D764 78BD20AC */  sw         $zero, %lo(D_800BBD78)($at)
    /* 4DF68 8005D768 000040AC */  sw         $zero, 0x0($v0)
    /* 4DF6C 8005D76C 08006224 */  addiu      $v0, $v1, 0x8
    /* 4DF70 8005D770 2110C200 */  addu       $v0, $a2, $v0
    /* 4DF74 8005D774 000040AC */  sw         $zero, 0x0($v0)
    /* 4DF78 8005D778 0C006224 */  addiu      $v0, $v1, 0xC
    /* 4DF7C 8005D77C 2110C200 */  addu       $v0, $a2, $v0
    /* 4DF80 8005D780 000040AC */  sw         $zero, 0x0($v0)
    /* 4DF84 8005D784 10006224 */  addiu      $v0, $v1, 0x10
    /* 4DF88 8005D788 2110C200 */  addu       $v0, $a2, $v0
    /* 4DF8C 8005D78C 000040AC */  sw         $zero, 0x0($v0)
    /* 4DF90 8005D790 14006224 */  addiu      $v0, $v1, 0x14
    /* 4DF94 8005D794 2110C200 */  addu       $v0, $a2, $v0
.size func_8005D720, . - func_8005D720
