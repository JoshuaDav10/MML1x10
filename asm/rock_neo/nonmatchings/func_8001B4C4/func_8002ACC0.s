.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel func_8002ACC0
    /* 1B4C0 8002ACC0 10000E8D */  lw         $t6, 0x10($t0)
    /* 1B4C4 8002ACC4 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
.size func_8002ACC0, . - func_8002ACC0
