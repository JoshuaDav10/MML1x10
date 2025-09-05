.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057D00
    /* 48500 80057D00 C0008394 */  lhu        $v1, 0xC0($a0)
    /* 48504 80057D04 00000000 */  nop
    /* 48508 80057D08 01006224 */  addiu      $v0, $v1, 0x1
    /* 4850C 80057D0C 80180300 */  sll        $v1, $v1, 2
    /* 48510 80057D10 C00082A4 */  sh         $v0, 0xC0($a0)
    /* 48514 80057D14 6C00828C */  lw         $v0, 0x6C($a0)
    /* 48518 80057D18 21186400 */  addu       $v1, $v1, $a0
    /* 4851C 80057D1C 02004224 */  addiu      $v0, $v0, 0x2
.size func_80057D00, . - func_80057D00
