.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BA80
    /* 4C280 8005BA80 21186200 */  addu       $v1, $v1, $v0
    /* 4C284 8005BA84 B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4C288 8005BA88 B600C4A4 */  sh         $a0, 0xB6($a2)
    /* 4C28C 8005BA8C 8C00C3A4 */  sh         $v1, 0x8C($a2)
    /* 4C290 8005BA90 7E00C390 */  lbu        $v1, 0x7E($a2)
    /* 4C294 8005BA94 23100200 */  negu       $v0, $v0
    /* 4C298 8005BA98 9000C2A4 */  sh         $v0, 0x90($a2)
    /* 4C29C 8005BA9C 40100300 */  sll        $v0, $v1, 1
    /* 4C2A0 8005BAA0 21104300 */  addu       $v0, $v0, $v1
    /* 4C2A4 8005BAA4 B400C394 */  lhu        $v1, 0xB4($a2)
    /* 4C2A8 8005BAA8 80100200 */  sll        $v0, $v0, 2
    /* 4C2AC 8005BAAC 21186200 */  addu       $v1, $v1, $v0
    /* 4C2B0 8005BAB0 226F0108 */  j          .L8005BC88
    /* 4C2B4 8005BAB4 9400C3A4 */   sh        $v1, 0x94($a2)
  .L8005BAB8:
    /* 4C2B8 8005BAB8 0010033C */  lui        $v1, (0x10000000 >> 16)
    /* 4C2BC 8005BABC 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C2C0 8005BAC0 8500C490 */  lbu        $a0, 0x85($a2)
    /* 4C2C4 8005BAC4 8500C590 */  lbu        $a1, 0x85($a2)
    /* 4C2C8 8005BAC8 25104300 */  or         $v0, $v0, $v1
    /* 4C2CC 8005BACC 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4C2D0 8005BAD0 8A00C294 */  lhu        $v0, 0x8A($a2)
    /* 4C2D4 8005BAD4 8E00C394 */  lhu        $v1, 0x8E($a2)
    /* 4C2D8 8005BAD8 23104400 */  subu       $v0, $v0, $a0
    /* 4C2DC 8005BADC 8500C490 */  lbu        $a0, 0x85($a2)
    /* 4C2E0 8005BAE0 23186500 */  subu       $v1, $v1, $a1
    /* 4C2E4 8005BAE4 8A00C2A4 */  sh         $v0, 0x8A($a2)
    /* 4C2E8 8005BAE8 9200C294 */  lhu        $v0, 0x92($a2)
    /* 4C2EC 8005BAEC 8500C590 */  lbu        $a1, 0x85($a2)
    /* 4C2F0 8005BAF0 8E00C3A4 */  sh         $v1, 0x8E($a2)
    /* 4C2F4 8005BAF4 9600C394 */  lhu        $v1, 0x96($a2)
    /* 4C2F8 8005BAF8 21104400 */  addu       $v0, $v0, $a0
    /* 4C2FC 8005BAFC 9200C2A4 */  sh         $v0, 0x92($a2)
.size func_8005BA80, . - func_8005BA80
