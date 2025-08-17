.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D854
    /* E054 8001D854 0A80023C */  lui        $v0, %hi(D_80098788)
    /* E058 8001D858 88874290 */  lbu        $v0, %lo(D_80098788)($v0)
    /* E05C 8001D85C 00000000 */  nop
    /* E060 8001D860 03004014 */  bnez       $v0, .L8001D870
    /* E064 8001D864 00000000 */   nop
    /* E068 8001D868 0A80013C */  lui        $at, %hi(D_80098788)
    /* E06C 8001D86C 888724A0 */  sb         $a0, %lo(D_80098788)($at)
  .L8001D870:
    /* E070 8001D870 0800E003 */  jr         $ra
    /* E074 8001D874 00000000 */   nop
.size func_8001D854, . - func_8001D854
