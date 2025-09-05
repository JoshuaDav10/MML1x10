.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059D80
    /* 4A580 80059D80 2328E500 */  subu       $a1, $a3, $a1
  .L80059D84:
    /* 4A584 80059D84 0C80023C */  lui        $v0, %hi(Game_work + 0x6B)
    /* 4A588 80059D88 7B1B4224 */  addiu      $v0, $v0, %lo(Game_work + 0x6B)
    /* 4A58C 80059D8C 23184300 */  subu       $v1, $v0, $v1
    /* 4A590 80059D90 00006390 */  lbu        $v1, 0x0($v1)
    /* 4A594 80059D94 00000000 */  nop
    /* 4A598 80059D98 18006700 */  mult       $v1, $a3
    /* 4A59C 80059D9C E1FF4224 */  addiu      $v0, $v0, -0x1F
    /* 4A5A0 80059DA0 23104500 */  subu       $v0, $v0, $a1
    /* 4A5A4 80059DA4 0700C624 */  addiu      $a2, $a2, 0x7
    /* 4A5A8 80059DA8 0000458C */  lw         $a1, 0x0($v0)
    /* 4A5AC 80059DAC 12400000 */  mflo       $t0
    /* 4A5B0 80059DB0 23280501 */  subu       $a1, $t0, $a1
  .L80059DB4:
    /* 4A5B4 80059DB4 C46F010C */  jal        func_8005BF10
    /* 4A5B8 80059DB8 00000000 */   nop
    /* 4A5BC 80059DBC C0000396 */  lhu        $v1, 0xC0($s0)
    /* 4A5C0 80059DC0 00000000 */  nop
    /* 4A5C4 80059DC4 01006224 */  addiu      $v0, $v1, 0x1
    /* 4A5C8 80059DC8 80180300 */  sll        $v1, $v1, 2
    /* 4A5CC 80059DCC C00002A6 */  sh         $v0, 0xC0($s0)
    /* 4A5D0 80059DD0 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4A5D4 80059DD4 21187000 */  addu       $v1, $v1, $s0
    /* 4A5D8 80059DD8 02004224 */  addiu      $v0, $v0, 0x2
    /* 4A5DC 80059DDC 4C0062AC */  sw         $v0, 0x4C($v1)
    /* 4A5E0 80059DE0 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A5E4 80059DE4 21083100 */  addu       $at, $at, $s1
    /* 4A5E8 80059DE8 F8E22290 */  lbu        $v0, %lo(D_800BE2F8)($at)
    /* 4A5EC 80059DEC 00000000 */  nop
    /* 4A5F0 80059DF0 80100200 */  sll        $v0, $v0, 2
    /* 4A5F4 80059DF4 0980013C */  lui        $at, %hi(D_8008CE5C)
    /* 4A5F8 80059DF8 21082200 */  addu       $at, $at, $v0
    /* 4A5FC 80059DFC 5CCE228C */  lw         $v0, %lo(D_8008CE5C)($at)
.size func_80059D80, . - func_80059D80
