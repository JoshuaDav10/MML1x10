.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F070
    /* F870 8001F070 0C80023C */  lui        $v0, %hi(Scene_work + 0x14)
    /* F874 8001F074 5C4C428C */  lw         $v0, %lo(Scene_work + 0x14)($v0)
    /* F878 8001F078 0C80033C */  lui        $v1, %hi(Scene_work + 0x1C)
    /* F87C 8001F07C 644C638C */  lw         $v1, %lo(Scene_work + 0x1C)($v1)
    /* F880 8001F080 01004224 */  addiu      $v0, $v0, 0x1
    /* F884 8001F084 0C80013C */  lui        $at, %hi(Scene_work + 0x14)
    /* F888 8001F088 5C4C22AC */  sw         $v0, %lo(Scene_work + 0x14)($at)
    /* F88C 8001F08C 0C80023C */  lui        $v0, %hi(Scene_work + 0x18)
    /* F890 8001F090 604C428C */  lw         $v0, %lo(Scene_work + 0x18)($v0)
    /* F894 8001F094 0C80043C */  lui        $a0, %hi(Scene_work + 0xA4)
    /* F898 8001F098 EC4C848C */  lw         $a0, %lo(Scene_work + 0xA4)($a0)
    /* F89C 8001F09C 01004224 */  addiu      $v0, $v0, 0x1
    /* F8A0 8001F0A0 0C80013C */  lui        $at, %hi(Scene_work + 0x18)
    /* F8A4 8001F0A4 604C22AC */  sw         $v0, %lo(Scene_work + 0x18)($at)
    /* F8A8 8001F0A8 0C80023C */  lui        $v0, %hi(Scene_work + 0x10)
    /* F8AC 8001F0AC 584C428C */  lw         $v0, %lo(Scene_work + 0x10)($v0)
    /* F8B0 8001F0B0 01006324 */  addiu      $v1, $v1, 0x1
    /* F8B4 8001F0B4 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* F8B8 8001F0B8 644C23AC */  sw         $v1, %lo(Scene_work + 0x1C)($at)
    /* F8BC 8001F0BC 01004524 */  addiu      $a1, $v0, 0x1
    /* F8C0 8001F0C0 0C80013C */  lui        $at, %hi(Scene_work + 0x10)
    /* F8C4 8001F0C4 584C25AC */  sw         $a1, %lo(Scene_work + 0x10)($at)
    /* F8C8 8001F0C8 02008384 */  lh         $v1, 0x2($a0)
    /* F8CC 8001F0CC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* F8D0 8001F0D0 1F006210 */  beq        $v1, $v0, .L8001F150
    /* F8D4 8001F0D4 00000000 */   nop
    /* F8D8 8001F0D8 1D006514 */  bne        $v1, $a1, .L8001F150
    /* F8DC 8001F0DC 08008224 */   addiu     $v0, $a0, 0x8
    /* F8E0 8001F0E0 0C80033C */  lui        $v1, %hi(Scene_work + 0x8)
    /* F8E4 8001F0E4 504C6390 */  lbu        $v1, %lo(Scene_work + 0x8)($v1)
    /* F8E8 8001F0E8 0C80013C */  lui        $at, %hi(Scene_work + 0xA4)
    /* F8EC 8001F0EC EC4C22AC */  sw         $v0, %lo(Scene_work + 0xA4)($at)
    /* F8F0 8001F0F0 08008290 */  lbu        $v0, 0x8($a0)
    /* F8F4 8001F0F4 00000000 */  nop
    /* F8F8 8001F0F8 05006210 */  beq        $v1, $v0, .L8001F110
    /* F8FC 8001F0FC 00000000 */   nop
    /* F900 8001F100 0C80013C */  lui        $at, %hi(Scene_work + 0x18)
    /* F904 8001F104 604C20AC */  sw         $zero, %lo(Scene_work + 0x18)($at)
    /* F908 8001F108 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* F90C 8001F10C 644C20AC */  sw         $zero, %lo(Scene_work + 0x1C)($at)
  .L8001F110:
    /* F910 8001F110 08008290 */  lbu        $v0, 0x8($a0)
    /* F914 8001F114 0C80033C */  lui        $v1, %hi(Scene_work + 0x9)
    /* F918 8001F118 514C6390 */  lbu        $v1, %lo(Scene_work + 0x9)($v1)
    /* F91C 8001F11C 0C80013C */  lui        $at, %hi(Scene_work + 0x8)
    /* F920 8001F120 504C22A0 */  sb         $v0, %lo(Scene_work + 0x8)($at)
    /* F924 8001F124 09008290 */  lbu        $v0, 0x9($a0)
    /* F928 8001F128 00000000 */  nop
    /* F92C 8001F12C 03006210 */  beq        $v1, $v0, .L8001F13C
    /* F930 8001F130 00000000 */   nop
    /* F934 8001F134 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* F938 8001F138 644C20AC */  sw         $zero, %lo(Scene_work + 0x1C)($at)
  .L8001F13C:
    /* F93C 8001F13C 09008290 */  lbu        $v0, 0x9($a0)
    /* F940 8001F140 0C80013C */  lui        $at, %hi(Scene_work + 0x10)
    /* F944 8001F144 584C20AC */  sw         $zero, %lo(Scene_work + 0x10)($at)
    /* F948 8001F148 0C80013C */  lui        $at, %hi(Scene_work + 0x9)
    /* F94C 8001F14C 514C22A0 */  sb         $v0, %lo(Scene_work + 0x9)($at)
  .L8001F150:
    /* F950 8001F150 0800E003 */  jr         $ra
    /* F954 8001F154 00000000 */   nop
.size func_8001F070, . - func_8001F070
