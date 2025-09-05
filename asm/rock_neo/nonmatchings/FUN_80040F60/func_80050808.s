.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050808
    /* 41008 80050808 801F033C */  lui        $v1, (0x1F8000D0 >> 16)
    /* 4100C 8005080C D0006384 */  lh         $v1, (0x1F8000D0 & 0xFFFF)($v1)
.size func_80050808, . - func_80050808
    /* 41010 80050810 00000000 */  nop
