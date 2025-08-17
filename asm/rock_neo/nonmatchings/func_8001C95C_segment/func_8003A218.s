.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A218
    /* 2AA18 8003A218 0A80023C */  lui        $v0, %hi(D_800A3968)
    /* 2AA1C 8003A21C 6839428C */  lw         $v0, %lo(D_800A3968)($v0)
    /* 2AA20 8003A220 FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 2AA24 8003A224 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 2AA28 8003A228 2A108300 */  slt        $v0, $a0, $v1
    /* 2AA2C 8003A22C 04004010 */  beqz       $v0, .L8003A240
    /* 2AA30 8003A230 23286400 */   subu      $a1, $v1, $a0
    /* 2AA34 8003A234 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 2AA38 8003A238 93E80008 */  j          .L8003A24C
    /* 2AA3C 8003A23C 23108200 */   subu      $v0, $a0, $v0
  .L8003A240:
    /* 2AA40 8003A240 23288300 */  subu       $a1, $a0, $v1
    /* 2AA44 8003A244 00F08224 */  addiu      $v0, $a0, -0x1000
    /* 2AA48 8003A248 23106200 */  subu       $v0, $v1, $v0
  .L8003A24C:
    /* 2AA4C 8003A24C 2A184500 */  slt        $v1, $v0, $a1
    /* 2AA50 8003A250 02006014 */  bnez       $v1, .L8003A25C
    /* 2AA54 8003A254 00000000 */   nop
    /* 2AA58 8003A258 2110A000 */  addu       $v0, $a1, $zero
  .L8003A25C:
    /* 2AA5C 8003A25C 0800E003 */  jr         $ra
    /* 2AA60 8003A260 00000000 */   nop
.size func_8003A218, . - func_8003A218
