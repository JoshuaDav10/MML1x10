.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041158
    /* 31958 80041158 74018280 */  lb         $v0, 0x174($a0)
    /* 3195C 8004115C 00000000 */  nop
    /* 31960 80041160 C0004530 */  andi       $a1, $v0, 0xC0
    /* 31964 80041164 40000224 */  addiu      $v0, $zero, 0x40
    /* 31968 80041168 0C00A214 */  bne        $a1, $v0, .L8004119C
.size func_80041158, . - func_80041158
