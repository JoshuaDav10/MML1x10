.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037594
    /* 27D94 80037594 0B80033C */  lui        $v1, %hi(Player_work + 0x172)
    /* 27D98 80037598 22536380 */  lb         $v1, %lo(Player_work + 0x172)($v1)
    /* 27D9C 8003759C 0B80023C */  lui        $v0, %hi(Player_work)
    /* 27DA0 800375A0 B0514224 */  addiu      $v0, $v0, %lo(Player_work)
    /* 27DA4 800375A4 C0200300 */  sll        $a0, $v1, 3
    /* 27DA8 800375A8 21208200 */  addu       $a0, $a0, $v0
    /* 27DAC 800375AC 80180300 */  sll        $v1, $v1, 2
    /* 27DB0 800375B0 F5048280 */  lb         $v0, 0x4F5($a0)
    /* 27DB4 800375B4 0980013C */  lui        $at, %hi(D_80089EAC)
    /* 27DB8 800375B8 21082300 */  addu       $at, $at, $v1
    /* 27DBC 800375BC AC9E238C */  lw         $v1, %lo(D_80089EAC)($at)
    /* 27DC0 800375C0 C0100200 */  sll        $v0, $v0, 3
    /* 27DC4 800375C4 21104300 */  addu       $v0, $v0, $v1
    /* 27DC8 800375C8 02004294 */  lhu        $v0, 0x2($v0)
    /* 27DCC 800375CC 0800E003 */  jr         $ra
    /* 27DD0 800375D0 FA0482A4 */   sh        $v0, 0x4FA($a0)
.size func_80037594, . - func_80037594
