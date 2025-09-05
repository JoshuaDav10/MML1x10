.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042154
    /* 32954 80042154 1C018294 */  lhu        $v0, 0x11C($a0)
    /* 32958 80042158 00000000 */  nop
    /* 3295C 8004215C 24104700 */  and        $v0, $v0, $a3
    /* 32960 80042160 0F004010 */  beqz       $v0, .L800421A0
    /* 32964 80042164 F0FFBD27 */   addiu     $sp, $sp, -0x10
    /* 32968 80042168 B4008284 */  lh         $v0, 0xB4($a0)
    /* 3296C 8004216C 01000724 */  addiu      $a3, $zero, 0x1
    /* 32970 80042170 0F004004 */  bltz       $v0, .L800421B0
    /* 32974 80042174 21184000 */   addu      $v1, $v0, $zero
.size func_80042154, . - func_80042154
