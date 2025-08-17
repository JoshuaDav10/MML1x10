.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BC90
    /* 4C490 8005BC90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C494 8005BC94 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C498 8005BC98 21808000 */  addu       $s0, $a0, $zero
    /* 4C49C 8005BC9C 0A80033C */  lui        $v1, %hi(D_80098912)
    /* 4C4A0 8005BCA0 12896394 */  lhu        $v1, %lo(D_80098912)($v1)
    /* 4C4A4 8005BCA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C4A8 8005BCA8 03006214 */  bne        $v1, $v0, .L8005BCB8
    /* 4C4AC 8005BCAC 1400BFAF */   sw        $ra, 0x14($sp)
    /* 4C4B0 8005BCB0 306F0108 */  j          .L8005BCC0
    /* 4C4B4 8005BCB4 7C0000A2 */   sb        $zero, 0x7C($s0)
  .L8005BCB8:
    /* 4C4B8 8005BCB8 04000224 */  addiu      $v0, $zero, 0x4
    /* 4C4BC 8005BCBC 7C0002A2 */  sb         $v0, 0x7C($s0)
  .L8005BCC0:
    /* 4C4C0 8005BCC0 2A6B010C */  jal        func_8005ACA8
    /* 4C4C4 8005BCC4 21200002 */   addu      $a0, $s0, $zero
    /* 4C4C8 8005BCC8 07000224 */  addiu      $v0, $zero, 0x7
    /* 4C4CC 8005BCCC 7C0002A2 */  sb         $v0, 0x7C($s0)
    /* 4C4D0 8005BCD0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4C4D4 8005BCD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C4D8 8005BCD8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4C4DC 8005BCDC 0800E003 */  jr         $ra
    /* 4C4E0 8005BCE0 00000000 */   nop
.size func_8005BC90, . - func_8005BC90
