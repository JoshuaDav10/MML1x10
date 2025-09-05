.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059C00
    /* 4A400 80059C00 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 4A404 80059C04 0C80033C */  lui        $v1, %hi(Game_work + 0x34)
    /* 4A408 80059C08 441B638C */  lw         $v1, %lo(Game_work + 0x34)($v1)
    /* 4A40C 80059C0C 00000000 */  nop
    /* 4A410 80059C10 05006210 */  beq        $v1, $v0, .L80059C28
    /* 4A414 80059C14 03000224 */   addiu     $v0, $zero, 0x3
    /* 4A418 80059C18 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A41C 80059C1C 21083000 */  addu       $at, $at, $s0
    /* 4A420 80059C20 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A424 80059C24 01001026 */  addiu      $s0, $s0, 0x1
  .L80059C28:
    /* 4A428 80059C28 0C80033C */  lui        $v1, %hi(Game_work + 0x66)
    /* 4A42C 80059C2C 761B6390 */  lbu        $v1, %lo(Game_work + 0x66)($v1)
    /* 4A430 80059C30 00000000 */  nop
    /* 4A434 80059C34 80100300 */  sll        $v0, $v1, 2
    /* 4A438 80059C38 21104300 */  addu       $v0, $v0, $v1
    /* 4A43C 80059C3C 00190200 */  sll        $v1, $v0, 4
    /* 4A440 80059C40 23186200 */  subu       $v1, $v1, $v0
    /* 4A444 80059C44 0C80023C */  lui        $v0, %hi(Game_work + 0x38)
    /* 4A448 80059C48 481B428C */  lw         $v0, %lo(Game_work + 0x38)($v0)
    /* 4A44C 80059C4C 40180300 */  sll        $v1, $v1, 1
    /* 4A450 80059C50 05006210 */  beq        $v1, $v0, .L80059C68
    /* 4A454 80059C54 05000224 */   addiu     $v0, $zero, 0x5
    /* 4A458 80059C58 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A45C 80059C5C 21083000 */  addu       $at, $at, $s0
    /* 4A460 80059C60 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A464 80059C64 01001026 */  addiu      $s0, $s0, 0x1
  .L80059C68:
    /* 4A468 80059C68 0C80033C */  lui        $v1, %hi(Game_work + 0x67)
    /* 4A46C 80059C6C 771B6390 */  lbu        $v1, %lo(Game_work + 0x67)($v1)
    /* 4A470 80059C70 00000000 */  nop
    /* 4A474 80059C74 40100300 */  sll        $v0, $v1, 1
    /* 4A478 80059C78 21104300 */  addu       $v0, $v0, $v1
    /* 4A47C 80059C7C 00190200 */  sll        $v1, $v0, 4
.size func_80059C00, . - func_80059C00
