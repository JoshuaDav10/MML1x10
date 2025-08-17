.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E20C
    /* EA0C 8001E20C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EA10 8001E210 1400B1AF */  sw         $s1, 0x14($sp)
    /* EA14 8001E214 21888000 */  addu       $s1, $a0, $zero
    /* EA18 8001E218 00260400 */  sll        $a0, $a0, 24
    /* EA1C 8001E21C 03260400 */  sra        $a0, $a0, 24
    /* EA20 8001E220 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* EA24 8001E224 0A80033C */  lui        $v1, %hi(D_800988E8)
    /* EA28 8001E228 E888638C */  lw         $v1, %lo(D_800988E8)($v1)
    /* EA2C 8001E22C 06108200 */  srlv       $v0, $v0, $a0
    /* EA30 8001E230 1800BFAF */  sw         $ra, 0x18($sp)
    /* EA34 8001E234 24186200 */  and        $v1, $v1, $v0
    /* EA38 8001E238 4F006010 */  beqz       $v1, .L8001E378
    /* EA3C 8001E23C 1000B0AF */   sw        $s0, 0x10($sp)
    /* EA40 8001E240 80100400 */  sll        $v0, $a0, 2
    /* EA44 8001E244 0B80013C */  lui        $at, %hi(D_800ACD40)
    /* EA48 8001E248 21082200 */  addu       $at, $at, $v0
    /* EA4C 8001E24C 40CD308C */  lw         $s0, %lo(D_800ACD40)($at)
    /* EA50 8001E250 00000000 */  nop
    /* EA54 8001E254 01000492 */  lbu        $a0, 0x1($s0)
    /* EA58 8001E258 9DBF000C */  jal        func_8002FE74
    /* EA5C 8001E25C 00000000 */   nop
    /* EA60 8001E260 21184000 */  addu       $v1, $v0, $zero
    /* EA64 8001E264 40000224 */  addiu      $v0, $zero, 0x40
    /* EA68 8001E268 0E006210 */  beq        $v1, $v0, .L8001E2A4
    /* EA6C 8001E26C 41006228 */   slti      $v0, $v1, 0x41
    /* EA70 8001E270 05004010 */  beqz       $v0, .L8001E288
    /* EA74 8001E274 20000224 */   addiu     $v0, $zero, 0x20
    /* EA78 8001E278 15006210 */  beq        $v1, $v0, .L8001E2D0
    /* EA7C 8001E27C 10000224 */   addiu     $v0, $zero, 0x10
    /* EA80 8001E280 D7780008 */  j          .L8001E35C
    /* EA84 8001E284 0080023C */   lui       $v0, (0x80000000 >> 16)
  .L8001E288:
    /* EA88 8001E288 60000224 */  addiu      $v0, $zero, 0x60
    /* EA8C 8001E28C 21006210 */  beq        $v1, $v0, .L8001E314
    /* EA90 8001E290 E0000224 */   addiu     $v0, $zero, 0xE0
    /* EA94 8001E294 26006210 */  beq        $v1, $v0, .L8001E330
    /* EA98 8001E298 02000224 */   addiu     $v0, $zero, 0x2
    /* EA9C 8001E29C D7780008 */  j          .L8001E35C
    /* EAA0 8001E2A0 0080023C */   lui       $v0, (0x80000000 >> 16)
  .L8001E2A4:
    /* EAA4 8001E2A4 02000392 */  lbu        $v1, 0x2($s0)
    /* EAA8 8001E2A8 02000224 */  addiu      $v0, $zero, 0x2
    /* EAAC 8001E2AC 080002A2 */  sb         $v0, 0x8($s0)
    /* EAB0 8001E2B0 801F023C */  lui        $v0, (0x1F80005C >> 16)
    /* EAB4 8001E2B4 5C00428C */  lw         $v0, (0x1F80005C & 0xFFFF)($v0)
    /* EAB8 8001E2B8 80180300 */  sll        $v1, $v1, 2
    /* EABC 8001E2BC 21186200 */  addu       $v1, $v1, $v0
    /* EAC0 8001E2C0 04000292 */  lbu        $v0, 0x4($s0)
    /* EAC4 8001E2C4 0000638C */  lw         $v1, 0x0($v1)
    /* EAC8 8001E2C8 D1780008 */  j          .L8001E344
    /* EACC 8001E2CC 80100200 */   sll       $v0, $v0, 2
  .L8001E2D0:
    /* EAD0 8001E2D0 02000392 */  lbu        $v1, 0x2($s0)
    /* EAD4 8001E2D4 00000000 */  nop
    /* EAD8 8001E2D8 0A006210 */  beq        $v1, $v0, .L8001E304
    /* EADC 8001E2DC 02000224 */   addiu     $v0, $zero, 0x2
    /* EAE0 8001E2E0 080002A2 */  sb         $v0, 0x8($s0)
    /* EAE4 8001E2E4 801F023C */  lui        $v0, (0x1F800058 >> 16)
    /* EAE8 8001E2E8 5800428C */  lw         $v0, (0x1F800058 & 0xFFFF)($v0)
    /* EAEC 8001E2EC 80180300 */  sll        $v1, $v1, 2
    /* EAF0 8001E2F0 21186200 */  addu       $v1, $v1, $v0
    /* EAF4 8001E2F4 04000292 */  lbu        $v0, 0x4($s0)
    /* EAF8 8001E2F8 0000638C */  lw         $v1, 0x0($v1)
    /* EAFC 8001E2FC D1780008 */  j          .L8001E344
    /* EB00 8001E300 80100200 */   sll       $v0, $v0, 2
  .L8001E304:
    /* EB04 8001E304 09C6000C */  jal        func_80031824
    /* EB08 8001E308 21200002 */   addu      $a0, $s0, $zero
    /* EB0C 8001E30C D7780008 */  j          .L8001E35C
    /* EB10 8001E310 0080023C */   lui       $v0, (0x80000000 >> 16)
  .L8001E314:
    /* EB14 8001E314 02000224 */  addiu      $v0, $zero, 0x2
    /* EB18 8001E318 080002A2 */  sb         $v0, 0x8($s0)
    /* EB1C 8001E31C 02000292 */  lbu        $v0, 0x2($s0)
    /* EB20 8001E320 801F033C */  lui        $v1, (0x1F800060 >> 16)
    /* EB24 8001E324 6000638C */  lw         $v1, (0x1F800060 & 0xFFFF)($v1)
    /* EB28 8001E328 D1780008 */  j          .L8001E344
    /* EB2C 8001E32C 80100200 */   sll       $v0, $v0, 2
  .L8001E330:
    /* EB30 8001E330 080002A2 */  sb         $v0, 0x8($s0)
    /* EB34 8001E334 02000292 */  lbu        $v0, 0x2($s0)
    /* EB38 8001E338 801F033C */  lui        $v1, (0x1F80006C >> 16)
    /* EB3C 8001E33C 6C00638C */  lw         $v1, (0x1F80006C & 0xFFFF)($v1)
    /* EB40 8001E340 80100200 */  sll        $v0, $v0, 2
  .L8001E344:
    /* EB44 8001E344 21104300 */  addu       $v0, $v0, $v1
    /* EB48 8001E348 0000428C */  lw         $v0, 0x0($v0)
    /* EB4C 8001E34C 00000000 */  nop
    /* EB50 8001E350 09F84000 */  jalr       $v0
    /* EB54 8001E354 21200002 */   addu      $a0, $s0, $zero
    /* EB58 8001E358 0080023C */  lui        $v0, (0x80000000 >> 16)
  .L8001E35C:
    /* EB5C 8001E35C 06102202 */  srlv       $v0, $v0, $s1
    /* EB60 8001E360 0A80033C */  lui        $v1, %hi(D_800988E8)
    /* EB64 8001E364 E888638C */  lw         $v1, %lo(D_800988E8)($v1)
    /* EB68 8001E368 27100200 */  nor        $v0, $zero, $v0
    /* EB6C 8001E36C 24186200 */  and        $v1, $v1, $v0
    /* EB70 8001E370 0A80013C */  lui        $at, %hi(D_800988E8)
    /* EB74 8001E374 E88823AC */  sw         $v1, %lo(D_800988E8)($at)
  .L8001E378:
    /* EB78 8001E378 1800BF8F */  lw         $ra, 0x18($sp)
    /* EB7C 8001E37C 1400B18F */  lw         $s1, 0x14($sp)
    /* EB80 8001E380 1000B08F */  lw         $s0, 0x10($sp)
    /* EB84 8001E384 2000BD27 */  addiu      $sp, $sp, 0x20
    /* EB88 8001E388 0800E003 */  jr         $ra
    /* EB8C 8001E38C 00000000 */   nop
.size func_8001E20C, . - func_8001E20C
