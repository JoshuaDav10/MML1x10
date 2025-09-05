.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F3E8
    /* 2FBE8 8003F3E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FBEC 8003F3EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FBF0 8003F3F0 21808000 */  addu       $s0, $a0, $zero
    /* 2FBF4 8003F3F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FBF8 8003F3F8 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2FBFC 8003F3FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2FC00 8003F400 20006210 */  beq        $v1, $v0, .L8003F484
    /* 2FC04 8003F404 02006228 */   slti      $v0, $v1, 0x2
    /* 2FC08 8003F408 05004010 */  beqz       $v0, .L8003F420
    /* 2FC0C 8003F40C 00000000 */   nop
    /* 2FC10 8003F410 0A006010 */  beqz       $v1, .L8003F43C
    /* 2FC14 8003F414 21200002 */   addu      $a0, $s0, $zero
    /* 2FC18 8003F418 21FD0008 */  j          .L8003F484
    /* 2FC1C 8003F41C 00000000 */   nop
  .L8003F420:
    /* 2FC20 8003F420 02000224 */  addiu      $v0, $zero, 0x2
    /* 2FC24 8003F424 07006210 */  beq        $v1, $v0, .L8003F444
    /* 2FC28 8003F428 03000224 */   addiu     $v0, $zero, 0x3
    /* 2FC2C 8003F42C 0F006210 */  beq        $v1, $v0, .L8003F46C
    /* 2FC30 8003F430 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2FC34 8003F434 21FD0008 */  j          .L8003F484
    /* 2FC38 8003F438 00000000 */   nop
  .L8003F43C:
    /* 2FC3C 8003F43C 13FD0008 */  j          .L8003F44C
    /* 2FC40 8003F440 30000524 */   addiu     $a1, $zero, 0x30
  .L8003F444:
    /* 2FC44 8003F444 21200002 */  addu       $a0, $s0, $zero
    /* 2FC48 8003F448 31000524 */  addiu      $a1, $zero, 0x31
  .L8003F44C:
    /* 2FC4C 8003F44C 21300000 */  addu       $a2, $zero, $zero
    /* 2FC50 8003F450 7707010C */  jal        func_80041DDC
    /* 2FC54 8003F454 01000724 */   addiu     $a3, $zero, 0x1
    /* 2FC58 8003F458 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FC5C 8003F45C 00000000 */  nop
    /* 2FC60 8003F460 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FC64 8003F464 21FD0008 */  j          .L8003F484
    /* 2FC68 8003F468 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003F46C:
    /* 2FC6C 8003F46C A7000382 */  lb         $v1, 0xA7($s0)
    /* 2FC70 8003F470 00000000 */  nop
    /* 2FC74 8003F474 03006214 */  bne        $v1, $v0, .L8003F484
    /* 2FC78 8003F478 00000000 */   nop
    /* 2FC7C 8003F47C 090000A2 */  sb         $zero, 0x9($s0)
    /* 2FC80 8003F480 0A0000A2 */  sb         $zero, 0xA($s0)
  .L8003F484:
    /* 2FC84 8003F484 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FC88 8003F488 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FC8C 8003F48C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FC90 8003F490 0800E003 */  jr         $ra
    /* 2FC94 8003F494 00000000 */   nop
.size func_8003F3E8, . - func_8003F3E8
