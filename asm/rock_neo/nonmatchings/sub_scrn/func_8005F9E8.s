.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F9E8
    /* 501E8 8005F9E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 501EC 8005F9EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 501F0 8005F9F0 21808000 */  addu       $s0, $a0, $zero
    /* 501F4 8005F9F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 501F8 8005F9F8 02000382 */  lb         $v1, 0x2($s0)
    /* 501FC 8005F9FC 00000000 */  nop
    /* 50200 8005FA00 05006010 */  beqz       $v1, .L8005FA18
    /* 50204 8005FA04 01000224 */   addiu     $v0, $zero, 0x1
    /* 50208 8005FA08 29006210 */  beq        $v1, $v0, .L8005FAB0
    /* 5020C 8005FA0C 0008033C */   lui       $v1, (0x8000000 >> 16)
    /* 50210 8005FA10 B47E0108 */  j          .L8005FAD0
    /* 50214 8005FA14 00000000 */   nop
  .L8005FA18:
    /* 50218 8005FA18 04000292 */  lbu        $v0, 0x4($s0)
    /* 5021C 8005FA1C 0980013C */  lui        $at, %hi(D_8008DAF4)
    /* 50220 8005FA20 21082200 */  addu       $at, $at, $v0
    /* 50224 8005FA24 F4DA2490 */  lbu        $a0, %lo(D_8008DAF4)($at)
    /* 50228 8005FA28 9676000C */  jal        Sce_flag_test
    /* 5022C 8005FA2C 20058424 */   addiu     $a0, $a0, 0x520
    /* 50230 8005FA30 17004010 */  beqz       $v0, .L8005FA90
    /* 50234 8005FA34 01000524 */   addiu     $a1, $zero, 0x1
    /* 50238 8005FA38 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* 5023C 8005FA3C 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* 50240 8005FA40 00000000 */  nop
    /* 50244 8005FA44 02004230 */  andi       $v0, $v0, 0x2
    /* 50248 8005FA48 05004010 */  beqz       $v0, .L8005FA60
    /* 5024C 8005FA4C 21200000 */   addu      $a0, $zero, $zero
    /* 50250 8005FA50 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50254 8005FA54 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50258 8005FA58 9B7E0108 */  j          .L8005FA6C
    /* 5025C 8005FA5C 3F000624 */   addiu     $a2, $zero, 0x3F
  .L8005FA60:
    /* 50260 8005FA60 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50264 8005FA64 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50268 8005FA68 3E000624 */  addiu      $a2, $zero, 0x3E
  .L8005FA6C:
    /* 5026C 8005FA6C 0B4E010C */  jal        MojiTaskExec
    /* 50270 8005FA70 00000000 */   nop
    /* 50274 8005FA74 0B80033C */  lui        $v1, %hi(Player_work + 0x16B)
    /* 50278 8005FA78 1B536324 */  addiu      $v1, $v1, %lo(Player_work + 0x16B)
    /* 5027C 8005FA7C 00006290 */  lbu        $v0, 0x0($v1)
    /* 50280 8005FA80 00000000 */  nop
    /* 50284 8005FA84 02004238 */  xori       $v0, $v0, 0x2
    /* 50288 8005FA88 A77E0108 */  j          .L8005FA9C
    /* 5028C 8005FA8C 000062A0 */   sb        $v0, 0x0($v1)
  .L8005FA90:
    /* 50290 8005FA90 83000424 */  addiu      $a0, $zero, 0x83
    /* 50294 8005FA94 0268000C */  jal        Sound_call
    /* 50298 8005FA98 21300000 */   addu      $a2, $zero, $zero
  .L8005FA9C:
    /* 5029C 8005FA9C 02000292 */  lbu        $v0, 0x2($s0)
    /* 502A0 8005FAA0 00000000 */  nop
    /* 502A4 8005FAA4 01004224 */  addiu      $v0, $v0, 0x1
    /* 502A8 8005FAA8 B47E0108 */  j          .L8005FAD0
    /* 502AC 8005FAAC 020002A2 */   sb        $v0, 0x2($s0)
  .L8005FAB0:
    /* 502B0 8005FAB0 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 502B4 8005FAB4 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 502B8 8005FAB8 00000000 */  nop
    /* 502BC 8005FABC 24104300 */  and        $v0, $v0, $v1
    /* 502C0 8005FAC0 03004014 */  bnez       $v0, .L8005FAD0
    /* 502C4 8005FAC4 02000224 */   addiu     $v0, $zero, 0x2
    /* 502C8 8005FAC8 010002A2 */  sb         $v0, 0x1($s0)
    /* 502CC 8005FACC 020000A2 */  sb         $zero, 0x2($s0)
  .L8005FAD0:
    /* 502D0 8005FAD0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 502D4 8005FAD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 502D8 8005FAD8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 502DC 8005FADC 0800E003 */  jr         $ra
    /* 502E0 8005FAE0 00000000 */   nop
.size func_8005F9E8, . - func_8005F9E8
