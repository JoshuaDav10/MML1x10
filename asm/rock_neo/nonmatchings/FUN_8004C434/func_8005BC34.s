.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BC34
    /* 4C434 8005BC34 8E00C294 */  lhu        $v0, 0x8E($a2)
    /* 4C438 8005BC38 8500C590 */  lbu        $a1, 0x85($a2)
    /* 4C43C 8005BC3C 8A00C3A4 */  sh         $v1, 0x8A($a2)
    /* 4C440 8005BC40 9200C394 */  lhu        $v1, 0x92($a2)
    /* 4C444 8005BC44 21104400 */  addu       $v0, $v0, $a0
    /* 4C448 8005BC48 8500C490 */  lbu        $a0, 0x85($a2)
    /* 4C44C 8005BC4C 23186500 */  subu       $v1, $v1, $a1
    /* 4C450 8005BC50 8E00C2A4 */  sh         $v0, 0x8E($a2)
    /* 4C454 8005BC54 9600C294 */  lhu        $v0, 0x96($a2)
    /* 4C458 8005BC58 8A00C584 */  lh         $a1, 0x8A($a2)
    /* 4C45C 8005BC5C 9200C3A4 */  sh         $v1, 0x92($a2)
    /* 4C460 8005BC60 9200C384 */  lh         $v1, 0x92($a2)
    /* 4C464 8005BC64 23104400 */  subu       $v0, $v0, $a0
    /* 4C468 8005BC68 2A186500 */  slt        $v1, $v1, $a1
    /* 4C46C 8005BC6C 06006010 */  beqz       $v1, .L8005BC88
    /* 4C470 8005BC70 9600C2A4 */   sh        $v0, 0x96($a2)
    /* 4C474 8005BC74 FFF9033C */  lui        $v1, (0xF9FFFFFF >> 16)
    /* 4C478 8005BC78 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C47C 8005BC7C FFFF6334 */  ori        $v1, $v1, (0xF9FFFFFF & 0xFFFF)
.size func_8005BC34, . - func_8005BC34
