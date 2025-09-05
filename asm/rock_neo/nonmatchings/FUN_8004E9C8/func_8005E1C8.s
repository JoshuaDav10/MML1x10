.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E1C8
    /* 4E9C8 8005E1C8 9FD12290 */  lbu        $v0, -0x2E61($at)
    /* 4E9CC 8005E1CC FFFF8434 */  ori        $a0, $a0, 0xFFFF
    /* 4E9D0 8005E1D0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 4E9D4 8005E1D4 24000226 */  addiu      $v0, $s0, 0x24
    /* 4E9D8 8005E1D8 0000C2AE */  sw         $v0, 0x0($s6)
    /* 4E9DC 8005E1DC 0008023C */  lui        $v0, (0x8000000 >> 16)
    /* 4E9E0 8005E1E0 000002AE */  sw         $v0, 0x0($s0)
    /* 4E9E4 8005E1E4 300F838F */  lw         $v1, %gp_rel(D_80098794)($gp)
    /* 4E9E8 8005E1E8 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 4E9EC 8005E1EC 0C0002AE */  sw         $v0, 0xC($s0)
    /* 4E9F0 8005E1F0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4E9F4 8005E1F4 040004AE */  sw         $a0, 0x4($s0)
    /* 4E9F8 8005E1F8 140002AE */  sw         $v0, 0x14($s0)
    /* 4E9FC 8005E1FC 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 4EA00 8005E200 0B80023C */  lui        $v0, %hi(Player_work + 0x14)
    /* 4EA04 8005E204 C4514284 */  lh         $v0, %lo(Player_work + 0x14)($v0)
    /* 4EA08 8005E208 40200300 */  sll        $a0, $v1, 1
    /* 4EA0C 8005E20C 21208300 */  addu       $a0, $a0, $v1
    /* 4EA10 8005E210 80200400 */  sll        $a0, $a0, 2
    /* 4EA14 8005E214 0980013C */  lui        $at, %hi(D_8008D1A4)
    /* 4EA18 8005E218 21082400 */  addu       $at, $at, $a0
    /* 4EA1C 8005E21C A4D12384 */  lh         $v1, %lo(D_8008D1A4)($at)
    /* 4EA20 8005E220 D007858F */  lw         $a1, %gp_rel(D_80098034)($gp)
    /* 4EA24 8005E224 23104300 */  subu       $v0, $v0, $v1
    /* 4EA28 8005E228 0000E386 */  lh         $v1, 0x0($s7)
    /* 4EA2C 8005E22C 43120200 */  sra        $v0, $v0, 9
    /* 4EA30 8005E230 23104300 */  subu       $v0, $v0, $v1
    /* 4EA34 8005E234 18004500 */  mult       $v0, $a1
    /* 4EA38 8005E238 FF00153C */  lui        $s5, (0xFFFFFF >> 16)
    /* 4EA3C 8005E23C 0B80023C */  lui        $v0, %hi(Player_work + 0x18)
    /* 4EA40 8005E240 C8514284 */  lh         $v0, %lo(Player_work + 0x18)($v0)
    /* 4EA44 8005E244 0980013C */  lui        $at, %hi(D_8008D1A6)
    /* 4EA48 8005E248 21082400 */  addu       $at, $at, $a0
    /* 4EA4C 8005E24C A6D12384 */  lh         $v1, %lo(D_8008D1A6)($at)
    /* 4EA50 8005E250 FFFFB536 */  ori        $s5, $s5, (0xFFFFFF & 0xFFFF)
    /* 4EA54 8005E254 23104300 */  subu       $v0, $v0, $v1
    /* 4EA58 8005E258 0200E386 */  lh         $v1, 0x2($s7)
    /* 4EA5C 8005E25C 12300000 */  mflo       $a2
    /* 4EA60 8005E260 43120200 */  sra        $v0, $v0, 9
    /* 4EA64 8005E264 23104300 */  subu       $v0, $v0, $v1
    /* 4EA68 8005E268 18004500 */  mult       $v0, $a1
    /* 4EA6C 8005E26C 0B80113C */  lui        $s1, %hi(Player_work + 0x56)
    /* 4EA70 8005E270 06523186 */  lh         $s1, %lo(Player_work + 0x56)($s1)
    /* 4EA74 8005E274 1800AD8F */  lw         $t5, 0x18($sp)
    /* 4EA78 8005E278 23881100 */  negu       $s1, $s1
    /* 4EA7C 8005E27C C0FF3426 */  addiu      $s4, $s1, -0x40
    /* 4EA80 8005E280 0000B285 */  lh         $s2, 0x0($t5)
    /* 4EA84 8005E284 0200B385 */  lh         $s3, 0x2($t5)
    /* 4EA88 8005E288 21208002 */  addu       $a0, $s4, $zero
    /* 4EA8C 8005E28C 21904602 */  addu       $s2, $s2, $a2
    /* 4EA90 8005E290 42280500 */  srl        $a1, $a1, 1
    /* 4EA94 8005E294 21904502 */  addu       $s2, $s2, $a1
    /* 4EA98 8005E298 12180000 */  mflo       $v1
    /* 4EA9C 8005E29C 23986302 */  subu       $s3, $s3, $v1
    /* 4EAA0 8005E2A0 18E8010C */  jal        rsin
    /* 4EAA4 8005E2A4 23986502 */   subu      $s3, $s3, $a1
    /* 4EAA8 8005E2A8 21208002 */  addu       $a0, $s4, $zero
    /* 4EAAC 8005E2AC 40180200 */  sll        $v1, $v0, 1
    /* 4EAB0 8005E2B0 21186200 */  addu       $v1, $v1, $v0
    /* 4EAB4 8005E2B4 40180300 */  sll        $v1, $v1, 1
    /* 4EAB8 8005E2B8 00086324 */  addiu      $v1, $v1, 0x800
    /* 4EABC 8005E2BC 031B0300 */  sra        $v1, $v1, 12
    /* 4EAC0 8005E2C0 21187200 */  addu       $v1, $v1, $s2
    /* 4EAC4 8005E2C4 4BE8010C */  jal        rcos
    /* 4EAC8 8005E2C8 080003A6 */   sh        $v1, 0x8($s0)
    /* 4EACC 8005E2CC 40003426 */  addiu      $s4, $s1, 0x40
    /* 4EAD0 8005E2D0 21208002 */  addu       $a0, $s4, $zero
    /* 4EAD4 8005E2D4 40180200 */  sll        $v1, $v0, 1
    /* 4EAD8 8005E2D8 21186200 */  addu       $v1, $v1, $v0
    /* 4EADC 8005E2DC 40180300 */  sll        $v1, $v1, 1
    /* 4EAE0 8005E2E0 00086324 */  addiu      $v1, $v1, 0x800
    /* 4EAE4 8005E2E4 031B0300 */  sra        $v1, $v1, 12
    /* 4EAE8 8005E2E8 21187300 */  addu       $v1, $v1, $s3
    /* 4EAEC 8005E2EC 18E8010C */  jal        rsin
    /* 4EAF0 8005E2F0 0A0003A6 */   sh        $v1, 0xA($s0)
    /* 4EAF4 8005E2F4 21208002 */  addu       $a0, $s4, $zero
    /* 4EAF8 8005E2F8 40180200 */  sll        $v1, $v0, 1
    /* 4EAFC 8005E2FC 21186200 */  addu       $v1, $v1, $v0
    /* 4EB00 8005E300 40180300 */  sll        $v1, $v1, 1
    /* 4EB04 8005E304 00086324 */  addiu      $v1, $v1, 0x800
    /* 4EB08 8005E308 031B0300 */  sra        $v1, $v1, 12
    /* 4EB0C 8005E30C 21187200 */  addu       $v1, $v1, $s2
    /* 4EB10 8005E310 4BE8010C */  jal        rcos
    /* 4EB14 8005E314 100003A6 */   sh        $v1, 0x10($s0)
    /* 4EB18 8005E318 00063426 */  addiu      $s4, $s1, 0x600
    /* 4EB1C 8005E31C 21208002 */  addu       $a0, $s4, $zero
    /* 4EB20 8005E320 40180200 */  sll        $v1, $v0, 1
    /* 4EB24 8005E324 21186200 */  addu       $v1, $v1, $v0
    /* 4EB28 8005E328 40180300 */  sll        $v1, $v1, 1
    /* 4EB2C 8005E32C 00086324 */  addiu      $v1, $v1, 0x800
    /* 4EB30 8005E330 031B0300 */  sra        $v1, $v1, 12
    /* 4EB34 8005E334 21187300 */  addu       $v1, $v1, $s3
    /* 4EB38 8005E338 18E8010C */  jal        rsin
    /* 4EB3C 8005E33C 120003A6 */   sh        $v1, 0x12($s0)
    /* 4EB40 8005E340 21208002 */  addu       $a0, $s4, $zero
    /* 4EB44 8005E344 80100200 */  sll        $v0, $v0, 2
    /* 4EB48 8005E348 00084224 */  addiu      $v0, $v0, 0x800
    /* 4EB4C 8005E34C 03130200 */  sra        $v0, $v0, 12
    /* 4EB50 8005E350 21105200 */  addu       $v0, $v0, $s2
    /* 4EB54 8005E354 4BE8010C */  jal        rcos
    /* 4EB58 8005E358 180002A6 */   sh        $v0, 0x18($s0)
    /* 4EB5C 8005E35C 00FA3126 */  addiu      $s1, $s1, -0x600
    /* 4EB60 8005E360 21202002 */  addu       $a0, $s1, $zero
    /* 4EB64 8005E364 80100200 */  sll        $v0, $v0, 2
    /* 4EB68 8005E368 00084224 */  addiu      $v0, $v0, 0x800
    /* 4EB6C 8005E36C 03130200 */  sra        $v0, $v0, 12
    /* 4EB70 8005E370 21105300 */  addu       $v0, $v0, $s3
    /* 4EB74 8005E374 18E8010C */  jal        rsin
    /* 4EB78 8005E378 1A0002A6 */   sh        $v0, 0x1A($s0)
    /* 4EB7C 8005E37C 21202002 */  addu       $a0, $s1, $zero
    /* 4EB80 8005E380 80100200 */  sll        $v0, $v0, 2
    /* 4EB84 8005E384 00084224 */  addiu      $v0, $v0, 0x800
    /* 4EB88 8005E388 03130200 */  sra        $v0, $v0, 12
    /* 4EB8C 8005E38C 21105200 */  addu       $v0, $v0, $s2
    /* 4EB90 8005E390 4BE8010C */  jal        rcos
    /* 4EB94 8005E394 200002A6 */   sh        $v0, 0x20($s0)
    /* 4EB98 8005E398 80100200 */  sll        $v0, $v0, 2
    /* 4EB9C 8005E39C 00084224 */  addiu      $v0, $v0, 0x800
    /* 4EBA0 8005E3A0 03130200 */  sra        $v0, $v0, 12
    /* 4EBA4 8005E3A4 21105300 */  addu       $v0, $v0, $s3
    /* 4EBA8 8005E3A8 0000038E */  lw         $v1, 0x0($s0)
    /* 4EBAC 8005E3AC 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4EBB0 8005E3B0 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4EBB4 8005E3B4 801F053C */  lui        $a1, (0x1F800000 >> 16)
    /* 4EBB8 8005E3B8 0000A590 */  lbu        $a1, (0x1F800000 & 0xFFFF)($a1)
    /* 4EBBC 8005E3BC 00FF113C */  lui        $s1, (0xFF000000 >> 16)
    /* 4EBC0 8005E3C0 220002A6 */  sh         $v0, 0x22($s0)
    /* 4EBC4 8005E3C4 24187100 */  and        $v1, $v1, $s1
    /* 4EBC8 8005E3C8 7800828C */  lw         $v0, 0x78($a0)
    /* 4EBCC 8005E3CC C0280500 */  sll        $a1, $a1, 3
    /* 4EBD0 8005E3D0 24105500 */  and        $v0, $v0, $s5
    /* 4EBD4 8005E3D4 25186200 */  or         $v1, $v1, $v0
    /* 4EBD8 8005E3D8 000003AE */  sw         $v1, 0x0($s0)
    /* 4EBDC 8005E3DC 7800828C */  lw         $v0, 0x78($a0)
    /* 4EBE0 8005E3E0 24801502 */  and        $s0, $s0, $s5
    /* 4EBE4 8005E3E4 24105100 */  and        $v0, $v0, $s1
    /* 4EBE8 8005E3E8 25105000 */  or         $v0, $v0, $s0
    /* 4EBEC 8005E3EC 780082AC */  sw         $v0, 0x78($a0)
    /* 4EBF0 8005E3F0 0A80023C */  lui        $v0, %hi(D_80098050)
    /* 4EBF4 8005E3F4 50804224 */  addiu      $v0, $v0, %lo(D_80098050)
    /* 4EBF8 8005E3F8 0000C38E */  lw         $v1, 0x0($s6)
    /* 4EBFC 8005E3FC 2128A200 */  addu       $a1, $a1, $v0
    /* 4EC00 8005E400 21806000 */  addu       $s0, $v1, $zero
    /* 4EC04 8005E404 21200002 */  addu       $a0, $s0, $zero
    /* 4EC08 8005E408 0C000226 */  addiu      $v0, $s0, 0xC
    /* 4EC0C 8005E40C 91F7010C */  jal        SetDrawArea
    /* 4EC10 8005E410 0000C2AE */   sw        $v0, 0x0($s6)
    /* 4EC14 8005E414 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4EC18 8005E418 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4EC1C 8005E41C 0000038E */  lw         $v1, 0x0($s0)
    /* 4EC20 8005E420 7800828C */  lw         $v0, 0x78($a0)
    /* 4EC24 8005E424 24187100 */  and        $v1, $v1, $s1
    /* 4EC28 8005E428 24105500 */  and        $v0, $v0, $s5
    /* 4EC2C 8005E42C 25186200 */  or         $v1, $v1, $v0
    /* 4EC30 8005E430 000003AE */  sw         $v1, 0x0($s0)
    /* 4EC34 8005E434 7800828C */  lw         $v0, 0x78($a0)
    /* 4EC38 8005E438 24A81502 */  and        $s5, $s0, $s5
    /* 4EC3C 8005E43C 24105100 */  and        $v0, $v0, $s1
    /* 4EC40 8005E440 25105500 */  or         $v0, $v0, $s5
    /* 4EC44 8005E444 780082AC */  sw         $v0, 0x78($a0)
    /* 4EC48 8005E448 2000AD8F */  lw         $t5, 0x20($sp)
    /* 4EC4C 8005E44C 00000000 */  nop
    /* 4EC50 8005E450 0200A285 */  lh         $v0, 0x2($t5)
    /* 4EC54 8005E454 00000000 */  nop
    /* 4EC58 8005E458 33014018 */  blez       $v0, .L8005E928
    /* 4EC5C 8005E45C 21500000 */   addu      $t2, $zero, $zero
    /* 4EC60 8005E460 FF000B3C */  lui        $t3, (0xFFFFFF >> 16)
    /* 4EC64 8005E464 FFFF6B35 */  ori        $t3, $t3, (0xFFFFFF & 0xFFFF)
    /* 4EC68 8005E468 00FF0C3C */  lui        $t4, (0xFF000000 >> 16)
  .L8005E46C:
    /* 4EC6C 8005E46C 0200E286 */  lh         $v0, 0x2($s7)
    /* 4EC70 8005E470 3000AD8F */  lw         $t5, 0x30($sp)
    /* 4EC74 8005E474 21104A00 */  addu       $v0, $v0, $t2
    /* 4EC78 8005E478 2B104D00 */  sltu       $v0, $v0, $t5
    /* 4EC7C 8005E47C 23014010 */  beqz       $v0, .L8005E90C
    /* 4EC80 8005E480 00000000 */   nop
    /* 4EC84 8005E484 2000AD8F */  lw         $t5, 0x20($sp)
    /* 4EC88 8005E488 00000000 */  nop
    /* 4EC8C 8005E48C 0000A285 */  lh         $v0, 0x0($t5)
    /* 4EC90 8005E490 00000000 */  nop
    /* 4EC94 8005E494 1E014018 */  blez       $v0, .L8005E910
    /* 4EC98 8005E498 21480000 */   addu      $t1, $zero, $zero
  .L8005E49C:
    /* 4EC9C 8005E49C 0000E286 */  lh         $v0, 0x0($s7)
    /* 4ECA0 8005E4A0 00000000 */  nop
    /* 4ECA4 8005E4A4 21204900 */  addu       $a0, $v0, $t1
    /* 4ECA8 8005E4A8 2B109E00 */  sltu       $v0, $a0, $fp
    /* 4ECAC 8005E4AC 10014010 */  beqz       $v0, .L8005E8F0
    /* 4ECB0 8005E4B0 00000000 */   nop
    /* 4ECB4 8005E4B4 0200E286 */  lh         $v0, 0x2($s7)
    /* 4ECB8 8005E4B8 00000000 */  nop
    /* 4ECBC 8005E4BC 21104A00 */  addu       $v0, $v0, $t2
    /* 4ECC0 8005E4C0 1800C203 */  mult       $fp, $v0
    /* 4ECC4 8005E4C4 C80F838F */  lw         $v1, %gp_rel(D_8009882C)($gp)
    /* 4ECC8 8005E4C8 12680000 */  mflo       $t5
    /* 4ECCC 8005E4CC 2110A401 */  addu       $v0, $t5, $a0
    /* 4ECD0 8005E4D0 C3100200 */  sra        $v0, $v0, 3
    /* 4ECD4 8005E4D4 21186200 */  addu       $v1, $v1, $v0
    /* 4ECD8 8005E4D8 00006290 */  lbu        $v0, 0x0($v1)
.size func_8005E1C8, . - func_8005E1C8
