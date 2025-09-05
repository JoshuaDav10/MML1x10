.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D6E8
    /* 4DEE8 8005D6E8 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 4DEEC 8005D6EC 21280000 */  addu       $a1, $zero, $zero
    /* 4DEF0 8005D6F0 48000624 */  addiu      $a2, $zero, 0x48
  .L8005D6F4:
    /* 4DEF4 8005D6F4 2118C000 */  addu       $v1, $a2, $zero
    /* 4DEF8 8005D6F8 0C80013C */  lui        $at, (0x800C0000 >> 16)
.size func_8005D6E8, . - func_8005D6E8
