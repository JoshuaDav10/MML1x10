.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800398E0
    /* 2A0E0 800398E0 03008018 */  blez       $a0, .L800398F0
    /* 2A0E4 800398E4 00000000 */   nop
    /* 2A0E8 800398E8 0A80013C */  lui        $at, %hi(D_800A395F)
    /* 2A0EC 800398EC 5F3924A0 */  sb         $a0, %lo(D_800A395F)($at)
  .L800398F0:
    /* 2A0F0 800398F0 0800E003 */  jr         $ra
    /* 2A0F4 800398F4 00000000 */   nop
.size func_800398E0, . - func_800398E0
