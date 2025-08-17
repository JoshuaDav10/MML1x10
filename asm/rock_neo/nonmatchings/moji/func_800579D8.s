.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800579D8
    /* 481D8 800579D8 0C80023C */  lui        $v0, %hi(Game_work + 0x7D)
    /* 481DC 800579DC 8D1B4290 */  lbu        $v0, %lo(Game_work + 0x7D)($v0)
    /* 481E0 800579E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 481E4 800579E4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 481E8 800579E8 1400868C */  lw         $a2, 0x14($a0)
    /* 481EC 800579EC 0C80033C */  lui        $v1, %hi(Game_work + 0x7C)
    /* 481F0 800579F0 8C1B6390 */  lbu        $v1, %lo(Game_work + 0x7C)($v1)
    /* 481F4 800579F4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 481F8 800579F8 23104300 */  subu       $v0, $v0, $v1
    /* 481FC 800579FC 80280200 */  sll        $a1, $v0, 2
    /* 48200 80057A00 2128A200 */  addu       $a1, $a1, $v0
    /* 48204 80057A04 140086AC */  sw         $a2, 0x14($a0)
    /* 48208 80057A08 01000424 */  addiu      $a0, $zero, 0x1
    /* 4820C 80057A0C C46F010C */  jal        func_8005BF10
    /* 48210 80057A10 40280500 */   sll       $a1, $a1, 1
    /* 48214 80057A14 1000BF8F */  lw         $ra, 0x10($sp)
    /* 48218 80057A18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4821C 80057A1C 0800E003 */  jr         $ra
    /* 48220 80057A20 00000000 */   nop
.size func_800579D8, . - func_800579D8
