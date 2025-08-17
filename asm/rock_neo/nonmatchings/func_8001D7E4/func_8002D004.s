.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D004
    /* 1D804 8002D004 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1D808 8002D008 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1D80C 8002D00C AAAA103C */  lui        $s0, (0xAAAAAAAB >> 16)
    /* 1D810 8002D010 ABAA1036 */  ori        $s0, $s0, (0xAAAAAAAB & 0xFFFF)
    /* 1D814 8002D014 1900B000 */  multu      $a1, $s0
    /* 1D818 8002D018 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1D81C 8002D01C 2188C000 */  addu       $s1, $a2, $zero
    /* 1D820 8002D020 0F80043C */  lui        $a0, (0x800F7820 >> 16)
    /* 1D824 8002D024 20788434 */  ori        $a0, $a0, (0x800F7820 & 0xFFFF)
    /* 1D828 8002D028 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1D82C 8002D02C 10380000 */  mfhi       $a3
    /* 1D830 8002D030 82180700 */  srl        $v1, $a3, 2
    /* 1D834 8002D034 40100300 */  sll        $v0, $v1, 1
.size func_8002D004, . - func_8002D004
