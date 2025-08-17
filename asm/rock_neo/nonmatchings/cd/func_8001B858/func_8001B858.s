.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B858
    /* C058 8001B858 0A80023C */  lui        $v0, %hi(D_80098A84)
    /* C05C 8001B85C 848A428C */  lw         $v0, %lo(D_80098A84)($v0)
    /* C060 8001B860 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C064 8001B864 1000BFAF */  sw         $ra, 0x10($sp)
    /* C068 8001B868 0800428C */  lw         $v0, 0x8($v0)
    /* C06C 8001B86C 00000000 */  nop
    /* C070 8001B870 80100200 */  sll        $v0, $v0, 2
    /* C074 8001B874 0880013C */  lui        $at, %hi(D_80087670)
    /* C078 8001B878 21082200 */  addu       $at, $at, $v0
    /* C07C 8001B87C 7076228C */  lw         $v0, %lo(D_80087670)($at)
    /* C080 8001B880 00000000 */  nop
    /* C084 8001B884 09F84000 */  jalr       $v0
    /* C088 8001B888 00000000 */   nop
    /* C08C 8001B88C 1000BF8F */  lw         $ra, 0x10($sp)
    /* C090 8001B890 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C094 8001B894 0800E003 */  jr         $ra
    /* C098 8001B898 00000000 */   nop
.size func_8001B858, . - func_8001B858
