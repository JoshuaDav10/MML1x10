.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B6FC
    /* BEFC 8001B6FC 0A80033C */  lui        $v1, %hi(D_800989C4)
    /* BF00 8001B700 C489638C */  lw         $v1, %lo(D_800989C4)($v1)
    /* BF04 8001B704 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF08 8001B708 1400BFAF */  sw         $ra, 0x14($sp)
    /* BF0C 8001B70C 06006010 */  beqz       $v1, .L8001B728
    /* BF10 8001B710 1000B0AF */   sw        $s0, 0x10($sp)
    /* BF14 8001B714 01000224 */  addiu      $v0, $zero, 0x1
    /* BF18 8001B718 18006210 */  beq        $v1, $v0, .L8001B77C
    /* BF1C 8001B71C 00000000 */   nop
    /* BF20 8001B720 E86D0008 */  j          .L8001B7A0
    /* BF24 8001B724 00000000 */   nop
  .L8001B728:
    /* BF28 8001B728 7F001024 */  addiu      $s0, $zero, 0x7F
  .L8001B72C:
    /* BF2C 8001B72C E574000C */  jal        func_8001D394
    /* BF30 8001B730 FF000432 */   andi      $a0, $s0, 0xFF
    /* BF34 8001B734 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* BF38 8001B738 FCFF001E */  bgtz       $s0, .L8001B72C
    /* BF3C 8001B73C 00000000 */   nop
    /* BF40 8001B740 0B80033C */  lui        $v1, %hi(D_800AD142)
    /* BF44 8001B744 42D16324 */  addiu      $v1, $v1, %lo(D_800AD142)
    /* BF48 8001B748 00006294 */  lhu        $v0, 0x0($v1)
    /* BF4C 8001B74C 00000000 */  nop
    /* BF50 8001B750 00804234 */  ori        $v0, $v0, 0x8000
    /* BF54 8001B754 DF72000C */  jal        func_8001CB7C
    /* BF58 8001B758 000062A4 */   sh        $v0, 0x0($v1)
    /* BF5C 8001B75C 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* BF60 8001B760 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* BF64 8001B764 01000324 */  addiu      $v1, $zero, 0x1
    /* BF68 8001B768 0A80013C */  lui        $at, %hi(D_800988D0)
    /* BF6C 8001B76C D08823A0 */  sb         $v1, %lo(D_800988D0)($at)
    /* BF70 8001B770 01004224 */  addiu      $v0, $v0, 0x1
    /* BF74 8001B774 0A80013C */  lui        $at, %hi(D_800989C4)
    /* BF78 8001B778 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B77C:
    /* BF7C 8001B77C 0A80023C */  lui        $v0, %hi(D_80098964)
    /* BF80 8001B780 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* BF84 8001B784 00000000 */  nop
    /* BF88 8001B788 05004010 */  beqz       $v0, .L8001B7A0
    /* BF8C 8001B78C 02000224 */   addiu     $v0, $zero, 0x2
    /* BF90 8001B790 0A80013C */  lui        $at, %hi(D_80098B42)
    /* BF94 8001B794 428B22A0 */  sb         $v0, %lo(D_80098B42)($at)
    /* BF98 8001B798 AB72000C */  jal        func_8001CAAC
    /* BF9C 8001B79C 00000000 */   nop
  .L8001B7A0:
    /* BFA0 8001B7A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* BFA4 8001B7A4 1000B08F */  lw         $s0, 0x10($sp)
    /* BFA8 8001B7A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BFAC 8001B7AC 0800E003 */  jr         $ra
    /* BFB0 8001B7B0 00000000 */   nop
.size func_8001B6FC, . - func_8001B6FC
