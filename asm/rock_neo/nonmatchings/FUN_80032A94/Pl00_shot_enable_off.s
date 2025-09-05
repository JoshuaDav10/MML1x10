.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Pl00_shot_enable_off
    /* 32BA0 800423A0 75018290 */  lbu        $v0, 0x175($a0)
    /* 32BA4 800423A4 AC008390 */  lbu        $v1, 0xAC($a0)
    /* 32BA8 800423A8 A4008590 */  lbu        $a1, 0xA4($a0)
    /* 32BAC 800423AC 740180A0 */  sb         $zero, 0x174($a0)
    /* 32BB0 800423B0 770180A0 */  sb         $zero, 0x177($a0)
    /* 32BB4 800423B4 FE004230 */  andi       $v0, $v0, 0xFE
    /* 32BB8 800423B8 750182A0 */  sb         $v0, 0x175($a0)
    /* 32BBC 800423BC 040183A0 */  sb         $v1, 0x104($a0)
    /* 32BC0 800423C0 0800E003 */  jr         $ra
    /* 32BC4 800423C4 000185A0 */   sb        $a1, 0x100($a0)
.size Pl00_shot_enable_off, . - Pl00_shot_enable_off
