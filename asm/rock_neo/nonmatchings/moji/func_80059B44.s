.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059B44
    /* 4A344 80059B44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A348 80059B48 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A34C 80059B4C 21888000 */  addu       $s1, $a0, $zero
    /* 4A350 80059B50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A354 80059B54 21800000 */  addu       $s0, $zero, $zero
    /* 4A358 80059B58 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4A35C 80059B5C 9676000C */  jal        Sce_flag_test
    /* 4A360 80059B60 3D020424 */   addiu     $a0, $zero, 0x23D
    /* 4A364 80059B64 09004010 */  beqz       $v0, .L80059B8C
    /* 4A368 80059B68 F4010224 */   addiu     $v0, $zero, 0x1F4
    /* 4A36C 80059B6C 0C80033C */  lui        $v1, %hi(Game_work + 0x28)
    /* 4A370 80059B70 381B638C */  lw         $v1, %lo(Game_work + 0x28)($v1)
    /* 4A374 80059B74 00000000 */  nop
    /* 4A378 80059B78 04006210 */  beq        $v1, $v0, .L80059B8C
    /* 4A37C 80059B7C 00000000 */   nop
    /* 4A380 80059B80 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A384 80059B84 F8E220A0 */  sb         $zero, %lo(D_800BE2F8)($at)
    /* 4A388 80059B88 01001024 */  addiu      $s0, $zero, 0x1
  .L80059B8C:
    /* 4A38C 80059B8C 9676000C */  jal        Sce_flag_test
    /* 4A390 80059B90 3E020424 */   addiu     $a0, $zero, 0x23E
    /* 4A394 80059B94 0A004010 */  beqz       $v0, .L80059BC0
    /* 4A398 80059B98 C8000224 */   addiu     $v0, $zero, 0xC8
    /* 4A39C 80059B9C 0C80033C */  lui        $v1, %hi(Game_work + 0x2C)
    /* 4A3A0 80059BA0 3C1B638C */  lw         $v1, %lo(Game_work + 0x2C)($v1)
    /* 4A3A4 80059BA4 00000000 */  nop
    /* 4A3A8 80059BA8 05006210 */  beq        $v1, $v0, .L80059BC0
    /* 4A3AC 80059BAC 01000224 */   addiu     $v0, $zero, 0x1
    /* 4A3B0 80059BB0 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A3B4 80059BB4 21083000 */  addu       $at, $at, $s0
    /* 4A3B8 80059BB8 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A3BC 80059BBC 01001026 */  addiu      $s0, $s0, 0x1
  .L80059BC0:
    /* 4A3C0 80059BC0 9676000C */  jal        Sce_flag_test
    /* 4A3C4 80059BC4 3F020424 */   addiu     $a0, $zero, 0x23F
    /* 4A3C8 80059BC8 0A004010 */  beqz       $v0, .L80059BF4
    /* 4A3CC 80059BCC FA000224 */   addiu     $v0, $zero, 0xFA
    /* 4A3D0 80059BD0 0C80033C */  lui        $v1, %hi(Game_work + 0x30)
    /* 4A3D4 80059BD4 401B638C */  lw         $v1, %lo(Game_work + 0x30)($v1)
    /* 4A3D8 80059BD8 00000000 */  nop
    /* 4A3DC 80059BDC 05006210 */  beq        $v1, $v0, .L80059BF4
    /* 4A3E0 80059BE0 02000224 */   addiu     $v0, $zero, 0x2
    /* 4A3E4 80059BE4 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A3E8 80059BE8 21083000 */  addu       $at, $at, $s0
    /* 4A3EC 80059BEC F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A3F0 80059BF0 01001026 */  addiu      $s0, $s0, 0x1
  .L80059BF4:
    /* 4A3F4 80059BF4 9676000C */  jal        Sce_flag_test
    /* 4A3F8 80059BF8 40020424 */   addiu     $a0, $zero, 0x240
    /* 4A3FC 80059BFC 0A004010 */  beqz       $v0, .L80059C28
    /* 4A400 80059C00 C8000224 */   addiu     $v0, $zero, 0xC8
    /* 4A404 80059C04 0C80033C */  lui        $v1, %hi(Game_work + 0x34)
    /* 4A408 80059C08 441B638C */  lw         $v1, %lo(Game_work + 0x34)($v1)
    /* 4A40C 80059C0C 00000000 */  nop
    /* 4A410 80059C10 05006210 */  beq        $v1, $v0, .L80059C28
    /* 4A414 80059C14 03000224 */   addiu     $v0, $zero, 0x3
    /* 4A418 80059C18 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A41C 80059C1C 21083000 */  addu       $at, $at, $s0
    /* 4A420 80059C20 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A424 80059C24 01001026 */  addiu      $s0, $s0, 0x1
  .L80059C28:
    /* 4A428 80059C28 0C80033C */  lui        $v1, %hi(Game_work + 0x66)
    /* 4A42C 80059C2C 761B6390 */  lbu        $v1, %lo(Game_work + 0x66)($v1)
    /* 4A430 80059C30 00000000 */  nop
    /* 4A434 80059C34 80100300 */  sll        $v0, $v1, 2
    /* 4A438 80059C38 21104300 */  addu       $v0, $v0, $v1
    /* 4A43C 80059C3C 00190200 */  sll        $v1, $v0, 4
    /* 4A440 80059C40 23186200 */  subu       $v1, $v1, $v0
    /* 4A444 80059C44 0C80023C */  lui        $v0, %hi(Game_work + 0x38)
    /* 4A448 80059C48 481B428C */  lw         $v0, %lo(Game_work + 0x38)($v0)
    /* 4A44C 80059C4C 40180300 */  sll        $v1, $v1, 1
    /* 4A450 80059C50 05006210 */  beq        $v1, $v0, .L80059C68
    /* 4A454 80059C54 05000224 */   addiu     $v0, $zero, 0x5
    /* 4A458 80059C58 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A45C 80059C5C 21083000 */  addu       $at, $at, $s0
    /* 4A460 80059C60 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A464 80059C64 01001026 */  addiu      $s0, $s0, 0x1
  .L80059C68:
    /* 4A468 80059C68 0C80033C */  lui        $v1, %hi(Game_work + 0x67)
    /* 4A46C 80059C6C 771B6390 */  lbu        $v1, %lo(Game_work + 0x67)($v1)
    /* 4A470 80059C70 00000000 */  nop
    /* 4A474 80059C74 40100300 */  sll        $v0, $v1, 1
    /* 4A478 80059C78 21104300 */  addu       $v0, $v0, $v1
    /* 4A47C 80059C7C 00190200 */  sll        $v1, $v0, 4
    /* 4A480 80059C80 23186200 */  subu       $v1, $v1, $v0
    /* 4A484 80059C84 0C80023C */  lui        $v0, %hi(Game_work + 0x3C)
    /* 4A488 80059C88 4C1B428C */  lw         $v0, %lo(Game_work + 0x3C)($v0)
    /* 4A48C 80059C8C 80180300 */  sll        $v1, $v1, 2
    /* 4A490 80059C90 05006210 */  beq        $v1, $v0, .L80059CA8
    /* 4A494 80059C94 04000224 */   addiu     $v0, $zero, 0x4
    /* 4A498 80059C98 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A49C 80059C9C 21083000 */  addu       $at, $at, $s0
    /* 4A4A0 80059CA0 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A4A4 80059CA4 01001026 */  addiu      $s0, $s0, 0x1
  .L80059CA8:
    /* 4A4A8 80059CA8 06000224 */  addiu      $v0, $zero, 0x6
    /* 4A4AC 80059CAC 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A4B0 80059CB0 21083000 */  addu       $at, $at, $s0
    /* 4A4B4 80059CB4 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A4B8 80059CB8 6C00228E */  lw         $v0, 0x6C($s1)
    /* 4A4BC 80059CBC 00000000 */  nop
    /* 4A4C0 80059CC0 01004290 */  lbu        $v0, 0x1($v0)
    /* 4A4C4 80059CC4 00000000 */  nop
    /* 4A4C8 80059CC8 06004224 */  addiu      $v0, $v0, 0x6
    /* 4A4CC 80059CCC 23105000 */  subu       $v0, $v0, $s0
    /* 4A4D0 80059CD0 FF004330 */  andi       $v1, $v0, 0xFF
    /* 4A4D4 80059CD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4A4D8 80059CD8 C20023A6 */  sh         $v1, 0xC2($s1)
    /* 4A4DC 80059CDC 4400238E */  lw         $v1, 0x44($s1)
    /* 4A4E0 80059CE0 40100200 */  sll        $v0, $v0, 1
    /* 4A4E4 80059CE4 21104300 */  addu       $v0, $v0, $v1
    /* 4A4E8 80059CE8 00004494 */  lhu        $a0, 0x0($v0)
    /* 4A4EC 80059CEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A4F0 80059CF0 3E0020A2 */  sb         $zero, 0x3E($s1)
    /* 4A4F4 80059CF4 3C0020A2 */  sb         $zero, 0x3C($s1)
    /* 4A4F8 80059CF8 720020A2 */  sb         $zero, 0x72($s1)
    /* 4A4FC 80059CFC 21186400 */  addu       $v1, $v1, $a0
    /* 4A500 80059D00 480023AE */  sw         $v1, 0x48($s1)
    /* 4A504 80059D04 6C0023AE */  sw         $v1, 0x6C($s1)
    /* 4A508 80059D08 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4A50C 80059D0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A510 80059D10 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A514 80059D14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A518 80059D18 0800E003 */  jr         $ra
    /* 4A51C 80059D1C 00000000 */   nop
.size func_80059B44, . - func_80059B44
