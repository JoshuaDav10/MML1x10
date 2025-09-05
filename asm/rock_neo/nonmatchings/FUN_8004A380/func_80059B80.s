.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059B80
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
.size func_80059B80, . - func_80059B80
