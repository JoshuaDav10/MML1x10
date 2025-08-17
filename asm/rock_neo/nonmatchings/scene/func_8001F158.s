.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F158
    /* F958 8001F158 0C80043C */  lui        $a0, %hi(Scene_work + 0xA4)
    /* F95C 8001F15C EC4C848C */  lw         $a0, %lo(Scene_work + 0xA4)($a0)
    /* F960 8001F160 0C80033C */  lui        $v1, %hi(Scene_work + 0x8)
    /* F964 8001F164 504C6390 */  lbu        $v1, %lo(Scene_work + 0x8)($v1)
    /* F968 8001F168 08008224 */  addiu      $v0, $a0, 0x8
    /* F96C 8001F16C 0C80013C */  lui        $at, %hi(Scene_work + 0xA4)
    /* F970 8001F170 EC4C22AC */  sw         $v0, %lo(Scene_work + 0xA4)($at)
    /* F974 8001F174 08008290 */  lbu        $v0, 0x8($a0)
    /* F978 8001F178 00000000 */  nop
    /* F97C 8001F17C 05006210 */  beq        $v1, $v0, .L8001F194
    /* F980 8001F180 00000000 */   nop
    /* F984 8001F184 0C80013C */  lui        $at, %hi(Scene_work + 0x18)
    /* F988 8001F188 604C20AC */  sw         $zero, %lo(Scene_work + 0x18)($at)
    /* F98C 8001F18C 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* F990 8001F190 644C20AC */  sw         $zero, %lo(Scene_work + 0x1C)($at)
  .L8001F194:
    /* F994 8001F194 08008290 */  lbu        $v0, 0x8($a0)
    /* F998 8001F198 0C80033C */  lui        $v1, %hi(Scene_work + 0x9)
    /* F99C 8001F19C 514C6390 */  lbu        $v1, %lo(Scene_work + 0x9)($v1)
    /* F9A0 8001F1A0 0C80013C */  lui        $at, %hi(Scene_work + 0x8)
    /* F9A4 8001F1A4 504C22A0 */  sb         $v0, %lo(Scene_work + 0x8)($at)
    /* F9A8 8001F1A8 09008290 */  lbu        $v0, 0x9($a0)
    /* F9AC 8001F1AC 00000000 */  nop
    /* F9B0 8001F1B0 03006210 */  beq        $v1, $v0, .L8001F1C0
    /* F9B4 8001F1B4 00000000 */   nop
    /* F9B8 8001F1B8 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* F9BC 8001F1BC 644C20AC */  sw         $zero, %lo(Scene_work + 0x1C)($at)
  .L8001F1C0:
    /* F9C0 8001F1C0 09008290 */  lbu        $v0, 0x9($a0)
    /* F9C4 8001F1C4 0C80013C */  lui        $at, %hi(Scene_work + 0x10)
    /* F9C8 8001F1C8 584C20AC */  sw         $zero, %lo(Scene_work + 0x10)($at)
    /* F9CC 8001F1CC 0C80013C */  lui        $at, %hi(Scene_work + 0x9)
    /* F9D0 8001F1D0 514C22A0 */  sb         $v0, %lo(Scene_work + 0x9)($at)
    /* F9D4 8001F1D4 0800E003 */  jr         $ra
    /* F9D8 8001F1D8 00000000 */   nop
.size func_8001F158, . - func_8001F158
