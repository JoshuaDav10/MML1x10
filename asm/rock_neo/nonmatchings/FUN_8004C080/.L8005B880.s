.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8005B880
    /* 4C080 8005B880 0006043C */  lui        $a0, (0x6000000 >> 16)
    /* 4C084 8005B884 7D00A390 */  lbu        $v1, 0x7D($a1)
    /* 4C088 8005B888 0000A28C */  lw         $v0, 0x0($a1)
    /* 4C08C 8005B88C 02006324 */  addiu      $v1, $v1, 0x2
    /* 4C090 8005B890 7D00A3A0 */  sb         $v1, 0x7D($a1)
    /* 4C094 8005B894 6C00A38C */  lw         $v1, 0x6C($a1)
    /* 4C098 8005B898 25104400 */  or         $v0, $v0, $a0
    /* 4C09C 8005B89C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 4C0A0 8005B8A0 6C00A28C */  lw         $v0, 0x6C($a1)
    /* 4C0A4 8005B8A4 02006390 */  lbu        $v1, 0x2($v1)
    /* 4C0A8 8005B8A8 03004224 */  addiu      $v0, $v0, 0x3
    /* 4C0AC 8005B8AC 6C00A2AC */  sw         $v0, 0x6C($a1)
    /* 4C0B0 8005B8B0 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4C0B4 8005B8B4 2000043C */  lui        $a0, (0x200000 >> 16)
    /* 4C0B8 8005B8B8 B600A3A4 */  sh         $v1, 0xB6($a1)
    /* 4C0BC 8005B8BC B400A3A4 */  sh         $v1, 0xB4($a1)
    /* 4C0C0 8005B8C0 B400A394 */  lhu        $v1, 0xB4($a1)
    /* 4C0C4 8005B8C4 25104400 */  or         $v0, $v0, $a0
    /* 4C0C8 8005B8C8 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4C0CC 8005B8CC B600A294 */  lhu        $v0, 0xB6($a1)
    /* 4C0D0 8005B8D0 7E00A490 */  lbu        $a0, 0x7E($a1)
    /* 4C0D4 8005B8D4 23180300 */  negu       $v1, $v1
    /* 4C0D8 8005B8D8 23100200 */  negu       $v0, $v0
    /* 4C0DC 8005B8DC 8800A3A4 */  sh         $v1, 0x88($a1)
    /* 4C0E0 8005B8E0 40180400 */  sll        $v1, $a0, 1
    /* 4C0E4 8005B8E4 21186400 */  addu       $v1, $v1, $a0
    /* 4C0E8 8005B8E8 80180300 */  sll        $v1, $v1, 2
    /* 4C0EC 8005B8EC 8A00A2A4 */  sh         $v0, 0x8A($a1)
    /* 4C0F0 8005B8F0 B400A294 */  lhu        $v0, 0xB4($a1)
    /* 4C0F4 8005B8F4 B600A494 */  lhu        $a0, 0xB6($a1)
    /* 4C0F8 8005B8F8 21104300 */  addu       $v0, $v0, $v1
    /* 4C0FC 8005B8FC 8C00A2A4 */  sh         $v0, 0x8C($a1)
.size .L8005B880, . - .L8005B880
