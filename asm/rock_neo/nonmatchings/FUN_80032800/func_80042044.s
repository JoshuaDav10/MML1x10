.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042044
    /* 32844 80042044 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32848 80042048 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3284C 8004204C 28018394 */  lhu        $v1, 0x128($a0)
    /* 32850 80042050 2A018794 */  lhu        $a3, 0x12A($a0)
    /* 32854 80042054 1C018294 */  lhu        $v0, 0x11C($a0)
    /* 32858 80042058 25186700 */  or         $v1, $v1, $a3
    /* 3285C 8004205C 24104300 */  and        $v0, $v0, $v1
    /* 32860 80042060 07004010 */  beqz       $v0, .L80042080
    /* 32864 80042064 21400000 */   addu      $t0, $zero, $zero
    /* 32868 80042068 05004310 */  beq        $v0, $v1, .L80042080
    /* 3286C 8004206C 00000000 */   nop
.size func_80042044, . - func_80042044
