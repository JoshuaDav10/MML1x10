.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059C80
    /* 4A480 80059C80 23186200 */  subu       $v1, $v1, $v0
    /* 4A484 80059C84 0C80023C */  lui        $v0, %hi(Game_work + 0x3C)
    /* 4A488 80059C88 4C1B428C */  lw         $v0, %lo(Game_work + 0x3C)($v0)
    /* 4A48C 80059C8C 80180300 */  sll        $v1, $v1, 2
    /* 4A490 80059C90 05006210 */  beq        $v1, $v0, .L80059CA8
    /* 4A494 80059C94 04000224 */   addiu     $v0, $zero, 0x4
    /* 4A498 80059C98 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A49C 80059C9C 21083000 */  addu       $at, $at, $s0
    /* 4A4A0 80059CA0 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A4A4 80059CA4 01001026 */  addiu      $s0, $s0, 0x1
  .L80059CA8:
    /* 4A4A8 80059CA8 06000224 */  addiu      $v0, $zero, 0x6
    /* 4A4AC 80059CAC 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A4B0 80059CB0 21083000 */  addu       $at, $at, $s0
    /* 4A4B4 80059CB4 F8E222A0 */  sb         $v0, %lo(D_800BE2F8)($at)
    /* 4A4B8 80059CB8 6C00228E */  lw         $v0, 0x6C($s1)
    /* 4A4BC 80059CBC 00000000 */  nop
    /* 4A4C0 80059CC0 01004290 */  lbu        $v0, 0x1($v0)
    /* 4A4C4 80059CC4 00000000 */  nop
    /* 4A4C8 80059CC8 06004224 */  addiu      $v0, $v0, 0x6
    /* 4A4CC 80059CCC 23105000 */  subu       $v0, $v0, $s0
    /* 4A4D0 80059CD0 FF004330 */  andi       $v1, $v0, 0xFF
    /* 4A4D4 80059CD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4A4D8 80059CD8 C20023A6 */  sh         $v1, 0xC2($s1)
    /* 4A4DC 80059CDC 4400238E */  lw         $v1, 0x44($s1)
    /* 4A4E0 80059CE0 40100200 */  sll        $v0, $v0, 1
    /* 4A4E4 80059CE4 21104300 */  addu       $v0, $v0, $v1
    /* 4A4E8 80059CE8 00004494 */  lhu        $a0, 0x0($v0)
    /* 4A4EC 80059CEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A4F0 80059CF0 3E0020A2 */  sb         $zero, 0x3E($s1)
    /* 4A4F4 80059CF4 3C0020A2 */  sb         $zero, 0x3C($s1)
    /* 4A4F8 80059CF8 720020A2 */  sb         $zero, 0x72($s1)
    /* 4A4FC 80059CFC 21186400 */  addu       $v1, $v1, $a0
.size func_80059C80, . - func_80059C80
