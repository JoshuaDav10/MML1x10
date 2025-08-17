.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058DB4
    /* 495B4 80058DB4 FF000624 */  addiu      $a2, $zero, 0xFF
    /* 495B8 80058DB8 7F000524 */  addiu      $a1, $zero, 0x7F
    /* 495BC 80058DBC 6C00828C */  lw         $v0, 0x6C($a0)
    /* 495C0 80058DC0 0C80033C */  lui        $v1, %hi(D_800BE377)
    /* 495C4 80058DC4 77E36324 */  addiu      $v1, $v1, %lo(D_800BE377)
    /* 495C8 80058DC8 381180A3 */  sb         $zero, %gp_rel(D_8009899C)($gp)
    /* 495CC 80058DCC 01004224 */  addiu      $v0, $v0, 0x1
    /* 495D0 80058DD0 6C0082AC */  sw         $v0, 0x6C($a0)
  .L80058DD4:
    /* 495D4 80058DD4 000066A0 */  sb         $a2, 0x0($v1)
    /* 495D8 80058DD8 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 495DC 80058DDC FDFFA104 */  bgez       $a1, .L80058DD4
    /* 495E0 80058DE0 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 495E4 80058DE4 0800E003 */  jr         $ra
    /* 495E8 80058DE8 01000224 */   addiu     $v0, $zero, 0x1
.size func_80058DB4, . - func_80058DB4
