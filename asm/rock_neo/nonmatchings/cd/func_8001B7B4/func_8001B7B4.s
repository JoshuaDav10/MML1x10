.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B7B4
    /* BFB4 8001B7B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BFB8 8001B7B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* BFBC 8001B7BC 7F001024 */  addiu      $s0, $zero, 0x7F
    /* BFC0 8001B7C0 1400BFAF */  sw         $ra, 0x14($sp)
  .L8001B7C4:
    /* BFC4 8001B7C4 E574000C */  jal        func_8001D394
    /* BFC8 8001B7C8 FF000432 */   andi      $a0, $s0, 0xFF
    /* BFCC 8001B7CC FFFF1026 */  addiu      $s0, $s0, -0x1
    /* BFD0 8001B7D0 FCFF001E */  bgtz       $s0, .L8001B7C4
    /* BFD4 8001B7D4 00000000 */   nop
    /* BFD8 8001B7D8 0B80023C */  lui        $v0, %hi(D_800AD142)
    /* BFDC 8001B7DC 42D14224 */  addiu      $v0, $v0, %lo(D_800AD142)
    /* BFE0 8001B7E0 00004394 */  lhu        $v1, 0x0($v0)
    /* BFE4 8001B7E4 0A80043C */  lui        $a0, %hi(D_800988DC)
    /* BFE8 8001B7E8 DC888490 */  lbu        $a0, %lo(D_800988DC)($a0)
    /* BFEC 8001B7EC 00806334 */  ori        $v1, $v1, 0x8000
    /* BFF0 8001B7F0 09008010 */  beqz       $a0, .L8001B818
    /* BFF4 8001B7F4 000043A4 */   sh        $v1, 0x0($v0)
    /* BFF8 8001B7F8 0A80023C */  lui        $v0, %hi(D_80098994)
    /* BFFC 8001B7FC 94894294 */  lhu        $v0, %lo(D_80098994)($v0)
    /* C000 8001B800 0A80013C */  lui        $at, %hi(D_800988DC)
    /* C004 8001B804 DC8820A0 */  sb         $zero, %lo(D_800988DC)($at)
    /* C008 8001B808 0B80013C */  lui        $at, %hi(D_800AD146)
    /* C00C 8001B80C 46D122A4 */  sh         $v0, %lo(D_800AD146)($at)
    /* C010 8001B810 0F6E0008 */  j          .L8001B83C
    /* C014 8001B814 00000000 */   nop
  .L8001B818:
    /* C018 8001B818 0B80033C */  lui        $v1, %hi(D_800AD146)
    /* C01C 8001B81C 46D16394 */  lhu        $v1, %lo(D_800AD146)($v1)
    /* C020 8001B820 01000224 */  addiu      $v0, $zero, 0x1
    /* C024 8001B824 0B80013C */  lui        $at, %hi(D_800AD146)
    /* C028 8001B828 46D120A4 */  sh         $zero, %lo(D_800AD146)($at)
    /* C02C 8001B82C 0A80013C */  lui        $at, %hi(D_800988DC)
    /* C030 8001B830 DC8822A0 */  sb         $v0, %lo(D_800988DC)($at)
    /* C034 8001B834 0A80013C */  lui        $at, %hi(D_80098994)
    /* C038 8001B838 948923A4 */  sh         $v1, %lo(D_80098994)($at)
  .L8001B83C:
    /* C03C 8001B83C AB72000C */  jal        func_8001CAAC
    /* C040 8001B840 00000000 */   nop
    /* C044 8001B844 1400BF8F */  lw         $ra, 0x14($sp)
    /* C048 8001B848 1000B08F */  lw         $s0, 0x10($sp)
    /* C04C 8001B84C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C050 8001B850 0800E003 */  jr         $ra
    /* C054 8001B854 00000000 */   nop
.size func_8001B7B4, . - func_8001B7B4
