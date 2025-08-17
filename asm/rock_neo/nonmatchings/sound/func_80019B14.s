.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019B14
    /* A314 80019B14 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A318 80019B18 1400BFAF */  sw         $ra, 0x14($sp)
    /* A31C 80019B1C 05008014 */  bnez       $a0, .L80019B34
    /* A320 80019B20 1000B0AF */   sw        $s0, 0x10($sp)
    /* A324 80019B24 0C80033C */  lui        $v1, %hi(Game_work + 0x51)
    /* A328 80019B28 611B6390 */  lbu        $v1, %lo(Game_work + 0x51)($v1)
    /* A32C 80019B2C D0660008 */  j          .L80019B40
    /* A330 80019B30 5555023C */   lui       $v0, (0x55555556 >> 16)
  .L80019B34:
    /* A334 80019B34 0C80033C */  lui        $v1, %hi(D_800C356F)
    /* A338 80019B38 6F356390 */  lbu        $v1, %lo(D_800C356F)($v1)
    /* A33C 80019B3C 5555023C */  lui        $v0, (0x55555556 >> 16)
  .L80019B40:
    /* A340 80019B40 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* A344 80019B44 001E0300 */  sll        $v1, $v1, 24
    /* A348 80019B48 032E0300 */  sra        $a1, $v1, 24
    /* A34C 80019B4C 1800A200 */  mult       $a1, $v0
    /* A350 80019B50 C31F0300 */  sra        $v1, $v1, 31
    /* A354 80019B54 10300000 */  mfhi       $a2
    /* A358 80019B58 2318C300 */  subu       $v1, $a2, $v1
    /* A35C 80019B5C 40100300 */  sll        $v0, $v1, 1
    /* A360 80019B60 21104300 */  addu       $v0, $v0, $v1
    /* A364 80019B64 2310A200 */  subu       $v0, $a1, $v0
    /* A368 80019B68 00160200 */  sll        $v0, $v0, 24
    /* A36C 80019B6C 031E0200 */  sra        $v1, $v0, 24
    /* A370 80019B70 01000224 */  addiu      $v0, $zero, 0x1
    /* A374 80019B74 13006210 */  beq        $v1, $v0, .L80019BC4
    /* A378 80019B78 02006228 */   slti      $v0, $v1, 0x2
    /* A37C 80019B7C 05004010 */  beqz       $v0, .L80019B94
    /* A380 80019B80 00000000 */   nop
    /* A384 80019B84 08006010 */  beqz       $v1, .L80019BA8
    /* A388 80019B88 16060424 */   addiu     $a0, $zero, 0x616
    /* A38C 80019B8C 03670008 */  j          .L80019C0C
    /* A390 80019B90 00000000 */   nop
  .L80019B94:
    /* A394 80019B94 02000224 */  addiu      $v0, $zero, 0x2
    /* A398 80019B98 12006210 */  beq        $v1, $v0, .L80019BE4
    /* A39C 80019B9C 68000424 */   addiu     $a0, $zero, 0x68
    /* A3A0 80019BA0 03670008 */  j          .L80019C0C
    /* A3A4 80019BA4 00000000 */   nop
  .L80019BA8:
    /* A3A8 80019BA8 0880033C */  lui        $v1, %hi(D_80082314)
    /* A3AC 80019BAC 14236324 */  addiu      $v1, $v1, %lo(D_80082314)
    /* A3B0 80019BB0 40100500 */  sll        $v0, $a1, 1
    /* A3B4 80019BB4 9676000C */  jal        Sce_flag_test
    /* A3B8 80019BB8 21804300 */   addu      $s0, $v0, $v1
    /* A3BC 80019BBC FF660008 */  j          .L80019BFC
    /* A3C0 80019BC0 3A000324 */   addiu     $v1, $zero, 0x3A
  .L80019BC4:
    /* A3C4 80019BC4 17060424 */  addiu      $a0, $zero, 0x617
    /* A3C8 80019BC8 0880033C */  lui        $v1, %hi(D_80082314)
    /* A3CC 80019BCC 14236324 */  addiu      $v1, $v1, %lo(D_80082314)
    /* A3D0 80019BD0 40100500 */  sll        $v0, $a1, 1
    /* A3D4 80019BD4 9676000C */  jal        Sce_flag_test
    /* A3D8 80019BD8 21804300 */   addu      $s0, $v0, $v1
    /* A3DC 80019BDC FF660008 */  j          .L80019BFC
    /* A3E0 80019BE0 3B000324 */   addiu     $v1, $zero, 0x3B
  .L80019BE4:
    /* A3E4 80019BE4 0880033C */  lui        $v1, %hi(D_80082314)
    /* A3E8 80019BE8 14236324 */  addiu      $v1, $v1, %lo(D_80082314)
    /* A3EC 80019BEC 40100500 */  sll        $v0, $a1, 1
    /* A3F0 80019BF0 9676000C */  jal        Sce_flag_test
    /* A3F4 80019BF4 21804300 */   addu      $s0, $v0, $v1
    /* A3F8 80019BF8 3C000324 */  addiu      $v1, $zero, 0x3C
  .L80019BFC:
    /* A3FC 80019BFC 02004010 */  beqz       $v0, .L80019C08
    /* A400 80019C00 00000000 */   nop
    /* A404 80019C04 FFFF0334 */  ori        $v1, $zero, 0xFFFF
  .L80019C08:
    /* A408 80019C08 000003A6 */  sh         $v1, 0x0($s0)
  .L80019C0C:
    /* A40C 80019C0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* A410 80019C10 1000B08F */  lw         $s0, 0x10($sp)
    /* A414 80019C14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A418 80019C18 0800E003 */  jr         $ra
    /* A41C 80019C1C 00000000 */   nop
.size func_80019B14, . - func_80019B14
