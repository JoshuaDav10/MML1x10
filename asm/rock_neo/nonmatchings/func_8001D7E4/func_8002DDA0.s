.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DDA0
    /* 1E5A0 8002DDA0 21108000 */  addu       $v0, $a0, $zero
    /* 1E5A4 8002DDA4 00310600 */  sll        $a2, $a2, 4
    /* 1E5A8 8002DDA8 2130C500 */  addu       $a2, $a2, $a1
    /* 1E5AC 8002DDAC 0800C38C */  lw         $v1, 0x8($a2)
    /* 1E5B0 8002DDB0 0400C48C */  lw         $a0, 0x4($a2)
    /* 1E5B4 8002DDB4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1E5B8 8002DDB8 0400A3AF */  sw         $v1, 0x4($sp)
    /* 1E5BC 8002DDBC 0C00C38C */  lw         $v1, 0xC($a2)
    /* 1E5C0 8002DDC0 0000A4AF */  sw         $a0, 0x0($sp)
    /* 1E5C4 8002DDC4 0800A3AF */  sw         $v1, 0x8($sp)
    /* 1E5C8 8002DDC8 0300A38B */  lwl        $v1, 0x3($sp)
    /* 1E5CC 8002DDCC 0000A39B */  lwr        $v1, 0x0($sp)
    /* 1E5D0 8002DDD0 0700A48B */  lwl        $a0, 0x7($sp)
    /* 1E5D4 8002DDD4 0400A49B */  lwr        $a0, 0x4($sp)
    /* 1E5D8 8002DDD8 0B00A58B */  lwl        $a1, 0xB($sp)
    /* 1E5DC 8002DDDC 0800A59B */  lwr        $a1, 0x8($sp)
    /* 1E5E0 8002DDE0 030043A8 */  swl        $v1, 0x3($v0)
    /* 1E5E4 8002DDE4 000043B8 */  swr        $v1, 0x0($v0)
    /* 1E5E8 8002DDE8 070044A8 */  swl        $a0, 0x7($v0)
    /* 1E5EC 8002DDEC 040044B8 */  swr        $a0, 0x4($v0)
    /* 1E5F0 8002DDF0 0B0045A8 */  swl        $a1, 0xB($v0)
    /* 1E5F4 8002DDF4 080045B8 */  swr        $a1, 0x8($v0)
    /* 1E5F8 8002DDF8 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 1E5FC 8002DDFC 0800E003 */  jr         $ra
    /* 1E600 8002DE00 00000000 */   nop
.size func_8002DDA0, . - func_8002DDA0
