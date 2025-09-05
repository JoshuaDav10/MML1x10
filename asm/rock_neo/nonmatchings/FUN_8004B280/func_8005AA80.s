.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AA80
    /* 4B280 8005AA80 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4B284 8005AA84 7E00C290 */  lbu        $v0, 0x7E($a2)
    /* 4B288 8005AA88 7F00C490 */  lbu        $a0, 0x7F($a2)
    /* 4B28C 8005AA8C 03006324 */  addiu      $v1, $v1, 0x3
    /* 4B290 8005AA90 6C00C3AC */  sw         $v1, 0x6C($a2)
    /* 4B294 8005AA94 40180200 */  sll        $v1, $v0, 1
    /* 4B298 8005AA98 21186200 */  addu       $v1, $v1, $v0
    /* 4B29C 8005AA9C B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4B2A0 8005AAA0 80180300 */  sll        $v1, $v1, 2
    /* 4B2A4 8005AAA4 21104300 */  addu       $v0, $v0, $v1
    /* 4B2A8 8005AAA8 40180400 */  sll        $v1, $a0, 1
    /* 4B2AC 8005AAAC 21186400 */  addu       $v1, $v1, $a0
    /* 4B2B0 8005AAB0 80180300 */  sll        $v1, $v1, 2
    /* 4B2B4 8005AAB4 8C00C2A4 */  sh         $v0, 0x8C($a2)
    /* 4B2B8 8005AAB8 B600C294 */  lhu        $v0, 0xB6($a2)
    /* 4B2BC 8005AABC 7E00C490 */  lbu        $a0, 0x7E($a2)
    /* 4B2C0 8005AAC0 21104300 */  addu       $v0, $v0, $v1
    /* 4B2C4 8005AAC4 40180400 */  sll        $v1, $a0, 1
    /* 4B2C8 8005AAC8 21186400 */  addu       $v1, $v1, $a0
    /* 4B2CC 8005AACC 80180300 */  sll        $v1, $v1, 2
    /* 4B2D0 8005AAD0 9200C2A4 */  sh         $v0, 0x92($a2)
    /* 4B2D4 8005AAD4 B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4B2D8 8005AAD8 7F00C490 */  lbu        $a0, 0x7F($a2)
    /* 4B2DC 8005AADC 21104300 */  addu       $v0, $v0, $v1
    /* 4B2E0 8005AAE0 9400C2A4 */  sh         $v0, 0x94($a2)
    /* 4B2E4 8005AAE4 40100400 */  sll        $v0, $a0, 1
    /* 4B2E8 8005AAE8 21104400 */  addu       $v0, $v0, $a0
    /* 4B2EC 8005AAEC B600C394 */  lhu        $v1, 0xB6($a2)
    /* 4B2F0 8005AAF0 80100200 */  sll        $v0, $v0, 2
    /* 4B2F4 8005AAF4 21186200 */  addu       $v1, $v1, $v0
    /* 4B2F8 8005AAF8 DC6A0108 */  j          .L8005AB70
    /* 4B2FC 8005AAFC 9600C3A4 */   sh        $v1, 0x96($a2)
.size func_8005AA80, . - func_8005AA80
