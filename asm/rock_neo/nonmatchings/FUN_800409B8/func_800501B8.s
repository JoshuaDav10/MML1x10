.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800501B8
    /* 409B8 800501B8 0200E3A4 */  sh         $v1, 0x2($a3)
    /* 409BC 800501BC 1200A397 */  lhu        $v1, 0x12($sp)
    /* 409C0 800501C0 20000424 */  addiu      $a0, $zero, 0x20
    /* 409C4 800501C4 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 409C8 800501C8 FF0024A0 */  sb         $a0, (0x1F8000FF & 0xFFFF)($at)
    /* 409CC 800501CC 23180300 */  negu       $v1, $v1
    /* 409D0 800501D0 801F013C */  lui        $at, (0x1F800102 >> 16)
    /* 409D4 800501D4 020123A4 */  sh         $v1, (0x1F800102 & 0xFFFF)($at)
  .L800501D8:
    /* 409D8 800501D8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 409DC 800501DC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 409E0 800501E0 0800E003 */  jr         $ra
    /* 409E4 800501E4 00000000 */   nop
.size func_800501B8, . - func_800501B8
