.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800509B0
    /* 411B0 800509B0 23100200 */  negu       $v0, $v0
    /* 411B4 800509B4 2A106200 */  slt        $v0, $v1, $v0
    /* 411B8 800509B8 03004010 */  beqz       $v0, .L800509C8
    /* 411BC 800509BC 0100A338 */   xori      $v1, $a1, 0x1
  .L800509C0:
    /* 411C0 800509C0 01000524 */  addiu      $a1, $zero, 0x1
    /* 411C4 800509C4 0100A338 */  xori       $v1, $a1, 0x1
  .L800509C8:
    /* 411C8 800509C8 14006010 */  beqz       $v1, .L80050A1C
    /* 411CC 800509CC 00000000 */   nop
    /* 411D0 800509D0 02008284 */  lh         $v0, 0x2($a0)
    /* 411D4 800509D4 00000000 */  nop
    /* 411D8 800509D8 09004018 */  blez       $v0, .L80050A00
    /* 411DC 800509DC 00000000 */   nop
    /* 411E0 800509E0 801F023C */  lui        $v0, (0x1F800000 >> 16)
.size .L800509B0, . - .L800509B0
