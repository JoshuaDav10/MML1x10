.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel func_8002CC18
    /* 1D418 8002CC18 4400B1AF */  sw         $s1, 0x44($sp)
    /* 1D41C 8002CC1C 4000B0AF */  sw         $s0, 0x40($sp)
    /* 1D420 8002CC20 3800A7AF */  sw         $a3, 0x38($sp)
    /* 1D424 8002CC24 00000C8D */  lw         $t4, 0x0($t0)
    /* 1D428 8002CC28 04000D8D */  lw         $t5, 0x4($t0)
    /* 1D42C 8002CC2C 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 1D430 8002CC30 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 1D434 8002CC34 08000C8D */  lw         $t4, 0x8($t0)
    /* 1D438 8002CC38 0C000D8D */  lw         $t5, 0xC($t0)
    /* 1D43C 8002CC3C 10000E8D */  lw         $t6, 0x10($t0)
    /* 1D440 8002CC40 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 1D444 8002CC44 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 1D448 8002CC48 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 1D44C 8002CC4C 801F083C */  lui        $t0, (0x1F800030 >> 16)
    /* 1D450 8002CC50 30000835 */  ori        $t0, $t0, (0x1F800030 & 0xFFFF)
    /* 1D454 8002CC54 00000C8D */  lw         $t4, 0x0($t0)
    /* 1D458 8002CC58 04000D8D */  lw         $t5, 0x4($t0)
    /* 1D45C 8002CC5C 08000E8D */  lw         $t6, 0x8($t0)
    /* 1D460 8002CC60 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 1D464 8002CC64 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 1D468 8002CC68 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
.size func_8002CC18, . - func_8002CC18
