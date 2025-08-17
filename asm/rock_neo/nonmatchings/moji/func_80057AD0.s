.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057AD0
    /* 482D0 80057AD0 C0008394 */  lhu        $v1, 0xC0($a0)
    /* 482D4 80057AD4 00000000 */  nop
    /* 482D8 80057AD8 01006224 */  addiu      $v0, $v1, 0x1
    /* 482DC 80057ADC 80180300 */  sll        $v1, $v1, 2
    /* 482E0 80057AE0 C00082A4 */  sh         $v0, 0xC0($a0)
    /* 482E4 80057AE4 6C00828C */  lw         $v0, 0x6C($a0)
    /* 482E8 80057AE8 21186400 */  addu       $v1, $v1, $a0
    /* 482EC 80057AEC 02004224 */  addiu      $v0, $v0, 0x2
    /* 482F0 80057AF0 4C0062AC */  sw         $v0, 0x4C($v1)
    /* 482F4 80057AF4 6C00828C */  lw         $v0, 0x6C($a0)
    /* 482F8 80057AF8 00000000 */  nop
    /* 482FC 80057AFC 01004290 */  lbu        $v0, 0x1($v0)
    /* 48300 80057B00 00000000 */  nop
    /* 48304 80057B04 80100200 */  sll        $v0, $v0, 2
    /* 48308 80057B08 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 4830C 80057B0C 21082200 */  addu       $at, $at, $v0
    /* 48310 80057B10 A4CB228C */  lw         $v0, %lo(D_8008CBA4)($at)
    /* 48314 80057B14 00000000 */  nop
    /* 48318 80057B18 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 4831C 80057B1C 0800E003 */  jr         $ra
    /* 48320 80057B20 01000224 */   addiu     $v0, $zero, 0x1
.size func_80057AD0, . - func_80057AD0
