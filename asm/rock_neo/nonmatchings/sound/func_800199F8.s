.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800199F8
    /* A1F8 800199F8 0C80033C */  lui        $v1, %hi(Game_work + 0x53)
    /* A1FC 800199FC 631B6380 */  lb         $v1, %lo(Game_work + 0x53)($v1)
    /* A200 80019A00 01000224 */  addiu      $v0, $zero, 0x1
    /* A204 80019A04 02006214 */  bne        $v1, $v0, .L80019A10
    /* A208 80019A08 08010424 */   addiu     $a0, $zero, 0x108
    /* A20C 80019A0C 17000424 */  addiu      $a0, $zero, 0x17
  .L80019A10:
    /* A210 80019A10 05000324 */  addiu      $v1, $zero, 0x5
    /* A214 80019A14 0880023C */  lui        $v0, %hi(D_800822A6)
    /* A218 80019A18 A6224224 */  addiu      $v0, $v0, %lo(D_800822A6)
  .L80019A1C:
    /* A21C 80019A1C 000044A4 */  sh         $a0, 0x0($v0)
    /* A220 80019A20 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A224 80019A24 FDFF6104 */  bgez       $v1, .L80019A1C
    /* A228 80019A28 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* A22C 80019A2C 0800E003 */  jr         $ra
    /* A230 80019A30 00000000 */   nop
.size func_800199F8, . - func_800199F8
