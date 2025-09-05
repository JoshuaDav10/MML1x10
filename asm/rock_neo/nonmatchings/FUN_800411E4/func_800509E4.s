.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800509E4
    /* 411E4 800509E4 FF004290 */  lbu        $v0, 0xFF($v0)
    /* 411E8 800509E8 00000000 */  nop
    /* 411EC 800509EC 20004230 */  andi       $v0, $v0, 0x20
    /* 411F0 800509F0 0A004010 */  beqz       $v0, .L80050A1C
.size func_800509E4, . - func_800509E4
