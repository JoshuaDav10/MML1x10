.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048DAC
    /* 395AC 80048DAC 21288000 */  addu       $a1, $a0, $zero
    /* 395B0 80048DB0 00800634 */  ori        $a2, $zero, 0x8000
    /* 395B4 80048DB4 0000A284 */  lh         $v0, 0x0($a1)
    /* 395B8 80048DB8 801F033C */  lui        $v1, (0x1F800040 >> 16)
    /* 395BC 80048DBC 40006390 */  lbu        $v1, (0x1F800040 & 0xFFFF)($v1)
    /* 395C0 80048DC0 801F043C */  lui        $a0, (0x1F800044 >> 16)
    /* 395C4 80048DC4 44008494 */  lhu        $a0, (0x1F800044 & 0xFFFF)($a0)
    /* 395C8 80048DC8 21104600 */  addu       $v0, $v0, $a2
    /* 395CC 80048DCC 43120200 */  sra        $v0, $v0, 9
    /* 395D0 80048DD0 23104300 */  subu       $v0, $v0, $v1
    /* 395D4 80048DD4 2B104400 */  sltu       $v0, $v0, $a0
    /* 395D8 80048DD8 0D004010 */  beqz       $v0, .L80048E10
    /* 395DC 80048DDC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 395E0 80048DE0 0400A284 */  lh         $v0, 0x4($a1)
    /* 395E4 80048DE4 801F033C */  lui        $v1, (0x1F800041 >> 16)
    /* 395E8 80048DE8 41006390 */  lbu        $v1, (0x1F800041 & 0xFFFF)($v1)
    /* 395EC 80048DEC 801F043C */  lui        $a0, (0x1F800046 >> 16)
    /* 395F0 80048DF0 46008494 */  lhu        $a0, (0x1F800046 & 0xFFFF)($a0)
    /* 395F4 80048DF4 21104600 */  addu       $v0, $v0, $a2
    /* 395F8 80048DF8 43120200 */  sra        $v0, $v0, 9
    /* 395FC 80048DFC 23104300 */  subu       $v0, $v0, $v1
    /* 39600 80048E00 2B104400 */  sltu       $v0, $v0, $a0
    /* 39604 80048E04 02004014 */  bnez       $v0, .L80048E10
.size func_80048DAC, . - func_80048DAC
