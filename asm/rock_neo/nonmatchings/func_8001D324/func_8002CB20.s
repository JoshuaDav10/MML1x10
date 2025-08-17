.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CB20
    /* 1D320 8002CB20 0A80143C */  lui        $s4, %hi(D_800987D8)
    /* 1D324 8002CB24 D887948E */  lw         $s4, %lo(D_800987D8)($s4)
    /* 1D328 8002CB28 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1D32C 8002CB2C 21980000 */  addu       $s3, $zero, $zero
    /* 1D330 8002CB30 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1D334 8002CB34 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1D338 8002CB38 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1D33C 8002CB3C 1C00801A */  blez       $s4, .L8002CBB0
    /* 1D340 8002CB40 2000B0AF */   sw        $s0, 0x20($sp)
    /* 1D344 8002CB44 0B80123C */  lui        $s2, %hi(D_800ACE00)
    /* 1D348 8002CB48 00CE5226 */  addiu      $s2, $s2, %lo(D_800ACE00)
    /* 1D34C 8002CB4C 06005126 */  addiu      $s1, $s2, 0x6
    /* 1D350 8002CB50 21800000 */  addu       $s0, $zero, $zero
    /* 1D354 8002CB54 21204002 */  addu       $a0, $s2, $zero
  .L8002CB58:
    /* 1D358 8002CB58 0C005226 */  addiu      $s2, $s2, 0xC
    /* 1D35C 8002CB5C 00002586 */  lh         $a1, 0x0($s1)
    /* 1D360 8002CB60 01007326 */  addiu      $s3, $s3, 0x1
    /* 1D364 8002CB64 00F0A630 */  andi       $a2, $a1, 0xF000
    /* 1D368 8002CB68 FF0FA730 */  andi       $a3, $a1, 0xFFF
    /* 1D36C 8002CB6C 0B80013C */  lui        $at, %hi(D_800ACE08)
    /* 1D370 8002CB70 21083000 */  addu       $at, $at, $s0
    /* 1D374 8002CB74 08CE2594 */  lhu        $a1, %lo(D_800ACE08)($at)
    /* 1D378 8002CB78 82310600 */  srl        $a2, $a2, 6
    /* 1D37C 8002CB7C 82130500 */  srl        $v0, $a1, 14
    /* 1D380 8002CB80 000022A6 */  sh         $v0, 0x0($s1)
    /* 1D384 8002CB84 0C003126 */  addiu      $s1, $s1, 0xC
    /* 1D388 8002CB88 0B80013C */  lui        $at, %hi(D_800ACE0A)
    /* 1D38C 8002CB8C 21083000 */  addu       $at, $at, $s0
    /* 1D390 8002CB90 0ACE2284 */  lh         $v0, %lo(D_800ACE0A)($at)
    /* 1D394 8002CB94 0C001026 */  addiu      $s0, $s0, 0xC
.size func_8002CB20, . - func_8002CB20
