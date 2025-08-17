.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D324
    /* DB24 8001D324 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DB28 8001D328 21308000 */  addu       $a2, $a0, $zero
    /* DB2C 8001D32C 0A80053C */  lui        $a1, %hi(D_800988EC)
    /* DB30 8001D330 EC88A590 */  lbu        $a1, %lo(D_800988EC)($a1)
    /* DB34 8001D334 FF00C230 */  andi       $v0, $a2, 0xFF
    /* DB38 8001D338 1000BFAF */  sw         $ra, 0x10($sp)
    /* DB3C 8001D33C 0A80013C */  lui        $at, %hi(D_80098828)
    /* DB40 8001D340 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* DB44 8001D344 FF00A330 */  andi       $v1, $a1, 0xFF
    /* DB48 8001D348 0E006210 */  beq        $v1, $v0, .L8001D384
    /* DB4C 8001D34C 8000A330 */   andi      $v1, $a1, 0x80
    /* DB50 8001D350 80008230 */  andi       $v0, $a0, 0x80
    /* DB54 8001D354 03006210 */  beq        $v1, $v0, .L8001D364
    /* DB58 8001D358 02000224 */   addiu     $v0, $zero, 0x2
    /* DB5C 8001D35C 0A80013C */  lui        $at, %hi(D_80098828)
    /* DB60 8001D360 288822AC */  sw         $v0, %lo(D_80098828)($at)
  .L8001D364:
    /* DB64 8001D364 0A80013C */  lui        $at, %hi(D_800988EC)
    /* DB68 8001D368 EC8826A0 */  sb         $a2, %lo(D_800988EC)($at)
    /* DB6C 8001D36C 0A80053C */  lui        $a1, %hi(D_800988EC)
    /* DB70 8001D370 EC88A524 */  addiu      $a1, $a1, %lo(D_800988EC)
    /* DB74 8001D374 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* DB78 8001D378 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* DB7C 8001D37C AF74000C */  jal        func_8001D2BC
    /* DB80 8001D380 0E000424 */   addiu     $a0, $zero, 0xE
  .L8001D384:
    /* DB84 8001D384 1000BF8F */  lw         $ra, 0x10($sp)
    /* DB88 8001D388 1800BD27 */  addiu      $sp, $sp, 0x18
    /* DB8C 8001D38C 0800E003 */  jr         $ra
    /* DB90 8001D390 00000000 */   nop
.size func_8001D324, . - func_8001D324
