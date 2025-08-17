.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B140
    /* 2B940 8003B140 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2B944 8003B144 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2B948 8003B148 11EF000C */  jal        func_8003BC44
    /* 2B94C 8003B14C 00000000 */   nop
    /* 2B950 8003B150 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* 2B954 8003B154 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* 2B958 8003B158 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2B95C 8003B15C 21082200 */  addu       $at, $at, $v0
    /* 2B960 8003B160 049F2380 */  lb         $v1, %lo(D_80089F04)($at)
    /* 2B964 8003B164 00000000 */  nop
    /* 2B968 8003B168 3F006004 */  bltz       $v1, .L8003B268
    /* 2B96C 8003B16C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2B970 8003B170 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B974 8003B174 08C022AC */  sw         $v0, %lo(D_8015C008)($at)
    /* 2B978 8003B178 401A0300 */  sll        $v1, $v1, 9
    /* 2B97C 8003B17C 0C80023C */  lui        $v0, %hi(D_800BD3B8)
    /* 2B980 8003B180 B8D34224 */  addiu      $v0, $v0, %lo(D_800BD3B8)
    /* 2B984 8003B184 21186200 */  addu       $v1, $v1, $v0
    /* 2B988 8003B188 21480000 */  addu       $t1, $zero, $zero
    /* 2B98C 8003B18C FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
    /* 2B990 8003B190 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
    /* 2B994 8003B194 00F00C3C */  lui        $t4, (0xF0000000 >> 16)
    /* 2B998 8003B198 03000B24 */  addiu      $t3, $zero, 0x3
    /* 2B99C 8003B19C 03110900 */  sra        $v0, $t1, 4
  .L8003B1A0:
    /* 2B9A0 8003B1A0 80100200 */  sll        $v0, $v0, 2
    /* 2B9A4 8003B1A4 21104300 */  addu       $v0, $v0, $v1
    /* 2B9A8 8003B1A8 0000468C */  lw         $a2, 0x0($v0)
    /* 2B9AC 8003B1AC 21400000 */  addu       $t0, $zero, $zero
    /* 2B9B0 8003B1B0 21380000 */  addu       $a3, $zero, $zero
  .L8003B1B4:
    /* 2B9B4 8003B1B4 21202801 */  addu       $a0, $t1, $t0
    /* 2B9B8 8003B1B8 40100400 */  sll        $v0, $a0, 1
    /* 2B9BC 8003B1BC 21104400 */  addu       $v0, $v0, $a0
    /* 2B9C0 8003B1C0 80280200 */  sll        $a1, $v0, 2
    /* 2B9C4 8003B1C4 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B9C8 8003B1C8 2108A100 */  addu       $at, $a1, $at
    /* 2B9CC 8003B1CC 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2B9D0 8003B1D0 00000000 */  nop
    /* 2B9D4 8003B1D4 24004010 */  beqz       $v0, .L8003B268
    /* 2B9D8 8003B1D8 00000000 */   nop
    /* 2B9DC 8003B1DC 14008010 */  beqz       $a0, .L8003B230
    /* 2B9E0 8003B1E0 00000000 */   nop
    /* 2B9E4 8003B1E4 1800428C */  lw         $v0, 0x18($v0)
    /* 2B9E8 8003B1E8 00000000 */  nop
    /* 2B9EC 8003B1EC 24104A00 */  and        $v0, $v0, $t2
    /* 2B9F0 8003B1F0 0000428C */  lw         $v0, 0x0($v0)
    /* 2B9F4 8003B1F4 00000000 */  nop
    /* 2B9F8 8003B1F8 24104C00 */  and        $v0, $v0, $t4
    /* 2B9FC 8003B1FC 03004014 */  bnez       $v0, .L8003B20C
    /* 2BA00 8003B200 0410EB00 */   sllv      $v0, $t3, $a3
    /* 2BA04 8003B204 8CEC0008 */  j          .L8003B230
    /* 2BA08 8003B208 2530C200 */   or        $a2, $a2, $v0
  .L8003B20C:
    /* 2BA0C 8003B20C 1680013C */  lui        $at, %hi(D_8015C006)
    /* 2BA10 8003B210 2108A100 */  addu       $at, $a1, $at
    /* 2BA14 8003B214 06C02294 */  lhu        $v0, %lo(D_8015C006)($at)
    /* 2BA18 8003B218 00000000 */  nop
    /* 2BA1C 8003B21C FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 2BA20 8003B220 03004014 */  bnez       $v0, .L8003B230
    /* 2BA24 8003B224 0410EB00 */   sllv      $v0, $t3, $a3
    /* 2BA28 8003B228 27100200 */  nor        $v0, $zero, $v0
    /* 2BA2C 8003B22C 2430C200 */  and        $a2, $a2, $v0
  .L8003B230:
    /* 2BA30 8003B230 01000825 */  addiu      $t0, $t0, 0x1
    /* 2BA34 8003B234 10000229 */  slti       $v0, $t0, 0x10
    /* 2BA38 8003B238 DEFF4014 */  bnez       $v0, .L8003B1B4
    /* 2BA3C 8003B23C 0200E724 */   addiu     $a3, $a3, 0x2
    /* 2BA40 8003B240 03110900 */  sra        $v0, $t1, 4
    /* 2BA44 8003B244 80100200 */  sll        $v0, $v0, 2
    /* 2BA48 8003B248 21104300 */  addu       $v0, $v0, $v1
    /* 2BA4C 8003B24C 000046AC */  sw         $a2, 0x0($v0)
    /* 2BA50 8003B250 10002925 */  addiu      $t1, $t1, 0x10
    /* 2BA54 8003B254 00082229 */  slti       $v0, $t1, 0x800
    /* 2BA58 8003B258 D1FF4014 */  bnez       $v0, .L8003B1A0
    /* 2BA5C 8003B25C 03110900 */   sra       $v0, $t1, 4
    /* 2BA60 8003B260 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2BA64 8003B264 08C020AC */  sw         $zero, %lo(D_8015C008)($at)
  .L8003B268:
    /* 2BA68 8003B268 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2BA6C 8003B26C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2BA70 8003B270 0800E003 */  jr         $ra
    /* 2BA74 8003B274 00000000 */   nop
.size func_8003B140, . - func_8003B140
