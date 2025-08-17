.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039A60
    /* 2A260 80039A60 0C05848F */  lw         $a0, %gp_rel(D_80097D70)($gp)
    /* 2A264 80039A64 00000000 */  nop
    /* 2A268 80039A68 43008010 */  beqz       $a0, .L80039B78
    /* 2A26C 80039A6C 00000000 */   nop
    /* 2A270 80039A70 0805828F */  lw         $v0, %gp_rel(D_80097D6C)($gp)
    /* 2A274 80039A74 00000000 */  nop
    /* 2A278 80039A78 80100200 */  sll        $v0, $v0, 2
    /* 2A27C 80039A7C 0A80013C */  lui        $at, %hi(D_8009869C)
    /* 2A280 80039A80 21082200 */  addu       $at, $at, $v0
    /* 2A284 80039A84 9C86238C */  lw         $v1, %lo(D_8009869C)($at)
    /* 2A288 80039A88 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 2A28C 80039A8C 0C0582AF */  sw         $v0, %gp_rel(D_80097D70)($gp)
    /* 2A290 80039A90 0000638C */  lw         $v1, 0x0($v1)
    /* 2A294 80039A94 00000000 */  nop
    /* 2A298 80039A98 0700622C */  sltiu      $v0, $v1, 0x7
    /* 2A29C 80039A9C 36004010 */  beqz       $v0, .L80039B78
    /* 2A2A0 80039AA0 80100300 */   sll       $v0, $v1, 2
    /* 2A2A4 80039AA4 0180013C */  lui        $at, %hi(jtbl_80010B50)
    /* 2A2A8 80039AA8 21082200 */  addu       $at, $at, $v0
    /* 2A2AC 80039AAC 500B228C */  lw         $v0, %lo(jtbl_80010B50)($at)
    /* 2A2B0 80039AB0 00000000 */  nop
    /* 2A2B4 80039AB4 08004000 */  jr         $v0
    /* 2A2B8 80039AB8 00000000 */   nop
  glabel .L80039ABC
    /* 2A2BC 80039ABC 0A80013C */  lui        $at, %hi(D_800A395D)
    /* 2A2C0 80039AC0 5D3920A0 */  sb         $zero, %lo(D_800A395D)($at)
    /* 2A2C4 80039AC4 DEE60008 */  j          .L80039B78
    /* 2A2C8 80039AC8 00000000 */   nop
  glabel .L80039ACC
    /* 2A2CC 80039ACC 0A80073C */  lui        $a3, %hi(D_8009A478)
    /* 2A2D0 80039AD0 78A4E724 */  addiu      $a3, $a3, %lo(D_8009A478)
    /* 2A2D4 80039AD4 0A80063C */  lui        $a2, %hi(D_800A3958)
    /* 2A2D8 80039AD8 5839C624 */  addiu      $a2, $a2, %lo(D_800A3958)
    /* 2A2DC 80039ADC E000C824 */  addiu      $t0, $a2, 0xE0
  .L80039AE0:
    /* 2A2E0 80039AE0 0000C28C */  lw         $v0, 0x0($a2)
    /* 2A2E4 80039AE4 0400C38C */  lw         $v1, 0x4($a2)
    /* 2A2E8 80039AE8 0800C48C */  lw         $a0, 0x8($a2)
    /* 2A2EC 80039AEC 0C00C58C */  lw         $a1, 0xC($a2)
    /* 2A2F0 80039AF0 0000E2AC */  sw         $v0, 0x0($a3)
    /* 2A2F4 80039AF4 0400E3AC */  sw         $v1, 0x4($a3)
    /* 2A2F8 80039AF8 0800E4AC */  sw         $a0, 0x8($a3)
    /* 2A2FC 80039AFC 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 2A300 80039B00 1000C624 */  addiu      $a2, $a2, 0x10
    /* 2A304 80039B04 F6FFC814 */  bne        $a2, $t0, .L80039AE0
    /* 2A308 80039B08 1000E724 */   addiu     $a3, $a3, 0x10
    /* 2A30C 80039B0C 0000C28C */  lw         $v0, 0x0($a2)
    /* 2A310 80039B10 00000000 */  nop
    /* 2A314 80039B14 0000E2AC */  sw         $v0, 0x0($a3)
    /* 2A318 80039B18 DCE60008 */  j          .L80039B70
    /* 2A31C 80039B1C 06000224 */   addiu     $v0, $zero, 0x6
  glabel .L80039B20
    /* 2A320 80039B20 0A80073C */  lui        $a3, %hi(D_800A3958)
    /* 2A324 80039B24 5839E724 */  addiu      $a3, $a3, %lo(D_800A3958)
    /* 2A328 80039B28 0A80063C */  lui        $a2, %hi(D_8009A478)
    /* 2A32C 80039B2C 78A4C624 */  addiu      $a2, $a2, %lo(D_8009A478)
    /* 2A330 80039B30 E000C824 */  addiu      $t0, $a2, 0xE0
  .L80039B34:
    /* 2A334 80039B34 0000C28C */  lw         $v0, 0x0($a2)
    /* 2A338 80039B38 0400C38C */  lw         $v1, 0x4($a2)
    /* 2A33C 80039B3C 0800C48C */  lw         $a0, 0x8($a2)
    /* 2A340 80039B40 0C00C58C */  lw         $a1, 0xC($a2)
    /* 2A344 80039B44 0000E2AC */  sw         $v0, 0x0($a3)
    /* 2A348 80039B48 0400E3AC */  sw         $v1, 0x4($a3)
    /* 2A34C 80039B4C 0800E4AC */  sw         $a0, 0x8($a3)
    /* 2A350 80039B50 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 2A354 80039B54 1000C624 */  addiu      $a2, $a2, 0x10
    /* 2A358 80039B58 F6FFC814 */  bne        $a2, $t0, .L80039B34
    /* 2A35C 80039B5C 1000E724 */   addiu     $a3, $a3, 0x10
    /* 2A360 80039B60 0000C28C */  lw         $v0, 0x0($a2)
    /* 2A364 80039B64 00000000 */  nop
    /* 2A368 80039B68 0000E2AC */  sw         $v0, 0x0($a3)
  glabel .L80039B6C
    /* 2A36C 80039B6C 04000224 */  addiu      $v0, $zero, 0x4
  .L80039B70:
    /* 2A370 80039B70 0A80013C */  lui        $at, %hi(D_800A395D)
    /* 2A374 80039B74 5D3922A0 */  sb         $v0, %lo(D_800A395D)($at)
  glabel .L80039B78
    /* 2A378 80039B78 0800E003 */  jr         $ra
    /* 2A37C 80039B7C 00000000 */   nop
.size func_80039A60, . - func_80039A60
