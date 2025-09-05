.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044678
    /* 34E78 80044678 47120108 */  j          .L8004491C
    /* 34E7C 8004467C 0800A2A0 */   sb        $v0, 0x8($a1)
  .L80044680:
    /* 34E80 80044680 0D00A280 */  lb         $v0, 0xD($a1)
    /* 34E84 80044684 00000000 */  nop
    /* 34E88 80044688 C0200200 */  sll        $a0, $v0, 3
    /* 34E8C 8004468C 00140300 */  sll        $v0, $v1, 16
    /* 34E90 80044690 0980013C */  lui        $at, (0x80090000 >> 16)
.size func_80044678, . - func_80044678
