.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CAAC
    /* D2AC 8001CAAC 0A80063C */  lui        $a2, %hi(D_800A3A40)
    /* D2B0 8001CAB0 403AC624 */  addiu      $a2, $a2, %lo(D_800A3A40)
    /* D2B4 8001CAB4 0000C28C */  lw         $v0, 0x0($a2)
    /* D2B8 8001CAB8 00000000 */  nop
    /* D2BC 8001CABC 10004010 */  beqz       $v0, .L8001CB00
    /* D2C0 8001CAC0 00000000 */   nop
    /* D2C4 8001CAC4 0C00C524 */  addiu      $a1, $a2, 0xC
  .L8001CAC8:
    /* D2C8 8001CAC8 0400A28C */  lw         $v0, 0x4($a1)
    /* D2CC 8001CACC 00000000 */  nop
    /* D2D0 8001CAD0 0000C2AC */  sw         $v0, 0x0($a2)
    /* D2D4 8001CAD4 0800A28C */  lw         $v0, 0x8($a1)
    /* D2D8 8001CAD8 0C00A38C */  lw         $v1, 0xC($a1)
    /* D2DC 8001CADC 1000A48C */  lw         $a0, 0x10($a1)
    /* D2E0 8001CAE0 1000C624 */  addiu      $a2, $a2, 0x10
    /* D2E4 8001CAE4 F8FFA2AC */  sw         $v0, -0x8($a1)
    /* D2E8 8001CAE8 FCFFA3AC */  sw         $v1, -0x4($a1)
    /* D2EC 8001CAEC 0000A4AC */  sw         $a0, 0x0($a1)
    /* D2F0 8001CAF0 0000C28C */  lw         $v0, 0x0($a2)
    /* D2F4 8001CAF4 00000000 */  nop
    /* D2F8 8001CAF8 F3FF4014 */  bnez       $v0, .L8001CAC8
    /* D2FC 8001CAFC 1000A524 */   addiu     $a1, $a1, 0x10
  .L8001CB00:
    /* D300 8001CB00 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* D304 8001CB04 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* D308 8001CB08 0000C0AC */  sw         $zero, 0x0($a2)
    /* D30C 8001CB0C 0A80013C */  lui        $at, %hi(D_800989C8)
    /* D310 8001CB10 C88920AC */  sw         $zero, %lo(D_800989C8)($at)
    /* D314 8001CB14 0A80013C */  lui        $at, %hi(D_800989C4)
    /* D318 8001CB18 C48920AC */  sw         $zero, %lo(D_800989C4)($at)
    /* D31C 8001CB1C F0FF4224 */  addiu      $v0, $v0, -0x10
    /* D320 8001CB20 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* D324 8001CB24 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* D328 8001CB28 0800E003 */  jr         $ra
    /* D32C 8001CB2C 00000000 */   nop
.size func_8001CAAC, . - func_8001CAAC
