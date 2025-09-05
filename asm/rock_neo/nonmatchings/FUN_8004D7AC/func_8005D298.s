.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D298
    /* 4DA98 8005D298 21508000 */  addu       $t2, $a0, $zero
    /* 4DA9C 8005D29C FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 4DAA0 8005D2A0 04004F85 */  lh         $t7, 0x4($t2)
    /* 4DAA4 8005D2A4 06005885 */  lh         $t8, 0x6($t2)
    /* 4DAA8 8005D2A8 08004D85 */  lh         $t5, 0x8($t2)
    /* 4DAAC 8005D2AC 0A004E85 */  lh         $t6, 0xA($t2)
    /* 4DAB0 8005D2B0 04004010 */  beqz       $v0, .L8005D2C4
    /* 4DAB4 8005D2B4 21C8C000 */   addu      $t9, $a2, $zero
    /* 4DAB8 8005D2B8 FF00EB30 */  andi       $t3, $a3, 0xFF
    /* 4DABC 8005D2BC B3740108 */  j          .L8005D2CC
    /* 4DAC0 8005D2C0 02620200 */   srl       $t4, $v0, 8
  .L8005D2C4:
    /* 4DAC4 8005D2C4 2158A001 */  addu       $t3, $t5, $zero
    /* 4DAC8 8005D2C8 2160C001 */  addu       $t4, $t6, $zero
  .L8005D2CC:
    /* 4DACC 8005D2CC 801F043C */  lui        $a0, (0x1F800070 >> 16)
    /* 4DAD0 8005D2D0 70008434 */  ori        $a0, $a0, (0x1F800070 & 0xFFFF)
    /* 4DAD4 8005D2D4 FF00083C */  lui        $t0, (0xFFFFFF >> 16)
    /* 4DAD8 8005D2D8 0C004991 */  lbu        $t1, 0xC($t2)
    /* 4DADC 8005D2DC 0000838C */  lw         $v1, 0x0($a0)
    /* 4DAE0 8005D2E0 0D004691 */  lbu        $a2, 0xD($t2)
    /* 4DAE4 8005D2E4 28006224 */  addiu      $v0, $v1, 0x28
    /* 4DAE8 8005D2E8 000082AC */  sw         $v0, 0x0($a0)
    /* 4DAEC 8005D2EC 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* 4DAF0 8005D2F0 000062AC */  sw         $v0, 0x0($v1)
    /* 4DAF4 8005D2F4 0000678C */  lw         $a3, 0x0($v1)
    /* 4DAF8 8005D2F8 0000428D */  lw         $v0, 0x0($t2)
    /* 4DAFC 8005D2FC 2120AF00 */  addu       $a0, $a1, $t7
    /* 4DB00 8005D300 040062AC */  sw         $v0, 0x4($v1)
    /* 4DB04 8005D304 0C00428D */  lw         $v0, 0xC($t2)
    /* 4DB08 8005D308 21288B00 */  addu       $a1, $a0, $t3
    /* 4DB0C 8005D30C 0C0062AC */  sw         $v0, 0xC($v1)
    /* 4DB10 8005D310 12004A95 */  lhu        $t2, 0x12($t2)
    /* 4DB14 8005D314 21103803 */  addu       $v0, $t9, $t8
    /* 4DB18 8005D318 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 4DB1C 8005D31C 120062A4 */  sh         $v0, 0x12($v1)
    /* 4DB20 8005D320 21104C00 */  addu       $v0, $v0, $t4
    /* 4DB24 8005D324 1A0062A4 */  sh         $v0, 0x1A($v1)
    /* 4DB28 8005D328 220062A4 */  sh         $v0, 0x22($v1)
    /* 4DB2C 8005D32C 21102D01 */  addu       $v0, $t1, $t5
    /* 4DB30 8005D330 150066A0 */  sb         $a2, 0x15($v1)
    /* 4DB34 8005D334 2130CE00 */  addu       $a2, $a2, $t6
    /* 4DB38 8005D338 080064A4 */  sh         $a0, 0x8($v1)
    /* 4DB3C 8005D33C 180064A4 */  sh         $a0, 0x18($v1)
    /* 4DB40 8005D340 140062A0 */  sb         $v0, 0x14($v1)
    /* 4DB44 8005D344 1C0069A0 */  sb         $t1, 0x1C($v1)
    /* 4DB48 8005D348 1D0066A0 */  sb         $a2, 0x1D($v1)
    /* 4DB4C 8005D34C 240062A0 */  sb         $v0, 0x24($v1)
    /* 4DB50 8005D350 250066A0 */  sb         $a2, 0x25($v1)
    /* 4DB54 8005D354 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4DB58 8005D358 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4DB5C 8005D35C FFFF0835 */  ori        $t0, $t0, (0xFFFFFF & 0xFFFF)
    /* 4DB60 8005D360 100065A4 */  sh         $a1, 0x10($v1)
    /* 4DB64 8005D364 200065A4 */  sh         $a1, 0x20($v1)
    /* 4DB68 8005D368 00FF053C */  lui        $a1, (0xFF000000 >> 16)
    /* 4DB6C 8005D36C 16006AA4 */  sh         $t2, 0x16($v1)
    /* 4DB70 8005D370 7800828C */  lw         $v0, 0x78($a0)
    /* 4DB74 8005D374 2438E500 */  and        $a3, $a3, $a1
    /* 4DB78 8005D378 24104800 */  and        $v0, $v0, $t0
    /* 4DB7C 8005D37C 2538E200 */  or         $a3, $a3, $v0
    /* 4DB80 8005D380 000067AC */  sw         $a3, 0x0($v1)
    /* 4DB84 8005D384 7800828C */  lw         $v0, 0x78($a0)
.size func_8005D298, . - func_8005D298
