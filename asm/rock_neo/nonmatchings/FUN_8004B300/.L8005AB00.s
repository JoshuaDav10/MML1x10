.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8005AB00
    /* 4B300 8005AB00 0000C28C */  lw         $v0, 0x0($a2)
    /* 4B304 8005AB04 8500C590 */  lbu        $a1, 0x85($a2)
    /* 4B308 8005AB08 8A00C394 */  lhu        $v1, 0x8A($a2)
    /* 4B30C 8005AB0C 25104400 */  or         $v0, $v0, $a0
    /* 4B310 8005AB10 8500C490 */  lbu        $a0, 0x85($a2)
    /* 4B314 8005AB14 21186500 */  addu       $v1, $v1, $a1
    /* 4B318 8005AB18 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4B31C 8005AB1C 8E00C294 */  lhu        $v0, 0x8E($a2)
    /* 4B320 8005AB20 8500C590 */  lbu        $a1, 0x85($a2)
    /* 4B324 8005AB24 8A00C3A4 */  sh         $v1, 0x8A($a2)
    /* 4B328 8005AB28 9200C394 */  lhu        $v1, 0x92($a2)
    /* 4B32C 8005AB2C 21104400 */  addu       $v0, $v0, $a0
    /* 4B330 8005AB30 8500C490 */  lbu        $a0, 0x85($a2)
    /* 4B334 8005AB34 23186500 */  subu       $v1, $v1, $a1
    /* 4B338 8005AB38 8E00C2A4 */  sh         $v0, 0x8E($a2)
    /* 4B33C 8005AB3C 9600C294 */  lhu        $v0, 0x96($a2)
    /* 4B340 8005AB40 8A00C584 */  lh         $a1, 0x8A($a2)
    /* 4B344 8005AB44 9200C3A4 */  sh         $v1, 0x92($a2)
    /* 4B348 8005AB48 9200C384 */  lh         $v1, 0x92($a2)
    /* 4B34C 8005AB4C 23104400 */  subu       $v0, $v0, $a0
    /* 4B350 8005AB50 2A186500 */  slt        $v1, $v1, $a1
    /* 4B354 8005AB54 06006010 */  beqz       $v1, .L8005AB70
    /* 4B358 8005AB58 9600C2A4 */   sh        $v0, 0x96($a2)
    /* 4B35C 8005AB5C FFF9033C */  lui        $v1, (0xF9FFFFFF >> 16)
    /* 4B360 8005AB60 0000C28C */  lw         $v0, 0x0($a2)
    /* 4B364 8005AB64 FFFF6334 */  ori        $v1, $v1, (0xF9FFFFFF & 0xFFFF)
    /* 4B368 8005AB68 24104300 */  and        $v0, $v0, $v1
    /* 4B36C 8005AB6C 0000C2AC */  sw         $v0, 0x0($a2)
  .L8005AB70:
    /* 4B370 8005AB70 0800E003 */  jr         $ra
    /* 4B374 8005AB74 00000000 */   nop
.size .L8005AB00, . - .L8005AB00
