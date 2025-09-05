.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D8C4
    /* 4E0C4 8005D8C4 0C80023C */  lui        $v0, %hi(D_800BBD94)
    /* 4E0C8 8005D8C8 94BD4284 */  lh         $v0, %lo(D_800BBD94)($v0)
    /* 4E0CC 8005D8CC E8FFBD27 */  addiu      $sp, $sp, -0x18
.size func_8005D8C4, . - func_8005D8C4
