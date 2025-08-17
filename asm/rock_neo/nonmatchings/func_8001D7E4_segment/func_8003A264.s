.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A264
    /* 2AA64 8003A264 02000224 */  addiu      $v0, $zero, 0x2
    /* 2AA68 8003A268 0A80013C */  lui        $at, %hi(D_800A3959)
    /* 2AA6C 8003A26C 593922A0 */  sb         $v0, %lo(D_800A3959)($at)
    /* 2AA70 8003A270 40000224 */  addiu      $v0, $zero, 0x40
    /* 2AA74 8003A274 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 2AA78 8003A278 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 2AA7C 8003A27C 0A80053C */  lui        $a1, %hi(D_80098678)
    /* 2AA80 8003A280 7886A524 */  addiu      $a1, $a1, %lo(D_80098678)
    /* 2AA84 8003A284 0A80043C */  lui        $a0, %hi(D_800A39C0)
    /* 2AA88 8003A288 C0398424 */  addiu      $a0, $a0, %lo(D_800A39C0)
    /* 2AA8C 8003A28C 0000A28C */  lw         $v0, 0x0($a1)
    /* 2AA90 8003A290 0400A38C */  lw         $v1, 0x4($a1)
    /* 2AA94 8003A294 000082AC */  sw         $v0, 0x0($a0)
    /* 2AA98 8003A298 040083AC */  sw         $v1, 0x4($a0)
    /* 2AA9C 8003A29C 0800A28C */  lw         $v0, 0x8($a1)
    /* 2AAA0 8003A2A0 0C00A38C */  lw         $v1, 0xC($a1)
    /* 2AAA4 8003A2A4 080082AC */  sw         $v0, 0x8($a0)
    /* 2AAA8 8003A2A8 0C0083AC */  sw         $v1, 0xC($a0)
    /* 2AAAC 8003A2AC 00020324 */  addiu      $v1, $zero, 0x200
    /* 2AAB0 8003A2B0 C80483AF */  sw         $v1, %gp_rel(D_80097D2C)($gp)
    /* 2AAB4 8003A2B4 0A80013C */  lui        $at, %hi(D_800A3994)
    /* 2AAB8 8003A2B8 943923AC */  sw         $v1, %lo(D_800A3994)($at)
    /* 2AABC 8003A2BC 240E838F */  lw         $v1, %gp_rel(D_80098688)($gp)
    /* 2AAC0 8003A2C0 96000224 */  addiu      $v0, $zero, 0x96
    /* 2AAC4 8003A2C4 0A80013C */  lui        $at, %hi(D_800A39B4)
    /* 2AAC8 8003A2C8 B43922AC */  sw         $v0, %lo(D_800A39B4)($at)
    /* 2AACC 8003A2CC 30000224 */  addiu      $v0, $zero, 0x30
    /* 2AAD0 8003A2D0 0A80013C */  lui        $at, %hi(D_800A399C)
    /* 2AAD4 8003A2D4 9C3922AC */  sw         $v0, %lo(D_800A399C)($at)
    /* 2AAD8 8003A2D8 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 2AADC 8003A2DC 0A80013C */  lui        $at, %hi(D_800A3961)
    /* 2AAE0 8003A2E0 613922A0 */  sb         $v0, %lo(D_800A3961)($at)
    /* 2AAE4 8003A2E4 280E828F */  lw         $v0, %gp_rel(D_8009868C)($gp)
    /* 2AAE8 8003A2E8 0B80043C */  lui        $a0, %hi(Player_work + 0x14)
    /* 2AAEC 8003A2EC C4518484 */  lh         $a0, %lo(Player_work + 0x14)($a0)
    /* 2AAF0 8003A2F0 FF0F4530 */  andi       $a1, $v0, 0xFFF
    /* 2AAF4 8003A2F4 0A80013C */  lui        $at, %hi(D_800A397C)
    /* 2AAF8 8003A2F8 7C3923AC */  sw         $v1, %lo(D_800A397C)($at)
    /* 2AAFC 8003A2FC 2C0E838F */  lw         $v1, %gp_rel(D_80098690)($gp)
    /* 2AB00 8003A300 0B80023C */  lui        $v0, %hi(Player_work + 0x16)
    /* 2AB04 8003A304 C6514284 */  lh         $v0, %lo(Player_work + 0x16)($v0)
    /* 2AB08 8003A308 0A80013C */  lui        $at, %hi(D_800A39E0)
    /* 2AB0C 8003A30C E03924AC */  sw         $a0, %lo(D_800A39E0)($at)
    /* 2AB10 8003A310 0B80043C */  lui        $a0, %hi(Player_work + 0x18)
    /* 2AB14 8003A314 C8518484 */  lh         $a0, %lo(Player_work + 0x18)($a0)
    /* 2AB18 8003A318 0B80013C */  lui        $at, %hi(Player_work + 0x44D)
    /* 2AB1C 8003A31C FD5520A0 */  sb         $zero, %lo(Player_work + 0x44D)($at)
    /* 2AB20 8003A320 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2AB24 8003A324 803925AC */  sw         $a1, %lo(D_800A3980)($at)
    /* 2AB28 8003A328 0A80013C */  lui        $at, %hi(D_800A3984)
    /* 2AB2C 8003A32C 843923AC */  sw         $v1, %lo(D_800A3984)($at)
    /* 2AB30 8003A330 0B80033C */  lui        $v1, %hi(Player_work + 0x56)
    /* 2AB34 8003A334 06526384 */  lh         $v1, %lo(Player_work + 0x56)($v1)
    /* 2AB38 8003A338 6AFF4224 */  addiu      $v0, $v0, -0x96
    /* 2AB3C 8003A33C 0A80013C */  lui        $at, %hi(D_800A39E4)
    /* 2AB40 8003A340 E43922AC */  sw         $v0, %lo(D_800A39E4)($at)
    /* 2AB44 8003A344 0A80013C */  lui        $at, %hi(D_800A39E8)
    /* 2AB48 8003A348 E83924AC */  sw         $a0, %lo(D_800A39E8)($at)
    /* 2AB4C 8003A34C 00086324 */  addiu      $v1, $v1, 0x800
    /* 2AB50 8003A350 FF0F6430 */  andi       $a0, $v1, 0xFFF
    /* 2AB54 8003A354 2A108500 */  slt        $v0, $a0, $a1
    /* 2AB58 8003A358 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2AB5C 8003A35C 983924AC */  sw         $a0, %lo(D_800A3998)($at)
    /* 2AB60 8003A360 0A004010 */  beqz       $v0, .L8003A38C
    /* 2AB64 8003A364 2318A400 */   subu      $v1, $a1, $a0
    /* 2AB68 8003A368 00F0A224 */  addiu      $v0, $a1, -0x1000
    /* 2AB6C 8003A36C 23108200 */  subu       $v0, $a0, $v0
    /* 2AB70 8003A370 2A104300 */  slt        $v0, $v0, $v1
    /* 2AB74 8003A374 0D004010 */  beqz       $v0, .L8003A3AC
    /* 2AB78 8003A378 00108224 */   addiu     $v0, $a0, 0x1000
    /* 2AB7C 8003A37C 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2AB80 8003A380 983922AC */  sw         $v0, %lo(D_800A3998)($at)
    /* 2AB84 8003A384 EBE80008 */  j          .L8003A3AC
    /* 2AB88 8003A388 00000000 */   nop
  .L8003A38C:
    /* 2AB8C 8003A38C 23188500 */  subu       $v1, $a0, $a1
    /* 2AB90 8003A390 00F08224 */  addiu      $v0, $a0, -0x1000
    /* 2AB94 8003A394 2310A200 */  subu       $v0, $a1, $v0
    /* 2AB98 8003A398 2A104300 */  slt        $v0, $v0, $v1
    /* 2AB9C 8003A39C 03004010 */  beqz       $v0, .L8003A3AC
    /* 2ABA0 8003A3A0 0010A224 */   addiu     $v0, $a1, 0x1000
    /* 2ABA4 8003A3A4 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2ABA8 8003A3A8 803922AC */  sw         $v0, %lo(D_800A3980)($at)
  .L8003A3AC:
    /* 2ABAC 8003A3AC 0800E003 */  jr         $ra
    /* 2ABB0 8003A3B0 00000000 */   nop
.size func_8003A264, . - func_8003A264
