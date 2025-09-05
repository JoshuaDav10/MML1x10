.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AA00
    /* 4B200 8005AA00 23104400 */  subu       $v0, $v0, $a0
    /* 4B204 8005AA04 2A104300 */  slt        $v0, $v0, $v1
    /* 4B208 8005AA08 59004014 */  bnez       $v0, .L8005AB70
    /* 4B20C 8005AA0C FFF7043C */   lui       $a0, (0xF7FFFFFF >> 16)
    /* 4B210 8005AA10 FFFF8434 */  ori        $a0, $a0, (0xF7FFFFFF & 0xFFFF)
    /* 4B214 8005AA14 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4B218 8005AA18 2000033C */  lui        $v1, (0x200000 >> 16)
    /* 4B21C 8005AA1C 25104300 */  or         $v0, $v0, $v1
    /* 4B220 8005AA20 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4B224 8005AA24 B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4B228 8005AA28 B600C394 */  lhu        $v1, 0xB6($a2)
    /* 4B22C 8005AA2C 7D00C590 */  lbu        $a1, 0x7D($a2)
    /* 4B230 8005AA30 23100200 */  negu       $v0, $v0
    /* 4B234 8005AA34 8800C2A4 */  sh         $v0, 0x88($a2)
    /* 4B238 8005AA38 B600C294 */  lhu        $v0, 0xB6($a2)
    /* 4B23C 8005AA3C 23180300 */  negu       $v1, $v1
    /* 4B240 8005AA40 8A00C3A4 */  sh         $v1, 0x8A($a2)
    /* 4B244 8005AA44 B400C394 */  lhu        $v1, 0xB4($a2)
    /* 4B248 8005AA48 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4B24C 8005AA4C 7D00C5A0 */  sb         $a1, 0x7D($a2)
    /* 4B250 8005AA50 23100200 */  negu       $v0, $v0
    /* 4B254 8005AA54 8E00C2A4 */  sh         $v0, 0x8E($a2)
    /* 4B258 8005AA58 0000C28C */  lw         $v0, 0x0($a2)
    /* 4B25C 8005AA5C 23180300 */  negu       $v1, $v1
    /* 4B260 8005AA60 9000C3A4 */  sh         $v1, 0x90($a2)
    /* 4B264 8005AA64 0012033C */  lui        $v1, (0x12000000 >> 16)
    /* 4B268 8005AA68 25104300 */  or         $v0, $v0, $v1
    /* 4B26C 8005AA6C 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4B270 8005AA70 24104400 */  and        $v0, $v0, $a0
    /* 4B274 8005AA74 8000C48C */  lw         $a0, 0x80($a2)
    /* 4B278 8005AA78 6C00C38C */  lw         $v1, 0x6C($a2)
    /* 4B27C 8005AA7C 25104400 */  or         $v0, $v0, $a0
.size func_8005AA00, . - func_8005AA00
