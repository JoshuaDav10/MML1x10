.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sound_call2
    /* A850 8001A050 0A80033C */  lui        $v1, %hi(D_80098938)
    /* A854 8001A054 3889638C */  lw         $v1, %lo(D_80098938)($v1)
    /* A858 8001A058 0C80023C */  lui        $v0, %hi(D_800BE6D8)
    /* A85C 8001A05C D8E64224 */  addiu      $v0, $v0, %lo(D_800BE6D8)
    /* A860 8001A060 0F006210 */  beq        $v1, $v0, .L8001A0A0
    /* A864 8001A064 01000224 */   addiu     $v0, $zero, 0x1
    /* A868 8001A068 000062A0 */  sb         $v0, 0x0($v1)
    /* A86C 8001A06C 0A80023C */  lui        $v0, %hi(D_80098938)
    /* A870 8001A070 3889428C */  lw         $v0, %lo(D_80098938)($v0)
    /* A874 8001A074 00000000 */  nop
    /* A878 8001A078 020044A4 */  sh         $a0, 0x2($v0)
    /* A87C 8001A07C 0000A38C */  lw         $v1, 0x0($a1)
    /* A880 8001A080 00000000 */  nop
    /* A884 8001A084 040043AC */  sw         $v1, 0x4($v0)
    /* A888 8001A088 0400A38C */  lw         $v1, 0x4($a1)
    /* A88C 8001A08C 00000000 */  nop
    /* A890 8001A090 080043AC */  sw         $v1, 0x8($v0)
    /* A894 8001A094 14004224 */  addiu      $v0, $v0, 0x14
    /* A898 8001A098 0A80013C */  lui        $at, %hi(D_80098938)
    /* A89C 8001A09C 388922AC */  sw         $v0, %lo(D_80098938)($at)
  .L8001A0A0:
    /* A8A0 8001A0A0 0800E003 */  jr         $ra
    /* A8A4 8001A0A4 00000000 */   nop
.size Sound_call2, . - Sound_call2
