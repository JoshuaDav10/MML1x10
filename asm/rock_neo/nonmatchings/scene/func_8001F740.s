.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F740
    /* FF40 8001F740 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FF44 8001F744 1000B0AF */  sw         $s0, 0x10($sp)
    /* FF48 8001F748 0C80103C */  lui        $s0, %hi(Game_work + 0x50)
    /* FF4C 8001F74C 601B1026 */  addiu      $s0, $s0, %lo(Game_work + 0x50)
    /* FF50 8001F750 1400BFAF */  sw         $ra, 0x14($sp)
    /* FF54 8001F754 00000482 */  lb         $a0, 0x0($s0)
    /* FF58 8001F758 E67D000C */  jal        func_8001F798
    /* FF5C 8001F75C 00000000 */   nop
    /* FF60 8001F760 00000282 */  lb         $v0, 0x0($s0)
    /* FF64 8001F764 00000000 */  nop
    /* FF68 8001F768 80100200 */  sll        $v0, $v0, 2
    /* FF6C 8001F76C 0980013C */  lui        $at, %hi(D_8008980C)
    /* FF70 8001F770 21082200 */  addu       $at, $at, $v0
    /* FF74 8001F774 0C98228C */  lw         $v0, %lo(D_8008980C)($at)
    /* FF78 8001F778 00000000 */  nop
    /* FF7C 8001F77C 09F84000 */  jalr       $v0
    /* FF80 8001F780 00000000 */   nop
    /* FF84 8001F784 1400BF8F */  lw         $ra, 0x14($sp)
    /* FF88 8001F788 1000B08F */  lw         $s0, 0x10($sp)
    /* FF8C 8001F78C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FF90 8001F790 0800E003 */  jr         $ra
    /* FF94 8001F794 00000000 */   nop
.size func_8001F740, . - func_8001F740
