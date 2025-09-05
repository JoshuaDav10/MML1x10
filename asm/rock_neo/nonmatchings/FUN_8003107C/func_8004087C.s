.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004087C
    /* 3107C 8004087C 21100000 */  addu       $v0, $zero, $zero
    /* 31080 80040880 46002286 */  lh         $v0, 0x46($s1)
    /* 31084 80040884 00000000 */  nop
    /* 31088 80040888 91004018 */  blez       $v0, .L80040AD0
    /* 3108C 8004088C 21100000 */   addu      $v0, $zero, $zero
    /* 31090 80040890 16003086 */  lh         $s0, 0x16($s1)
    /* 31094 80040894 9B23010C */  jal        func_80048E6C
    /* 31098 80040898 21202002 */   addu      $a0, $s1, $zero
    /* 3109C 8004089C 7800238E */  lw         $v1, 0x78($s1)
    /* 310A0 800408A0 00000000 */  nop
    /* 310A4 800408A4 0A006384 */  lh         $v1, 0xA($v1)
    /* 310A8 800408A8 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 310AC 800408AC 23104300 */  subu       $v0, $v0, $v1
.size func_8004087C, . - func_8004087C
