.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019C20
    /* A420 80019C20 0C80023C */  lui        $v0, %hi(D_800C356E)
    /* A424 80019C24 6E354290 */  lbu        $v0, %lo(D_800C356E)($v0)
    /* A428 80019C28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A42C 80019C2C 1800BFAF */  sw         $ra, 0x18($sp)
    /* A430 80019C30 80100200 */  sll        $v0, $v0, 2
    /* A434 80019C34 0880013C */  lui        $at, %hi(Unk_stage_func_tbl)
    /* A438 80019C38 21082200 */  addu       $at, $at, $v0
    /* A43C 80019C3C A023228C */  lw         $v0, %lo(Unk_stage_func_tbl)($at)
    /* A440 80019C40 00000000 */  nop
    /* A444 80019C44 03004010 */  beqz       $v0, .L80019C54
    /* A448 80019C48 00000000 */   nop
    /* A44C 80019C4C 09F84000 */  jalr       $v0
    /* A450 80019C50 01000424 */   addiu     $a0, $zero, 0x1
  .L80019C54:
    /* A454 80019C54 0C80023C */  lui        $v0, %hi(D_800C356E)
    /* A458 80019C58 6E354290 */  lbu        $v0, %lo(D_800C356E)($v0)
    /* A45C 80019C5C 00000000 */  nop
    /* A460 80019C60 80100200 */  sll        $v0, $v0, 2
    /* A464 80019C64 0880013C */  lui        $at, %hi(D_80082320)
    /* A468 80019C68 21082200 */  addu       $at, $at, $v0
    /* A46C 80019C6C 2023248C */  lw         $a0, %lo(D_80082320)($at)
    /* A470 80019C70 0880033C */  lui        $v1, %hi(D_80082320)
    /* A474 80019C74 20236324 */  addiu      $v1, $v1, %lo(D_80082320)
    /* A478 80019C78 18008010 */  beqz       $a0, .L80019CDC
    /* A47C 80019C7C 21280000 */   addu      $a1, $zero, $zero
    /* A480 80019C80 0C80023C */  lui        $v0, %hi(D_800C356F)
    /* A484 80019C84 6F354290 */  lbu        $v0, %lo(D_800C356F)($v0)
    /* A488 80019C88 00000000 */  nop
    /* A48C 80019C8C 40100200 */  sll        $v0, $v0, 1
    /* A490 80019C90 21104400 */  addu       $v0, $v0, $a0
    /* A494 80019C94 00004694 */  lhu        $a2, 0x0($v0)
    /* A498 80019C98 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* A49C 80019C9C 0F00C210 */  beq        $a2, $v0, .L80019CDC
    /* A4A0 80019CA0 00000000 */   nop
    /* A4A4 80019CA4 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* A4A8 80019CA8 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* A4AC 80019CAC 00000000 */  nop
    /* A4B0 80019CB0 80100200 */  sll        $v0, $v0, 2
    /* A4B4 80019CB4 21104300 */  addu       $v0, $v0, $v1
    /* A4B8 80019CB8 0C80033C */  lui        $v1, %hi(Game_work + 0x51)
    /* A4BC 80019CBC 611B6380 */  lb         $v1, %lo(Game_work + 0x51)($v1)
    /* A4C0 80019CC0 0000448C */  lw         $a0, 0x0($v0)
    /* A4C4 80019CC4 40180300 */  sll        $v1, $v1, 1
    /* A4C8 80019CC8 21186400 */  addu       $v1, $v1, $a0
    /* A4CC 80019CCC 00006294 */  lhu        $v0, 0x0($v1)
    /* A4D0 80019CD0 00000000 */  nop
    /* A4D4 80019CD4 02004610 */  beq        $v0, $a2, .L80019CE0
    /* A4D8 80019CD8 00000000 */   nop
  .L80019CDC:
    /* A4DC 80019CDC 01000524 */  addiu      $a1, $zero, 0x1
  .L80019CE0:
    /* A4E0 80019CE0 0900A010 */  beqz       $a1, .L80019D08
    /* A4E4 80019CE4 00000000 */   nop
    /* A4E8 80019CE8 1576000C */  jal        func_8001D854
    /* A4EC 80019CEC 10000424 */   addiu     $a0, $zero, 0x10
    /* A4F0 80019CF0 0A80023C */  lui        $v0, %hi(D_80098958)
    /* A4F4 80019CF4 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* A4F8 80019CF8 00000000 */  nop
    /* A4FC 80019CFC 00084234 */  ori        $v0, $v0, 0x800
    /* A500 80019D00 0A80013C */  lui        $at, %hi(D_80098958)
    /* A504 80019D04 588922AC */  sw         $v0, %lo(D_80098958)($at)
  .L80019D08:
    /* A508 80019D08 1800BF8F */  lw         $ra, 0x18($sp)
    /* A50C 80019D0C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A510 80019D10 0800E003 */  jr         $ra
    /* A514 80019D14 00000000 */   nop
.size func_80019C20, . - func_80019C20
