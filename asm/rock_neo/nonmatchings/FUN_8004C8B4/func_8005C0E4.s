.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C0E4
    /* 4C8E4 8005C0E4 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 4C8E8 8005C0E8 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 4C8EC 8005C0EC 19008200 */  multu      $a0, $v0
    /* 4C8F0 8005C0F0 10300000 */  mfhi       $a2
    /* 4C8F4 8005C0F4 C2180600 */  srl        $v1, $a2, 3
    /* 4C8F8 8005C0F8 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4C8FC 8005C0FC 21082300 */  addu       $at, $at, $v1
    /* 4C900 8005C100 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4C904 8005C104 00000000 */  nop
    /* 4C908 8005C108 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 4C90C 8005C10C 80100300 */  sll        $v0, $v1, 2
    /* 4C910 8005C110 21104300 */  addu       $v0, $v0, $v1
    /* 4C914 8005C114 40100200 */  sll        $v0, $v0, 1
    /* 4C918 8005C118 23208200 */  subu       $a0, $a0, $v0
    /* 4C91C 8005C11C 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4C920 8005C120 21082400 */  addu       $at, $at, $a0
    /* 4C924 8005C124 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4C928 8005C128 0000A390 */  lbu        $v1, 0x0($a1)
    /* 4C92C 8005C12C 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 4C930 8005C130 0980023C */  lui        $v0, %hi(D_8008D028)
    /* 4C934 8005C134 28D04290 */  lbu        $v0, %lo(D_8008D028)($v0)
    /* 4C938 8005C138 00000000 */  nop
    /* 4C93C 8005C13C 02006214 */  bne        $v1, $v0, .L8005C148
    /* 4C940 8005C140 4F000224 */   addiu     $v0, $zero, 0x4F
.size func_8005C0E4, . - func_8005C0E4
