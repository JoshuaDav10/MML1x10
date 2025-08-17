.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019A34
    /* A234 80019A34 0C80033C */  lui        $v1, %hi(Game_work + 0x53)
    /* A238 80019A38 631B6380 */  lb         $v1, %lo(Game_work + 0x53)($v1)
    /* A23C 80019A3C 01000224 */  addiu      $v0, $zero, 0x1
    /* A240 80019A40 02006214 */  bne        $v1, $v0, .L80019A4C
    /* A244 80019A44 08010424 */   addiu     $a0, $zero, 0x108
    /* A248 80019A48 17000424 */  addiu      $a0, $zero, 0x17
  .L80019A4C:
    /* A24C 80019A4C 04000324 */  addiu      $v1, $zero, 0x4
    /* A250 80019A50 0880023C */  lui        $v0, %hi(D_800822B0)
    /* A254 80019A54 B0224224 */  addiu      $v0, $v0, %lo(D_800822B0)
  .L80019A58:
    /* A258 80019A58 000044A4 */  sh         $a0, 0x0($v0)
    /* A25C 80019A5C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A260 80019A60 FDFF6104 */  bgez       $v1, .L80019A58
    /* A264 80019A64 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* A268 80019A68 0800E003 */  jr         $ra
    /* A26C 80019A6C 00000000 */   nop
.size func_80019A34, . - func_80019A34
