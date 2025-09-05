.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057B20
    /* 48320 80057B20 01000224 */  addiu      $v0, $zero, 0x1
    /* 48324 80057B24 BE008394 */  lhu        $v1, 0xBE($a0)
    /* 48328 80057B28 00000000 */  nop
    /* 4832C 80057B2C 01006224 */  addiu      $v0, $v1, 0x1
    /* 48330 80057B30 80180300 */  sll        $v1, $v1, 2
    /* 48334 80057B34 BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 48338 80057B38 1400828C */  lw         $v0, 0x14($a0)
    /* 4833C 80057B3C 21186400 */  addu       $v1, $v1, $a0
.size func_80057B20, . - func_80057B20
