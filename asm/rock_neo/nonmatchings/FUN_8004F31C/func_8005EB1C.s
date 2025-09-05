.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005EB1C
    /* 4F31C 8005EB1C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 4F320 8005EB20 140062AC */  sw         $v0, 0x14($v1)
    /* 4F324 8005EB24 00110700 */  sll        $v0, $a3, 4
    /* 4F328 8005EB28 23104700 */  subu       $v0, $v0, $a3
    /* 4F32C 8005EB2C 0A80013C */  lui        $at, %hi(D_80098078)
    /* 4F330 8005EB30 21082400 */  addu       $at, $at, $a0
    /* 4F334 8005EB34 7880288C */  lw         $t0, %lo(D_80098078)($at)
    /* 4F338 8005EB38 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4F33C 8005EB3C 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4F340 8005EB40 C0100200 */  sll        $v0, $v0, 3
    /* 4F344 8005EB44 180060A4 */  sh         $zero, 0x18($v1)
    /* 4F348 8005EB48 080060A4 */  sh         $zero, 0x8($v1)
    /* 4F34C 8005EB4C 20006CA4 */  sh         $t4, 0x20($v1)
    /* 4F350 8005EB50 10006CA4 */  sh         $t4, 0x10($v1)
    /* 4F354 8005EB54 120065A4 */  sh         $a1, 0x12($v1)
    /* 4F358 8005EB58 0A0065A4 */  sh         $a1, 0xA($v1)
    /* 4F35C 8005EB5C 220062A4 */  sh         $v0, 0x22($v1)
    /* 4F360 8005EB60 1A0062A4 */  sh         $v0, 0x1A($v1)
    /* 4F364 8005EB64 1C0068AC */  sw         $t0, 0x1C($v1)
    /* 4F368 8005EB68 7800828C */  lw         $v0, 0x78($a0)
    /* 4F36C 8005EB6C 2430CB00 */  and        $a2, $a2, $t3
    /* 4F370 8005EB70 24104900 */  and        $v0, $v0, $t1
    /* 4F374 8005EB74 2530C200 */  or         $a2, $a2, $v0
    /* 4F378 8005EB78 000066AC */  sw         $a2, 0x0($v1)
    /* 4F37C 8005EB7C 7800828C */  lw         $v0, 0x78($a0)
    /* 4F380 8005EB80 24186900 */  and        $v1, $v1, $t1
    /* 4F384 8005EB84 24104B00 */  and        $v0, $v0, $t3
    /* 4F388 8005EB88 25104300 */  or         $v0, $v0, $v1
    /* 4F38C 8005EB8C 780082AC */  sw         $v0, 0x78($a0)
    /* 4F390 8005EB90 0200E228 */  slti       $v0, $a3, 0x2
    /* 4F394 8005EB94 CDFF4014 */  bnez       $v0, .L8005EACC
    /* 4F398 8005EB98 00000000 */   nop
    /* 4F39C 8005EB9C 0800E003 */  jr         $ra
    /* 4F3A0 8005EBA0 00000000 */   nop
  glabel func_8005EBA4
    /* 4F3A4 8005EBA4 0C80013C */  lui        $at, %hi(D_800BBD94)
    /* 4F3A8 8005EBA8 94BD24A4 */  sh         $a0, %lo(D_800BBD94)($at)
    /* 4F3AC 8005EBAC 0800E003 */  jr         $ra
    /* 4F3B0 8005EBB0 00000000 */   nop
  glabel func_8005EBB4
    /* 4F3B4 8005EBB4 0C80013C */  lui        $at, %hi(D_800BBD96)
    /* 4F3B8 8005EBB8 96BD24A4 */  sh         $a0, %lo(D_800BBD96)($at)
    /* 4F3BC 8005EBBC 0800E003 */  jr         $ra
    /* 4F3C0 8005EBC0 00000000 */   nop
  glabel func_8005EBC4
    /* 4F3C4 8005EBC4 0C80023C */  lui        $v0, %hi(D_800BBD94)
    /* 4F3C8 8005EBC8 94BD4284 */  lh         $v0, %lo(D_800BBD94)($v0)
    /* 4F3CC 8005EBCC 0800E003 */  jr         $ra
    /* 4F3D0 8005EBD0 00000000 */   nop
  glabel func_8005EBD4
    /* 4F3D4 8005EBD4 0C80023C */  lui        $v0, %hi(D_800BBD96)
    /* 4F3D8 8005EBD8 96BD4284 */  lh         $v0, %lo(D_800BBD96)($v0)
    /* 4F3DC 8005EBDC 0800E003 */  jr         $ra
    /* 4F3E0 8005EBE0 00000000 */   nop
  glabel func_8005EBE4
    /* 4F3E4 8005EBE4 0B80023C */  lui        $v0, %hi(Player_work + 0x450)
    /* 4F3E8 8005EBE8 00564290 */  lbu        $v0, %lo(Player_work + 0x450)($v0)
    /* 4F3EC 8005EBEC 0B80033C */  lui        $v1, %hi(Player_work + 0x451)
    /* 4F3F0 8005EBF0 01566390 */  lbu        $v1, %lo(Player_work + 0x451)($v1)
    /* 4F3F4 8005EBF4 0B80043C */  lui        $a0, %hi(Player_work + 0x452)
    /* 4F3F8 8005EBF8 02568490 */  lbu        $a0, %lo(Player_work + 0x452)($a0)
    /* 4F3FC 8005EBFC 0B80053C */  lui        $a1, %hi(Player_work + 0x170)
    /* 4F400 8005EC00 2053A590 */  lbu        $a1, %lo(Player_work + 0x170)($a1)
    /* 4F404 8005EC04 0A80013C */  lui        $at, %hi(D_800A38F0)
    /* 4F408 8005EC08 F03820AC */  sw         $zero, %lo(D_800A38F0)($at)
    /* 4F40C 8005EC0C 0A80013C */  lui        $at, %hi(D_800A38F8)
    /* 4F410 8005EC10 F83822A0 */  sb         $v0, %lo(D_800A38F8)($at)
    /* 4F414 8005EC14 0A80013C */  lui        $at, %hi(D_800A38F9)
    /* 4F418 8005EC18 F93823A0 */  sb         $v1, %lo(D_800A38F9)($at)
    /* 4F41C 8005EC1C 0A80013C */  lui        $at, %hi(D_800A38FA)
    /* 4F420 8005EC20 FA3824A0 */  sb         $a0, %lo(D_800A38FA)($at)
    /* 4F424 8005EC24 0A80013C */  lui        $at, %hi(D_800A38FB)
    /* 4F428 8005EC28 FB3825A0 */  sb         $a1, %lo(D_800A38FB)($at)
    /* 4F42C 8005EC2C 0800E003 */  jr         $ra
    /* 4F430 8005EC30 00000000 */   nop
.size func_8005EB1C, . - func_8005EB1C
