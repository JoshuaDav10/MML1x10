.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CB7C
    /* D37C 8001CB7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D380 8001CB80 1000B0AF */  sw         $s0, 0x10($sp)
    /* D384 8001CB84 7F001024 */  addiu      $s0, $zero, 0x7F
    /* D388 8001CB88 1400BFAF */  sw         $ra, 0x14($sp)
  .L8001CB8C:
    /* D38C 8001CB8C E574000C */  jal        func_8001D394
    /* D390 8001CB90 FF000432 */   andi      $a0, $s0, 0xFF
    /* D394 8001CB94 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* D398 8001CB98 FCFF001E */  bgtz       $s0, .L8001CB8C
    /* D39C 8001CB9C 21200000 */   addu      $a0, $zero, $zero
    /* D3A0 8001CBA0 0B80033C */  lui        $v1, %hi(D_800AD142)
    /* D3A4 8001CBA4 42D16324 */  addiu      $v1, $v1, %lo(D_800AD142)
    /* D3A8 8001CBA8 00006294 */  lhu        $v0, 0x0($v1)
    /* D3AC 8001CBAC 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D3B0 8001CBB0 6C8920A0 */  sb         $zero, %lo(D_8009896C)($at)
    /* D3B4 8001CBB4 00804234 */  ori        $v0, $v0, 0x8000
    /* D3B8 8001CBB8 89DE010C */  jal        CdReadyCallback
    /* D3BC 8001CBBC 000062A4 */   sh        $v0, 0x0($v1)
    /* D3C0 8001CBC0 0280043C */  lui        $a0, %hi(func_8001CC08)
    /* D3C4 8001CBC4 08CC8424 */  addiu      $a0, $a0, %lo(func_8001CC08)
    /* D3C8 8001CBC8 83DE010C */  jal        CdSyncCallback
    /* D3CC 8001CBCC 00000000 */   nop
    /* D3D0 8001CBD0 09000424 */  addiu      $a0, $zero, 0x9
    /* D3D4 8001CBD4 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D3D8 8001CBD8 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D3DC 8001CBDC 9574000C */  jal        func_8001D254
    /* D3E0 8001CBE0 21280000 */   addu      $a1, $zero, $zero
    /* D3E4 8001CBE4 0A80013C */  lui        $at, %hi(D_800988D0)
    /* D3E8 8001CBE8 D08820A0 */  sb         $zero, %lo(D_800988D0)($at)
    /* D3EC 8001CBEC 0A80013C */  lui        $at, %hi(D_80098AB8)
    /* D3F0 8001CBF0 B88A20A0 */  sb         $zero, %lo(D_80098AB8)($at)
    /* D3F4 8001CBF4 1400BF8F */  lw         $ra, 0x14($sp)
    /* D3F8 8001CBF8 1000B08F */  lw         $s0, 0x10($sp)
    /* D3FC 8001CBFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D400 8001CC00 0800E003 */  jr         $ra
    /* D404 8001CC04 00000000 */   nop
.size func_8001CB7C, . - func_8001CB7C
