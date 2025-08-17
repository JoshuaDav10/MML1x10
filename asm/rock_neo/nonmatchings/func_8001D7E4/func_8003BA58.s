.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BA58
    /* 2C258 8003BA58 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2C25C 8003BA5C 4000B4AF */  sw         $s4, 0x40($sp)
    /* 2C260 8003BA60 21A08000 */  addu       $s4, $a0, $zero
    /* 2C264 8003BA64 4400B5AF */  sw         $s5, 0x44($sp)
    /* 2C268 8003BA68 21A8A000 */  addu       $s5, $a1, $zero
    /* 2C26C 8003BA6C 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 2C270 8003BA70 4800B6AF */  sw         $s6, 0x48($sp)
    /* 2C274 8003BA74 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 2C278 8003BA78 3800B2AF */  sw         $s2, 0x38($sp)
    /* 2C27C 8003BA7C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 2C280 8003BA80 3000B0AF */  sw         $s0, 0x30($sp)
    /* 2C284 8003BA84 0000838E */  lw         $v1, 0x0($s4)
    /* 2C288 8003BA88 00000000 */  nop
    /* 2C28C 8003BA8C 03006014 */  bnez       $v1, .L8003BA9C
    /* 2C290 8003BA90 21B0C000 */   addu      $s6, $a2, $zero
    /* 2C294 8003BA94 B0EE0008 */  j          .L8003BAC0
    /* 2C298 8003BA98 21900000 */   addu      $s2, $zero, $zero
  .L8003BA9C:
    /* 2C29C 8003BA9C 42101500 */  srl        $v0, $s5, 1
    /* 2C2A0 8003BAA0 2B104300 */  sltu       $v0, $v0, $v1
    /* 2C2A4 8003BAA4 03004014 */  bnez       $v0, .L8003BAB4
    /* 2C2A8 8003BAA8 2B107500 */   sltu      $v0, $v1, $s5
    /* 2C2AC 8003BAAC B0EE0008 */  j          .L8003BAC0
    /* 2C2B0 8003BAB0 01001224 */   addiu     $s2, $zero, 0x1
  .L8003BAB4:
    /* 2C2B4 8003BAB4 02004010 */  beqz       $v0, .L8003BAC0
    /* 2C2B8 8003BAB8 03001224 */   addiu     $s2, $zero, 0x3
    /* 2C2BC 8003BABC 02001224 */  addiu      $s2, $zero, 0x2
  .L8003BAC0:
    /* 2C2C0 8003BAC0 01001124 */  addiu      $s1, $zero, 0x1
    /* 2C2C4 8003BAC4 01001324 */  addiu      $s3, $zero, 0x1
    /* 2C2C8 8003BAC8 1580103C */  lui        $s0, (0x8015C014 >> 16)
    /* 2C2CC 8003BACC 14C01036 */  ori        $s0, $s0, (0x8015C014 & 0xFFFF)
  .L8003BAD0:
    /* 2C2D0 8003BAD0 0000028E */  lw         $v0, 0x0($s0)
    /* 2C2D4 8003BAD4 00000000 */  nop
    /* 2C2D8 8003BAD8 35004010 */  beqz       $v0, .L8003BBB0
    /* 2C2DC 8003BADC 00000000 */   nop
    /* 2C2E0 8003BAE0 0000438C */  lw         $v1, 0x0($v0)
    /* 2C2E4 8003BAE4 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
    /* 2C2E8 8003BAE8 24106200 */  and        $v0, $v1, $v0
    /* 2C2EC 8003BAEC 2C005614 */  bne        $v0, $s6, .L8003BBA0
    /* 2C2F0 8003BAF0 82110300 */   srl       $v0, $v1, 6
    /* 2C2F4 8003BAF4 FC034230 */  andi       $v0, $v0, 0x3FC
    /* 2C2F8 8003BAF8 1000A327 */  addiu      $v1, $sp, 0x10
    /* 2C2FC 8003BAFC 21104300 */  addu       $v0, $v0, $v1
    /* 2C300 8003BB00 000051AC */  sw         $s1, 0x0($v0)
    /* 2C304 8003BB04 0000028E */  lw         $v0, 0x0($s0)
    /* 2C308 8003BB08 0400033C */  lui        $v1, (0x40400 >> 16)
    /* 2C30C 8003BB0C 0000428C */  lw         $v0, 0x0($v0)
    /* 2C310 8003BB10 00046334 */  ori        $v1, $v1, (0x40400 & 0xFFFF)
    /* 2C314 8003BB14 22004314 */  bne        $v0, $v1, .L8003BBA0
    /* 2C318 8003BB18 00000000 */   nop
    /* 2C31C 8003BB1C 20006012 */  beqz       $s3, .L8003BBA0
    /* 2C320 8003BB20 00000000 */   nop
    /* 2C324 8003BB24 21980000 */  addu       $s3, $zero, $zero
    /* 2C328 8003BB28 D8EC000C */  jal        func_8003B360
    /* 2C32C 8003BB2C 21202002 */   addu      $a0, $s1, $zero
    /* 2C330 8003BB30 21184000 */  addu       $v1, $v0, $zero
    /* 2C334 8003BB34 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C338 8003BB38 0B006210 */  beq        $v1, $v0, .L8003BB68
    /* 2C33C 8003BB3C 02006228 */   slti      $v0, $v1, 0x2
    /* 2C340 8003BB40 05004014 */  bnez       $v0, .L8003BB58
    /* 2C344 8003BB44 02000224 */   addiu     $v0, $zero, 0x2
    /* 2C348 8003BB48 0C006210 */  beq        $v1, $v0, .L8003BB7C
    /* 2C34C 8003BB4C 03000224 */   addiu     $v0, $zero, 0x3
    /* 2C350 8003BB50 31006210 */  beq        $v1, $v0, .L8003BC18
    /* 2C354 8003BB54 00000000 */   nop
  .L8003BB58:
    /* 2C358 8003BB58 11004012 */  beqz       $s2, .L8003BBA0
    /* 2C35C 8003BB5C 00000000 */   nop
    /* 2C360 8003BB60 E8EE0008 */  j          .L8003BBA0
    /* 2C364 8003BB64 01001224 */   addiu     $s2, $zero, 0x1
  .L8003BB68:
    /* 2C368 8003BB68 0200422E */  sltiu      $v0, $s2, 0x2
    /* 2C36C 8003BB6C 0C004014 */  bnez       $v0, .L8003BBA0
    /* 2C370 8003BB70 00000000 */   nop
    /* 2C374 8003BB74 E8EE0008 */  j          .L8003BBA0
    /* 2C378 8003BB78 02001224 */   addiu     $s2, $zero, 0x2
  .L8003BB7C:
    /* 2C37C 8003BB7C 0300422E */  sltiu      $v0, $s2, 0x3
    /* 2C380 8003BB80 07004014 */  bnez       $v0, .L8003BBA0
    /* 2C384 8003BB84 43020424 */   addiu     $a0, $zero, 0x243
    /* 2C388 8003BB88 03001224 */  addiu      $s2, $zero, 0x3
    /* 2C38C 8003BB8C 0000828E */  lw         $v0, 0x0($s4)
    /* 2C390 8003BB90 00000000 */  nop
    /* 2C394 8003BB94 23105500 */  subu       $v0, $v0, $s5
    /* 2C398 8003BB98 A376000C */  jal        Sce_flag_on
    /* 2C39C 8003BB9C 000082AE */   sw        $v0, 0x0($s4)
  .L8003BBA0:
    /* 2C3A0 8003BBA0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2C3A4 8003BBA4 0008222E */  sltiu      $v0, $s1, 0x800
    /* 2C3A8 8003BBA8 C9FF4014 */  bnez       $v0, .L8003BAD0
    /* 2C3AC 8003BBAC 0C001026 */   addiu     $s0, $s0, 0xC
  .L8003BBB0:
    /* 2C3B0 8003BBB0 21880000 */  addu       $s1, $zero, $zero
    /* 2C3B4 8003BBB4 1000B327 */  addiu      $s3, $sp, 0x10
    /* 2C3B8 8003BBB8 0980033C */  lui        $v1, %hi(D_80097D74)
    /* 2C3BC 8003BBBC 747D6324 */  addiu      $v1, $v1, %lo(D_80097D74)
    /* 2C3C0 8003BBC0 C0101200 */  sll        $v0, $s2, 3
    /* 2C3C4 8003BBC4 23105200 */  subu       $v0, $v0, $s2
    /* 2C3C8 8003BBC8 21804300 */  addu       $s0, $v0, $v1
    /* 2C3CC 8003BBCC 06000424 */  addiu      $a0, $zero, 0x6
  .L8003BBD0:
    /* 2C3D0 8003BBD0 0000658E */  lw         $a1, 0x0($s3)
    /* 2C3D4 8003BBD4 04007326 */  addiu      $s3, $s3, 0x4
    /* 2C3D8 8003BBD8 00000692 */  lbu        $a2, 0x0($s0)
    /* 2C3DC 8003BBDC 01001026 */  addiu      $s0, $s0, 0x1
    /* 2C3E0 8003BBE0 50ED000C */  jal        func_8003B540
    /* 2C3E4 8003BBE4 01003126 */   addiu     $s1, $s1, 0x1
    /* 2C3E8 8003BBE8 0700222E */  sltiu      $v0, $s1, 0x7
    /* 2C3EC 8003BBEC F8FF4014 */  bnez       $v0, .L8003BBD0
    /* 2C3F0 8003BBF0 06000424 */   addiu     $a0, $zero, 0x6
    /* 2C3F4 8003BBF4 0300422E */  sltiu      $v0, $s2, 0x3
    /* 2C3F8 8003BBF8 05004010 */  beqz       $v0, .L8003BC10
    /* 2C3FC 8003BBFC 00000000 */   nop
    /* 2C400 8003BC00 A376000C */  jal        Sce_flag_on
    /* 2C404 8003BC04 3D020424 */   addiu     $a0, $zero, 0x23D
    /* 2C408 8003BC08 06EF0008 */  j          .L8003BC18
    /* 2C40C 8003BC0C 00000000 */   nop
  .L8003BC10:
    /* 2C410 8003BC10 3477000C */  jal        Sce_flag_off
    /* 2C414 8003BC14 3D020424 */   addiu     $a0, $zero, 0x23D
  .L8003BC18:
    /* 2C418 8003BC18 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 2C41C 8003BC1C 4800B68F */  lw         $s6, 0x48($sp)
    /* 2C420 8003BC20 4400B58F */  lw         $s5, 0x44($sp)
    /* 2C424 8003BC24 4000B48F */  lw         $s4, 0x40($sp)
    /* 2C428 8003BC28 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 2C42C 8003BC2C 3800B28F */  lw         $s2, 0x38($sp)
    /* 2C430 8003BC30 3400B18F */  lw         $s1, 0x34($sp)
    /* 2C434 8003BC34 3000B08F */  lw         $s0, 0x30($sp)
    /* 2C438 8003BC38 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 2C43C 8003BC3C 0800E003 */  jr         $ra
    /* 2C440 8003BC40 00000000 */   nop
.size func_8003BA58, . - func_8003BA58
