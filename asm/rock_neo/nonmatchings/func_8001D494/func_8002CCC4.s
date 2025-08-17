.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CCC4
    /* 1D4C4 8002CCC4 28006224 */  addiu      $v0, $v1, 0x28
    /* 1D4C8 8002CCC8 000082AC */  sw         $v0, 0x0($a0)
    /* 1D4CC 8002CCCC 4102A228 */  slti       $v0, $a1, 0x241
    /* 1D4D0 8002CCD0 A7004010 */  beqz       $v0, .L8002CF70
    /* 1D4D4 8002CCD4 21B06000 */   addu      $s6, $v1, $zero
    /* 1D4D8 8002CCD8 4000A228 */  slti       $v0, $a1, 0x40
    /* 1D4DC 8002CCDC 04004010 */  beqz       $v0, .L8002CCF0
    /* 1D4E0 8002CCE0 802E023C */   lui       $v0, (0x2E808080 >> 16)
    /* 1D4E4 8002CCE4 80804234 */  ori        $v0, $v0, (0x2E808080 & 0xFFFF)
.size func_8002CCC4, . - func_8002CCC4
