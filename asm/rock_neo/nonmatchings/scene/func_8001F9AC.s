.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F9AC
    /* 101AC 8001F9AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 101B0 8001F9B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 101B4 8001F9B4 9676000C */  jal        Sce_flag_test
    /* 101B8 8001F9B8 04020424 */   addiu     $a0, $zero, 0x204
    /* 101BC 8001F9BC 05004010 */  beqz       $v0, .L8001F9D4
    /* 101C0 8001F9C0 00000000 */   nop
    /* 101C4 8001F9C4 9676000C */  jal        Sce_flag_test
    /* 101C8 8001F9C8 06020424 */   addiu     $a0, $zero, 0x206
    /* 101CC 8001F9CC 2C004010 */  beqz       $v0, .L8001FA80
    /* 101D0 8001F9D0 4F000224 */   addiu     $v0, $zero, 0x4F
  .L8001F9D4:
    /* 101D4 8001F9D4 9676000C */  jal        Sce_flag_test
    /* 101D8 8001F9D8 12020424 */   addiu     $a0, $zero, 0x212
    /* 101DC 8001F9DC 05004010 */  beqz       $v0, .L8001F9F4
    /* 101E0 8001F9E0 00000000 */   nop
    /* 101E4 8001F9E4 9676000C */  jal        Sce_flag_test
    /* 101E8 8001F9E8 13020424 */   addiu     $a0, $zero, 0x213
    /* 101EC 8001F9EC 24004010 */  beqz       $v0, .L8001FA80
    /* 101F0 8001F9F0 4E000224 */   addiu     $v0, $zero, 0x4E
  .L8001F9F4:
    /* 101F4 8001F9F4 9676000C */  jal        Sce_flag_test
    /* 101F8 8001F9F8 00020424 */   addiu     $a0, $zero, 0x200
    /* 101FC 8001F9FC 20004014 */  bnez       $v0, .L8001FA80
    /* 10200 8001FA00 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 10204 8001FA04 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10208 8001FA08 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 1020C 8001FA0C 00000000 */  nop
    /* 10210 8001FA10 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 10214 8001FA14 19004010 */  beqz       $v0, .L8001FA7C
    /* 10218 8001FA18 80100300 */   sll       $v0, $v1, 2
    /* 1021C 8001FA1C 0180013C */  lui        $at, %hi(jtbl_800108F0)
    /* 10220 8001FA20 21082200 */  addu       $at, $at, $v0
    /* 10224 8001FA24 F008228C */  lw         $v0, %lo(jtbl_800108F0)($at)
    /* 10228 8001FA28 00000000 */  nop
    /* 1022C 8001FA2C 08004000 */  jr         $v0
    /* 10230 8001FA30 00000000 */   nop
  glabel .L8001FA34
    /* 10234 8001FA34 9676000C */  jal        Sce_flag_test
    /* 10238 8001FA38 02000424 */   addiu     $a0, $zero, 0x2
    /* 1023C 8001FA3C 10004010 */  beqz       $v0, .L8001FA80
    /* 10240 8001FA40 4A000224 */   addiu     $v0, $zero, 0x4A
    /* 10244 8001FA44 9676000C */  jal        Sce_flag_test
    /* 10248 8001FA48 01000424 */   addiu     $a0, $zero, 0x1
    /* 1024C 8001FA4C 0C004014 */  bnez       $v0, .L8001FA80
    /* 10250 8001FA50 4A000224 */   addiu     $v0, $zero, 0x4A
    /* 10254 8001FA54 A07E0008 */  j          .L8001FA80
    /* 10258 8001FA58 4B000224 */   addiu     $v0, $zero, 0x4B
  glabel .L8001FA5C
    /* 1025C 8001FA5C A07E0008 */  j          .L8001FA80
    /* 10260 8001FA60 4D000224 */   addiu     $v0, $zero, 0x4D
  glabel .L8001FA64
    /* 10264 8001FA64 A07E0008 */  j          .L8001FA80
    /* 10268 8001FA68 50000224 */   addiu     $v0, $zero, 0x50
  glabel .L8001FA6C
    /* 1026C 8001FA6C A07E0008 */  j          .L8001FA80
    /* 10270 8001FA70 51000224 */   addiu     $v0, $zero, 0x51
  glabel .L8001FA74
    /* 10274 8001FA74 A07E0008 */  j          .L8001FA80
    /* 10278 8001FA78 53000224 */   addiu     $v0, $zero, 0x53
  glabel .L8001FA7C
    /* 1027C 8001FA7C 52000224 */  addiu      $v0, $zero, 0x52
  .L8001FA80:
    /* 10280 8001FA80 7E0982A7 */  sh         $v0, %gp_rel(D_800981E2)($gp)
    /* 10284 8001FA84 1000BF8F */  lw         $ra, 0x10($sp)
    /* 10288 8001FA88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1028C 8001FA8C 0800E003 */  jr         $ra
    /* 10290 8001FA90 00000000 */   nop
.size func_8001F9AC, . - func_8001F9AC
