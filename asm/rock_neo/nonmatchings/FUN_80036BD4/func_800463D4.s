.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800463D4
    /* 36BD4 800463D4 1E0000A6 */  sh         $zero, 0x1E($s0)
    /* 36BD8 800463D8 1C0000A6 */  sh         $zero, 0x1C($s0)
    /* 36BDC 800463DC 1A0000A6 */  sh         $zero, 0x1A($s0)
    /* 36BE0 800463E0 01004224 */  addiu      $v0, $v0, 0x1
    /* 36BE4 800463E4 080002A2 */  sb         $v0, 0x8($s0)
    /* 36BE8 800463E8 280003A6 */  sh         $v1, 0x28($s0)
    /* 36BEC 800463EC 200003A6 */  sh         $v1, 0x20($s0)
    /* 36BF0 800463F0 1AEF010C */  jal        RotMatrixY
    /* 36BF4 800463F4 180003A6 */   sh        $v1, 0x18($s0)
.size func_800463D4, . - func_800463D4
