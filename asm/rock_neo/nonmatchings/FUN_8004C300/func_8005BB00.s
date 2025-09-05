.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BB00
    /* 4C300 8005BB00 0A00C284 */  lh         $v0, 0xA($a2)
    /* 4C304 8005BB04 21186500 */  addu       $v1, $v1, $a1
    /* 4C308 8005BB08 9600C3A4 */  sh         $v1, 0x96($a2)
    /* 4C30C 8005BB0C 8A00C384 */  lh         $v1, 0x8A($a2)
    /* 4C310 8005BB10 B600C494 */  lhu        $a0, 0xB6($a2)
    /* 4C314 8005BB14 21184300 */  addu       $v1, $v0, $v1
    /* 4C318 8005BB18 23104400 */  subu       $v0, $v0, $a0
    /* 4C31C 8005BB1C 2A104300 */  slt        $v0, $v0, $v1
    /* 4C320 8005BB20 59004014 */  bnez       $v0, .L8005BC88
    /* 4C324 8005BB24 FFF7043C */   lui       $a0, (0xF7FFFFFF >> 16)
    /* 4C328 8005BB28 FFFF8434 */  ori        $a0, $a0, (0xF7FFFFFF & 0xFFFF)
    /* 4C32C 8005BB2C F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4C330 8005BB30 2000033C */  lui        $v1, (0x200000 >> 16)
    /* 4C334 8005BB34 25104300 */  or         $v0, $v0, $v1
    /* 4C338 8005BB38 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4C33C 8005BB3C B400C294 */  lhu        $v0, 0xB4($a2)
    /* 4C340 8005BB40 B600C394 */  lhu        $v1, 0xB6($a2)
    /* 4C344 8005BB44 7D00C590 */  lbu        $a1, 0x7D($a2)
    /* 4C348 8005BB48 23100200 */  negu       $v0, $v0
    /* 4C34C 8005BB4C 8800C2A4 */  sh         $v0, 0x88($a2)
    /* 4C350 8005BB50 B600C294 */  lhu        $v0, 0xB6($a2)
    /* 4C354 8005BB54 23180300 */  negu       $v1, $v1
    /* 4C358 8005BB58 8A00C3A4 */  sh         $v1, 0x8A($a2)
    /* 4C35C 8005BB5C B400C394 */  lhu        $v1, 0xB4($a2)
.size func_8005BB00, . - func_8005BB00
