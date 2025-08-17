.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057144
    /* 47944 80057144 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 47948 80057148 0C80033C */  lui        $v1, %hi(Game_work + 0x1C)
    /* 4794C 8005714C 2C1B638C */  lw         $v1, %lo(Game_work + 0x1C)($v1)
    /* 47950 80057150 21108000 */  addu       $v0, $a0, $zero
    /* 47954 80057154 1000BFAF */  sw         $ra, 0x10($sp)
    /* 47958 80057158 1400468C */  lw         $a2, 0x14($v0)
    /* 4795C 8005715C 21200000 */  addu       $a0, $zero, $zero
    /* 47960 80057160 400043AC */  sw         $v1, 0x40($v0)
    /* 47964 80057164 4000458C */  lw         $a1, 0x40($v0)
    /* 47968 80057168 0100C624 */  addiu      $a2, $a2, 0x1
    /* 4796C 8005716C C46F010C */  jal        func_8005BF10
    /* 47970 80057170 140046AC */   sw        $a2, 0x14($v0)
    /* 47974 80057174 1000BF8F */  lw         $ra, 0x10($sp)
    /* 47978 80057178 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4797C 8005717C 0800E003 */  jr         $ra
    /* 47980 80057180 00000000 */   nop
.size func_80057144, . - func_80057144
