.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002C32C
    /* 1CB2C 8002C32C C2110400 */  srl        $v0, $a0, 7
    /* 1CB30 8002C330 00FF4230 */  andi       $v0, $v0, 0xFF00
    /* 1CB34 8002C334 25186200 */  or         $v1, $v1, $v0
    /* 1CB38 8002C338 12300000 */  mflo       $a2
    /* 1CB3C 8002C33C C2110600 */  srl        $v0, $a2, 7
    /* 1CB40 8002C340 24104C00 */  and        $v0, $v0, $t4
    /* 1CB44 8002C344 25306200 */  or         $a2, $v1, $v0
    /* 1CB48 8002C348 1000A6AC */  sw         $a2, 0x10($a1)
    /* 1CB4C 8002C34C 0000468D */  lw         $a2, 0x0($t2)
    /* 1CB50 8002C350 00000000 */  nop
    /* 1CB54 8002C354 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 1CB58 8002C358 18005100 */  mult       $v0, $s1
    /* 1CB5C 8002C35C 12180000 */  mflo       $v1
    /* 1CB60 8002C360 00FFC230 */  andi       $v0, $a2, 0xFF00
    /* 1CB64 8002C364 00000000 */  nop
    /* 1CB68 8002C368 18005000 */  mult       $v0, $s0
    /* 1CB6C 8002C36C 12200000 */  mflo       $a0
    /* 1CB70 8002C370 2410CC00 */  and        $v0, $a2, $t4
    /* 1CB74 8002C374 00000000 */  nop
    /* 1CB78 8002C378 18005900 */  mult       $v0, $t9
    /* 1CB7C 8002C37C 0C005226 */  addiu      $s2, $s2, 0xC
    /* 1CB80 8002C380 0C004A25 */  addiu      $t2, $t2, 0xC
    /* 1CB84 8002C384 C2190300 */  srl        $v1, $v1, 7
    /* 1CB88 8002C388 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1CB8C 8002C38C C2110400 */  srl        $v0, $a0, 7
    /* 1CB90 8002C390 00FF4230 */  andi       $v0, $v0, 0xFF00
    /* 1CB94 8002C394 25186200 */  or         $v1, $v1, $v0
    /* 1CB98 8002C398 12300000 */  mflo       $a2
    /* 1CB9C 8002C39C C2110600 */  srl        $v0, $a2, 7
    /* 1CBA0 8002C3A0 24104C00 */  and        $v0, $v0, $t4
    /* 1CBA4 8002C3A4 25306200 */  or         $a2, $v1, $v0
    /* 1CBA8 8002C3A8 1C00A6AC */  sw         $a2, 0x1C($a1)
    /* 1CBAC 8002C3AC 0000C295 */  lhu        $v0, 0x0($t6)
    /* 1CBB0 8002C3B0 0C00CE25 */  addiu      $t6, $t6, 0xC
    /* 1CBB4 8002C3B4 801F033C */  lui        $v1, (0x1F8000E0 >> 16)
    /* 1CBB8 8002C3B8 E000638C */  lw         $v1, (0x1F8000E0 & 0xFFFF)($v1)
    /* 1CBBC 8002C3BC 2510C203 */  or         $v0, $fp, $v0
    /* 1CBC0 8002C3C0 25104300 */  or         $v0, $v0, $v1
    /* 1CBC4 8002C3C4 0C00A2AC */  sw         $v0, 0xC($a1)
    /* 1CBC8 8002C3C8 FEFFE394 */  lhu        $v1, -0x2($a3)
    /* 1CBCC 8002C3CC 2000023C */  lui        $v0, (0x200000 >> 16)
    /* 1CBD0 8002C3D0 2518E302 */  or         $v1, $s7, $v1
    /* 1CBD4 8002C3D4 25186200 */  or         $v1, $v1, $v0
    /* 1CBD8 8002C3D8 1800A3AC */  sw         $v1, 0x18($a1)
    /* 1CBDC 8002C3DC 0000E294 */  lhu        $v0, 0x0($a3)
    /* 1CBE0 8002C3E0 0C00E724 */  addiu      $a3, $a3, 0xC
    /* 1CBE4 8002C3E4 61FFE015 */  bnez       $t7, .L8002C16C
    /* 1CBE8 8002C3E8 2400A2AC */   sw        $v0, 0x24($a1)
    /* 1CBEC 8002C3EC 000C153C */  lui        $s5, (0xC000000 >> 16)
    /* 1CBF0 8002C3F0 0100AF91 */  lbu        $t7, 0x1($t5)
    /* 1CBF4 8002C3F4 0800AE8D */  lw         $t6, 0x8($t5)
    /* 1CBF8 8002C3F8 003E023C */  lui        $v0, (0x3E000000 >> 16)
    /* 1CBFC 8002C3FC 0000A2AF */  sw         $v0, 0x0($sp)
    /* 1CC00 8002C400 0000A6CB */  lwc2       $6, 0x0($sp)
.size func_8002C32C, . - func_8002C32C
