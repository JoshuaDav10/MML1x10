.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800503D8
    /* 40BD8 800503D8 20000424 */  addiu      $a0, $zero, 0x20
    /* 40BDC 800503DC 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 40BE0 800503E0 FF0024A0 */  sb         $a0, (0x1F8000FF & 0xFFFF)($at)
    /* 40BE4 800503E4 23180300 */  negu       $v1, $v1
    /* 40BE8 800503E8 801F013C */  lui        $at, (0x1F800102 >> 16)
    /* 40BEC 800503EC 020123A4 */  sh         $v1, (0x1F800102 & 0xFFFF)($at)
  .L800503F0:
    /* 40BF0 800503F0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 40BF4 800503F4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 40BF8 800503F8 0800E003 */  jr         $ra
    /* 40BFC 800503FC 00000000 */   nop
.size func_800503D8, . - func_800503D8
