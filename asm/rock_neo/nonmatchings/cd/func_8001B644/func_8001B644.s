.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B644
    /* BE44 8001B644 0A80033C */  lui        $v1, %hi(D_800989C4)
    /* BE48 8001B648 C489638C */  lw         $v1, %lo(D_800989C4)($v1)
    /* BE4C 8001B64C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BE50 8001B650 1400BFAF */  sw         $ra, 0x14($sp)
    /* BE54 8001B654 06006010 */  beqz       $v1, .L8001B670
    /* BE58 8001B658 1000B0AF */   sw        $s0, 0x10($sp)
    /* BE5C 8001B65C 01000224 */  addiu      $v0, $zero, 0x1
    /* BE60 8001B660 18006210 */  beq        $v1, $v0, .L8001B6C4
    /* BE64 8001B664 00000000 */   nop
    /* BE68 8001B668 BA6D0008 */  j          .L8001B6E8
    /* BE6C 8001B66C 00000000 */   nop
  .L8001B670:
    /* BE70 8001B670 7F001024 */  addiu      $s0, $zero, 0x7F
  .L8001B674:
    /* BE74 8001B674 E574000C */  jal        func_8001D394
    /* BE78 8001B678 FF000432 */   andi      $a0, $s0, 0xFF
    /* BE7C 8001B67C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* BE80 8001B680 FCFF001E */  bgtz       $s0, .L8001B674
    /* BE84 8001B684 00000000 */   nop
    /* BE88 8001B688 0B80033C */  lui        $v1, %hi(D_800AD142)
    /* BE8C 8001B68C 42D16324 */  addiu      $v1, $v1, %lo(D_800AD142)
    /* BE90 8001B690 00006294 */  lhu        $v0, 0x0($v1)
    /* BE94 8001B694 00000000 */  nop
    /* BE98 8001B698 00804234 */  ori        $v0, $v0, 0x8000
    /* BE9C 8001B69C DF72000C */  jal        func_8001CB7C
    /* BEA0 8001B6A0 000062A4 */   sh        $v0, 0x0($v1)
    /* BEA4 8001B6A4 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* BEA8 8001B6A8 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* BEAC 8001B6AC 01000324 */  addiu      $v1, $zero, 0x1
    /* BEB0 8001B6B0 0A80013C */  lui        $at, %hi(D_800988D0)
    /* BEB4 8001B6B4 D08823A0 */  sb         $v1, %lo(D_800988D0)($at)
    /* BEB8 8001B6B8 01004224 */  addiu      $v0, $v0, 0x1
    /* BEBC 8001B6BC 0A80013C */  lui        $at, %hi(D_800989C4)
    /* BEC0 8001B6C0 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B6C4:
    /* BEC4 8001B6C4 0A80023C */  lui        $v0, %hi(D_80098964)
    /* BEC8 8001B6C8 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* BECC 8001B6CC 00000000 */  nop
    /* BED0 8001B6D0 05004010 */  beqz       $v0, .L8001B6E8
    /* BED4 8001B6D4 01000224 */   addiu     $v0, $zero, 0x1
    /* BED8 8001B6D8 0A80013C */  lui        $at, %hi(D_80098B42)
    /* BEDC 8001B6DC 428B22A0 */  sb         $v0, %lo(D_80098B42)($at)
    /* BEE0 8001B6E0 AB72000C */  jal        func_8001CAAC
    /* BEE4 8001B6E4 00000000 */   nop
  .L8001B6E8:
    /* BEE8 8001B6E8 1400BF8F */  lw         $ra, 0x14($sp)
    /* BEEC 8001B6EC 1000B08F */  lw         $s0, 0x10($sp)
    /* BEF0 8001B6F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BEF4 8001B6F4 0800E003 */  jr         $ra
    /* BEF8 8001B6F8 00000000 */   nop
.size func_8001B644, . - func_8001B644
