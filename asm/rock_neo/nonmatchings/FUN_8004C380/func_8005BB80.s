.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BB80
    /* 4C380 8005BB80 25104300 */  or         $v0, $v0, $v1
    /* 4C384 8005BB84 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4C388 8005BB88 24104400 */  and        $v0, $v0, $a0
    /* 4C38C 8005BB8C 8000C48C */  lw         $a0, 0x80($a2)
    /* 4C390 8005BB90 6C00C38C */  lw         $v1, 0x6C($a2)
    /* 4C394 8005BB94 25104400 */  or         $v0, $v0, $a0
    /* 4C398 8005BB98 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4C39C 8005BB9C 7E00C290 */  lbu        $v0, 0x7E($a2)
    /* 4C3A0 8005BBA0 7F00C490 */  lbu        $a0, 0x7F($a2)
    /* 4C3A4 8005BBA4 03006324 */  addiu      $v1, $v1, 0x3
    /* 4C3A8 8005BBA8 6C00C3AC */  sw         $v1, 0x6C($a2)
    /* 4C3AC 8005BBAC 40180200 */  sll        $v1, $v0, 1
    /* 4C3B0 8005BBB0 21186200 */  addu       $v1, $v1, $v0
    /* 4C3B4 8005BBB4 B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4C3B8 8005BBB8 80180300 */  sll        $v1, $v1, 2
    /* 4C3BC 8005BBBC 21104300 */  addu       $v0, $v0, $v1
    /* 4C3C0 8005BBC0 40180400 */  sll        $v1, $a0, 1
    /* 4C3C4 8005BBC4 21186400 */  addu       $v1, $v1, $a0
    /* 4C3C8 8005BBC8 80180300 */  sll        $v1, $v1, 2
    /* 4C3CC 8005BBCC 8C00C2A4 */  sh         $v0, 0x8C($a2)
    /* 4C3D0 8005BBD0 B600C294 */  lhu        $v0, 0xB6($a2)
    /* 4C3D4 8005BBD4 7E00C490 */  lbu        $a0, 0x7E($a2)
    /* 4C3D8 8005BBD8 21104300 */  addu       $v0, $v0, $v1
    /* 4C3DC 8005BBDC 40180400 */  sll        $v1, $a0, 1
    /* 4C3E0 8005BBE0 21186400 */  addu       $v1, $v1, $a0
    /* 4C3E4 8005BBE4 80180300 */  sll        $v1, $v1, 2
    /* 4C3E8 8005BBE8 9200C2A4 */  sh         $v0, 0x92($a2)
    /* 4C3EC 8005BBEC B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4C3F0 8005BBF0 7F00C490 */  lbu        $a0, 0x7F($a2)
    /* 4C3F4 8005BBF4 21104300 */  addu       $v0, $v0, $v1
    /* 4C3F8 8005BBF8 9400C2A4 */  sh         $v0, 0x94($a2)
    /* 4C3FC 8005BBFC 40100400 */  sll        $v0, $a0, 1
.size func_8005BB80, . - func_8005BB80
