.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D928
    /* E128 8001D928 08008014 */  bnez       $a0, .L8001D94C
    /* E12C 8001D92C 00000000 */   nop
    /* E130 8001D930 0C80033C */  lui        $v1, %hi(D_800BE438)
    /* E134 8001D934 38E46324 */  addiu      $v1, $v1, %lo(D_800BE438)
    /* E138 8001D938 0F000224 */  addiu      $v0, $zero, 0xF
  .L8001D93C:
    /* E13C 8001D93C 000060AC */  sw         $zero, 0x0($v1)
    /* E140 8001D940 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E144 8001D944 FDFF4104 */  bgez       $v0, .L8001D93C
    /* E148 8001D948 04006324 */   addiu     $v1, $v1, 0x4
  .L8001D94C:
    /* E14C 8001D94C 0C80013C */  lui        $at, %hi(Scene_work)
    /* E150 8001D950 484C20AC */  sw         $zero, %lo(Scene_work)($at)
    /* E154 8001D954 0A80013C */  lui        $at, %hi(D_800989F8)
    /* E158 8001D958 F88920AC */  sw         $zero, %lo(D_800989F8)($at)
    /* E15C 8001D95C 0A80013C */  lui        $at, %hi(D_800989FC)
    /* E160 8001D960 FC8920AC */  sw         $zero, %lo(D_800989FC)($at)
    /* E164 8001D964 0A80013C */  lui        $at, %hi(D_80098A00)
    /* E168 8001D968 008A20AC */  sw         $zero, %lo(D_80098A00)($at)
    /* E16C 8001D96C 0800E003 */  jr         $ra
    /* E170 8001D970 00000000 */   nop
.size func_8001D928, . - func_8001D928
