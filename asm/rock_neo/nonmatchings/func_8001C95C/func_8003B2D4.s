.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B2D4
    /* 2BAD4 8003B2D4 2000A004 */  bltz       $a1, .L8003B358
    /* 2BAD8 8003B2D8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2BADC 8003B2DC 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2BAE0 8003B2E0 21082400 */  addu       $at, $at, $a0
    /* 2BAE4 8003B2E4 049F2380 */  lb         $v1, %lo(D_80089F04)($at)
    /* 2BAE8 8003B2E8 00000000 */  nop
    /* 2BAEC 8003B2EC 1A006004 */  bltz       $v1, .L8003B358
    /* 2BAF0 8003B2F0 401A0300 */   sll       $v1, $v1, 9
    /* 2BAF4 8003B2F4 0C80023C */  lui        $v0, %hi(D_800BD3B8)
    /* 2BAF8 8003B2F8 B8D34224 */  addiu      $v0, $v0, %lo(D_800BD3B8)
    /* 2BAFC 8003B2FC 21186200 */  addu       $v1, $v1, $v0
    /* 2BB00 8003B300 03110500 */  sra        $v0, $a1, 4
    /* 2BB04 8003B304 80100200 */  sll        $v0, $v0, 2
    /* 2BB08 8003B308 21104300 */  addu       $v0, $v0, $v1
    /* 2BB0C 8003B30C 0000438C */  lw         $v1, 0x0($v0)
    /* 2BB10 8003B310 0F00A230 */  andi       $v0, $a1, 0xF
    /* 2BB14 8003B314 40100200 */  sll        $v0, $v0, 1
    /* 2BB18 8003B318 06184300 */  srlv       $v1, $v1, $v0
    /* 2BB1C 8003B31C 03006330 */  andi       $v1, $v1, 0x3
    /* 2BB20 8003B320 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BB24 8003B324 0C006210 */  beq        $v1, $v0, .L8003B358
    /* 2BB28 8003B328 00000000 */   nop
    /* 2BB2C 8003B32C 07006010 */  beqz       $v1, .L8003B34C
    /* 2BB30 8003B330 02000224 */   addiu     $v0, $zero, 0x2
    /* 2BB34 8003B334 07006210 */  beq        $v1, $v0, .L8003B354
    /* 2BB38 8003B338 03000224 */   addiu     $v0, $zero, 0x3
    /* 2BB3C 8003B33C 06006210 */  beq        $v1, $v0, .L8003B358
    /* 2BB40 8003B340 00000000 */   nop
    /* 2BB44 8003B344 D6EC0008 */  j          .L8003B358
    /* 2BB48 8003B348 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8003B34C:
    /* 2BB4C 8003B34C D6EC0008 */  j          .L8003B358
    /* 2BB50 8003B350 21100000 */   addu      $v0, $zero, $zero
  .L8003B354:
    /* 2BB54 8003B354 02000224 */  addiu      $v0, $zero, 0x2
  .L8003B358:
    /* 2BB58 8003B358 0800E003 */  jr         $ra
    /* 2BB5C 8003B35C 00000000 */   nop
.size func_8003B2D4, . - func_8003B2D4
