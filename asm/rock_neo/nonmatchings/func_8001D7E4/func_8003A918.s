.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A918
    /* 2B118 8003A918 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 2B11C 8003A91C FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* 2B120 8003A920 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* 2B124 8003A924 8400BFAF */  sw         $ra, 0x84($sp)
    /* 2B128 8003A928 8000B2AF */  sw         $s2, 0x80($sp)
    /* 2B12C 8003A92C 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* 2B130 8003A930 7800B0AF */  sw         $s0, 0x78($sp)
    /* 2B134 8003A934 0400838C */  lw         $v1, 0x4($a0)
    /* 2B138 8003A938 80000224 */  addiu      $v0, $zero, 0x80
    /* 2B13C 8003A93C 2800A2A3 */  sb         $v0, 0x28($sp)
    /* 2B140 8003A940 2900A2A3 */  sb         $v0, 0x29($sp)
    /* 2B144 8003A944 2A00A2A3 */  sb         $v0, 0x2A($sp)
    /* 2B148 8003A948 02960300 */  srl        $s2, $v1, 24
    /* 2B14C 8003A94C 24806500 */  and        $s0, $v1, $a1
    /* 2B150 8003A950 21104002 */  addu       $v0, $s2, $zero
    /* 2B154 8003A954 AC004010 */  beqz       $v0, .L8003AC08
    /* 2B158 8003A958 FFFF5226 */   addiu     $s2, $s2, -0x1
    /* 2B15C 8003A95C 0C001126 */  addiu      $s1, $s0, 0xC
  .L8003A960:
    /* 2B160 8003A960 0000038E */  lw         $v1, 0x0($s0)
    /* 2B164 8003A964 00000000 */  nop
    /* 2B168 8003A968 40110300 */  sll        $v0, $v1, 5
    /* 2B16C 8003A96C 04004104 */  bgez       $v0, .L8003A980
    /* 2B170 8003A970 3800A427 */   addiu     $a0, $sp, 0x38
    /* 2B174 8003A974 C0110300 */  sll        $v0, $v1, 7
    /* 2B178 8003A978 9E004104 */  bgez       $v0, .L8003ABF4
    /* 2B17C 8003A97C 00000000 */   nop
  .L8003A980:
    /* 2B180 8003A980 4800A527 */  addiu      $a1, $sp, 0x48
    /* 2B184 8003A984 F8FF2D8E */  lw         $t5, -0x8($s1)
    /* 2B188 8003A988 5800A627 */  addiu      $a2, $sp, 0x58
    /* 2B18C 8003A98C 00560D00 */  sll        $t2, $t5, 24
    /* 2B190 8003A990 03560A00 */  sra        $t2, $t2, 24
    /* 2B194 8003A994 005A0D00 */  sll        $t3, $t5, 8
    /* 2B198 8003A998 035E0B00 */  sra        $t3, $t3, 24
    /* 2B19C 8003A99C 03460D00 */  sra        $t0, $t5, 24
    /* 2B1A0 8003A9A0 034A0D00 */  sra        $t1, $t5, 8
    /* 2B1A4 8003A9A4 FF002931 */  andi       $t1, $t1, 0xFF
    /* 2B1A8 8003A9A8 23480900 */  negu       $t1, $t1
    /* 2B1AC 8003A9AC 1800A8A7 */  sh         $t0, 0x18($sp)
    /* 2B1B0 8003A9B0 00440800 */  sll        $t0, $t0, 16
    /* 2B1B4 8003A9B4 03440800 */  sra        $t0, $t0, 16
    /* 2B1B8 8003A9B8 1000AAA7 */  sh         $t2, 0x10($sp)
    /* 2B1BC 8003A9BC 00540A00 */  sll        $t2, $t2, 16
    /* 2B1C0 8003A9C0 03540A00 */  sra        $t2, $t2, 16
    /* 2B1C4 8003A9C4 23400A01 */  subu       $t0, $t0, $t2
    /* 2B1C8 8003A9C8 1400ABA7 */  sh         $t3, 0x14($sp)
    /* 2B1CC 8003A9CC 005C0B00 */  sll        $t3, $t3, 16
    /* 2B1D0 8003A9D0 1200A9A7 */  sh         $t1, 0x12($sp)
    /* 2B1D4 8003A9D4 FCFF2D8E */  lw         $t5, -0x4($s1)
    /* 2B1D8 8003A9D8 035C0B00 */  sra        $t3, $t3, 16
    /* 2B1DC 8003A9DC 00140D00 */  sll        $v0, $t5, 16
    /* 2B1E0 8003A9E0 03160200 */  sra        $v0, $v0, 24
    /* 2B1E4 8003A9E4 001A0D00 */  sll        $v1, $t5, 8
    /* 2B1E8 8003A9E8 031E0300 */  sra        $v1, $v1, 24
    /* 2B1EC 8003A9EC 02660D00 */  srl        $t4, $t5, 24
    /* 2B1F0 8003A9F0 FF00A731 */  andi       $a3, $t5, 0xFF
    /* 2B1F4 8003A9F4 23380700 */  negu       $a3, $a3
    /* 2B1F8 8003A9F8 23600C00 */  negu       $t4, $t4
    /* 2B1FC 8003A9FC 1A00A7A7 */  sh         $a3, 0x1A($sp)
    /* 2B200 8003AA00 2338E900 */  subu       $a3, $a3, $t1
    /* 2B204 8003AA04 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 2B208 8003AA08 00140200 */  sll        $v0, $v0, 16
    /* 2B20C 8003AA0C 03140200 */  sra        $v0, $v0, 16
    /* 2B210 8003AA10 23104B00 */  subu       $v0, $v0, $t3
    /* 2B214 8003AA14 2000A3A7 */  sh         $v1, 0x20($sp)
    /* 2B218 8003AA18 001C0300 */  sll        $v1, $v1, 16
    /* 2B21C 8003AA1C 031C0300 */  sra        $v1, $v1, 16
    /* 2B220 8003AA20 23186A00 */  subu       $v1, $v1, $t2
    /* 2B224 8003AA24 2200ACA7 */  sh         $t4, 0x22($sp)
    /* 2B228 8003AA28 00002D8E */  lw         $t5, 0x0($s1)
    /* 2B22C 8003AA2C 23608901 */  subu       $t4, $t4, $t1
    /* 2B230 8003AA30 3800A8AF */  sw         $t0, 0x38($sp)
    /* 2B234 8003AA34 3C00A7AF */  sw         $a3, 0x3C($sp)
    /* 2B238 8003AA38 4000A2AF */  sw         $v0, 0x40($sp)
    /* 2B23C 8003AA3C 4800A3AF */  sw         $v1, 0x48($sp)
    /* 2B240 8003AA40 4C00ACAF */  sw         $t4, 0x4C($sp)
    /* 2B244 8003AA44 00160D00 */  sll        $v0, $t5, 24
    /* 2B248 8003AA48 03160200 */  sra        $v0, $v0, 24
    /* 2B24C 8003AA4C 2400A2A7 */  sh         $v0, 0x24($sp)
    /* 2B250 8003AA50 00140200 */  sll        $v0, $v0, 16
    /* 2B254 8003AA54 03140200 */  sra        $v0, $v0, 16
    /* 2B258 8003AA58 23104B00 */  subu       $v0, $v0, $t3
    /* 2B25C 8003AA5C 31ED010C */  jal        OuterProduct0
    /* 2B260 8003AA60 5000A2AF */   sw        $v0, 0x50($sp)
    /* 2B264 8003AA64 5800A28F */  lw         $v0, 0x58($sp)
    /* 2B268 8003AA68 5C00A38F */  lw         $v1, 0x5C($sp)
    /* 2B26C 8003AA6C 02004104 */  bgez       $v0, .L8003AA78
    /* 2B270 8003AA70 21204000 */   addu      $a0, $v0, $zero
    /* 2B274 8003AA74 23200400 */  negu       $a0, $a0
  .L8003AA78:
    /* 2B278 8003AA78 05006004 */  bltz       $v1, .L8003AA90
    /* 2B27C 8003AA7C 2A106400 */   slt       $v0, $v1, $a0
    /* 2B280 8003AA80 0B004010 */  beqz       $v0, .L8003AAB0
    /* 2B284 8003AA84 00000000 */   nop
    /* 2B288 8003AA88 A8EA0008 */  j          .L8003AAA0
    /* 2B28C 8003AA8C 00000000 */   nop
  .L8003AA90:
    /* 2B290 8003AA90 23100300 */  negu       $v0, $v1
    /* 2B294 8003AA94 2A104400 */  slt        $v0, $v0, $a0
    /* 2B298 8003AA98 04004010 */  beqz       $v0, .L8003AAAC
    /* 2B29C 8003AA9C 00000000 */   nop
  .L8003AAA0:
    /* 2B2A0 8003AAA0 5800A38F */  lw         $v1, 0x58($sp)
    /* 2B2A4 8003AAA4 ACEA0008 */  j          .L8003AAB0
    /* 2B2A8 8003AAA8 00000000 */   nop
  .L8003AAAC:
    /* 2B2AC 8003AAAC 5C00A38F */  lw         $v1, 0x5C($sp)
  .L8003AAB0:
    /* 2B2B0 8003AAB0 00000000 */  nop
    /* 2B2B4 8003AAB4 02006104 */  bgez       $v1, .L8003AAC0
    /* 2B2B8 8003AAB8 00000000 */   nop
    /* 2B2BC 8003AABC 23180300 */  negu       $v1, $v1
  .L8003AAC0:
    /* 2B2C0 8003AAC0 6000A28F */  lw         $v0, 0x60($sp)
    /* 2B2C4 8003AAC4 00000000 */  nop
    /* 2B2C8 8003AAC8 06004004 */  bltz       $v0, .L8003AAE4
    /* 2B2CC 8003AACC 00000000 */   nop
    /* 2B2D0 8003AAD0 2A104300 */  slt        $v0, $v0, $v1
    /* 2B2D4 8003AAD4 1C004010 */  beqz       $v0, .L8003AB48
    /* 2B2D8 8003AAD8 00000000 */   nop
    /* 2B2DC 8003AADC BDEA0008 */  j          .L8003AAF4
    /* 2B2E0 8003AAE0 00000000 */   nop
  .L8003AAE4:
    /* 2B2E4 8003AAE4 23100200 */  negu       $v0, $v0
    /* 2B2E8 8003AAE8 2A104300 */  slt        $v0, $v0, $v1
    /* 2B2EC 8003AAEC 16004010 */  beqz       $v0, .L8003AB48
    /* 2B2F0 8003AAF0 00000000 */   nop
  .L8003AAF4:
    /* 2B2F4 8003AAF4 5800A28F */  lw         $v0, 0x58($sp)
    /* 2B2F8 8003AAF8 5C00A38F */  lw         $v1, 0x5C($sp)
    /* 2B2FC 8003AAFC 02004104 */  bgez       $v0, .L8003AB08
    /* 2B300 8003AB00 21204000 */   addu      $a0, $v0, $zero
    /* 2B304 8003AB04 23200400 */  negu       $a0, $a0
  .L8003AB08:
    /* 2B308 8003AB08 05006004 */  bltz       $v1, .L8003AB20
    /* 2B30C 8003AB0C 2A106400 */   slt       $v0, $v1, $a0
    /* 2B310 8003AB10 0E004010 */  beqz       $v0, .L8003AB4C
    /* 2B314 8003AB14 00000000 */   nop
    /* 2B318 8003AB18 CCEA0008 */  j          .L8003AB30
    /* 2B31C 8003AB1C 00000000 */   nop
  .L8003AB20:
    /* 2B320 8003AB20 23100300 */  negu       $v0, $v1
    /* 2B324 8003AB24 2A104400 */  slt        $v0, $v0, $a0
    /* 2B328 8003AB28 04004010 */  beqz       $v0, .L8003AB3C
    /* 2B32C 8003AB2C 00000000 */   nop
  .L8003AB30:
    /* 2B330 8003AB30 5800A38F */  lw         $v1, 0x58($sp)
    /* 2B334 8003AB34 D3EA0008 */  j          .L8003AB4C
    /* 2B338 8003AB38 00000000 */   nop
  .L8003AB3C:
    /* 2B33C 8003AB3C 5C00A38F */  lw         $v1, 0x5C($sp)
    /* 2B340 8003AB40 D3EA0008 */  j          .L8003AB4C
    /* 2B344 8003AB44 00000000 */   nop
  .L8003AB48:
    /* 2B348 8003AB48 6000A38F */  lw         $v1, 0x60($sp)
  .L8003AB4C:
    /* 2B34C 8003AB4C 00000000 */  nop
    /* 2B350 8003AB50 03006104 */  bgez       $v1, .L8003AB60
    /* 2B354 8003AB54 83686228 */   slti      $v0, $v1, 0x6883
    /* 2B358 8003AB58 23180300 */  negu       $v1, $v1
    /* 2B35C 8003AB5C 83686228 */  slti       $v0, $v1, 0x6883
  .L8003AB60:
    /* 2B360 8003AB60 05004014 */  bnez       $v0, .L8003AB78
    /* 2B364 8003AB64 21300000 */   addu      $a2, $zero, $zero
  .L8003AB68:
    /* 2B368 8003AB68 43180300 */  sra        $v1, $v1, 1
    /* 2B36C 8003AB6C 83686228 */  slti       $v0, $v1, 0x6883
    /* 2B370 8003AB70 FDFF4010 */  beqz       $v0, .L8003AB68
    /* 2B374 8003AB74 0100C624 */   addiu     $a2, $a2, 0x1
  .L8003AB78:
    /* 2B378 8003AB78 6800A427 */  addiu      $a0, $sp, 0x68
    /* 2B37C 8003AB7C 3800A527 */  addiu      $a1, $sp, 0x38
    /* 2B380 8003AB80 5800A28F */  lw         $v0, 0x58($sp)
    /* 2B384 8003AB84 6000A38F */  lw         $v1, 0x60($sp)
    /* 2B388 8003AB88 0710C200 */  srav       $v0, $v0, $a2
    /* 2B38C 8003AB8C 6800A2AF */  sw         $v0, 0x68($sp)
    /* 2B390 8003AB90 5C00A28F */  lw         $v0, 0x5C($sp)
    /* 2B394 8003AB94 0718C300 */  srav       $v1, $v1, $a2
    /* 2B398 8003AB98 7000A3AF */  sw         $v1, 0x70($sp)
    /* 2B39C 8003AB9C 0710C200 */  srav       $v0, $v0, $a2
    /* 2B3A0 8003ABA0 AAE9010C */  jal        VectorNormal
    /* 2B3A4 8003ABA4 6C00A2AF */   sw        $v0, 0x6C($sp)
    /* 2B3A8 8003ABA8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B3AC 8003ABAC 2800A527 */  addiu      $a1, $sp, 0x28
    /* 2B3B0 8003ABB0 3800A28F */  lw         $v0, 0x38($sp)
    /* 2B3B4 8003ABB4 3C00A38F */  lw         $v1, 0x3C($sp)
    /* 2B3B8 8003ABB8 4000A78F */  lw         $a3, 0x40($sp)
    /* 2B3BC 8003ABBC 3000A627 */  addiu      $a2, $sp, 0x30
    /* 2B3C0 8003ABC0 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 2B3C4 8003ABC4 1200A3A7 */  sh         $v1, 0x12($sp)
    /* 2B3C8 8003ABC8 93EC010C */  jal        NormalColorCol
    /* 2B3CC 8003ABCC 1400A7A7 */   sh        $a3, 0x14($sp)
    /* 2B3D0 8003ABD0 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* 2B3D4 8003ABD4 3000A48F */  lw         $a0, 0x30($sp)
    /* 2B3D8 8003ABD8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 2B3DC 8003ABDC 24208200 */  and        $a0, $a0, $v0
    /* 2B3E0 8003ABE0 0000028E */  lw         $v0, 0x0($s0)
    /* 2B3E4 8003ABE4 00FF033C */  lui        $v1, (0xFF000000 >> 16)
    /* 2B3E8 8003ABE8 24104300 */  and        $v0, $v0, $v1
    /* 2B3EC 8003ABEC 25208200 */  or         $a0, $a0, $v0
    /* 2B3F0 8003ABF0 000004AE */  sw         $a0, 0x0($s0)
  .L8003ABF4:
    /* 2B3F4 8003ABF4 10003126 */  addiu      $s1, $s1, 0x10
    /* 2B3F8 8003ABF8 10001026 */  addiu      $s0, $s0, 0x10
    /* 2B3FC 8003ABFC 21104002 */  addu       $v0, $s2, $zero
    /* 2B400 8003AC00 57FF4014 */  bnez       $v0, .L8003A960
    /* 2B404 8003AC04 FFFF5226 */   addiu     $s2, $s2, -0x1
  .L8003AC08:
    /* 2B408 8003AC08 8400BF8F */  lw         $ra, 0x84($sp)
    /* 2B40C 8003AC0C 8000B28F */  lw         $s2, 0x80($sp)
    /* 2B410 8003AC10 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 2B414 8003AC14 7800B08F */  lw         $s0, 0x78($sp)
    /* 2B418 8003AC18 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 2B41C 8003AC1C 0800E003 */  jr         $ra
    /* 2B420 8003AC20 00000000 */   nop
.size func_8003A918, . - func_8003A918
