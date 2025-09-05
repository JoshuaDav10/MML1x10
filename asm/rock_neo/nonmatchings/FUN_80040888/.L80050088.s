.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80050088
    /* 40888 80050088 12100000 */  mflo       $v0
    /* 4088C 8005008C 801F033C */  lui        $v1, (0x1F8000D2 >> 16)
    /* 40890 80050090 D2006384 */  lh         $v1, (0x1F8000D2 & 0xFFFF)($v1)
    /* 40894 80050094 1000A4A7 */  sh         $a0, 0x10($sp)
    /* 40898 80050098 05006018 */  blez       $v1, .L800500B0
    /* 4089C 8005009C 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 408A0 800500A0 801F023C */  lui        $v0, (0x1F8000F2 >> 16)
    /* 408A4 800500A4 F2004294 */  lhu        $v0, (0x1F8000F2 & 0xFFFF)($v0)
    /* 408A8 800500A8 2E400108 */  j          .L800500B8
    /* 408AC 800500AC 00000000 */   nop
.size .L80050088, . - .L80050088
