.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D39C
    /* 4DB9C 8005D39C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 4DBA0 8005D3A0 21508000 */  addu       $t2, $a0, $zero
    /* 4DBA4 8005D3A4 FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 4DBA8 8005D3A8 0000B0AF */  sw         $s0, 0x0($sp)
    /* 4DBAC 8005D3AC 1800B08F */  lw         $s0, 0x18($sp)
    /* 4DBB0 8005D3B0 04004F85 */  lh         $t7, 0x4($t2)
    /* 4DBB4 8005D3B4 06005885 */  lh         $t8, 0x6($t2)
    /* 4DBB8 8005D3B8 08004D85 */  lh         $t5, 0x8($t2)
    /* 4DBBC 8005D3BC 0A004E85 */  lh         $t6, 0xA($t2)
    /* 4DBC0 8005D3C0 04004010 */  beqz       $v0, .L8005D3D4
    /* 4DBC4 8005D3C4 21C8C000 */   addu      $t9, $a2, $zero
    /* 4DBC8 8005D3C8 FF00EB30 */  andi       $t3, $a3, 0xFF
    /* 4DBCC 8005D3CC F7740108 */  j          .L8005D3DC
    /* 4DBD0 8005D3D0 02620200 */   srl       $t4, $v0, 8
  .L8005D3D4:
    /* 4DBD4 8005D3D4 2158A001 */  addu       $t3, $t5, $zero
    /* 4DBD8 8005D3D8 2160C001 */  addu       $t4, $t6, $zero
  .L8005D3DC:
    /* 4DBDC 8005D3DC 801F043C */  lui        $a0, (0x1F800070 >> 16)
    /* 4DBE0 8005D3E0 70008434 */  ori        $a0, $a0, (0x1F800070 & 0xFFFF)
    /* 4DBE4 8005D3E4 FF00083C */  lui        $t0, (0xFFFFFF >> 16)
    /* 4DBE8 8005D3E8 FFFF0835 */  ori        $t0, $t0, (0xFFFFFF & 0xFFFF)
    /* 4DBEC 8005D3EC 0C004991 */  lbu        $t1, 0xC($t2)
    /* 4DBF0 8005D3F0 0000838C */  lw         $v1, 0x0($a0)
    /* 4DBF4 8005D3F4 0D004691 */  lbu        $a2, 0xD($t2)
    /* 4DBF8 8005D3F8 28006224 */  addiu      $v0, $v1, 0x28
    /* 4DBFC 8005D3FC 000082AC */  sw         $v0, 0x0($a0)
    /* 4DC00 8005D400 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* 4DC04 8005D404 000062AC */  sw         $v0, 0x0($v1)
    /* 4DC08 8005D408 24100802 */  and        $v0, $s0, $t0
    /* 4DC0C 8005D40C 002C043C */  lui        $a0, (0x2C000000 >> 16)
    /* 4DC10 8005D410 25104400 */  or         $v0, $v0, $a0
    /* 4DC14 8005D414 0000678C */  lw         $a3, 0x0($v1)
    /* 4DC18 8005D418 2120AF00 */  addu       $a0, $a1, $t7
.size func_8005D39C, . - func_8005D39C
