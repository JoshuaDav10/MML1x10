.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BFC
    /* 483FC 80057BFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 48400 80057C00 1000BFAF */  sw         $ra, 0x10($sp)
    /* 48404 80057C04 1400868C */  lw         $a2, 0x14($a0)
    /* 48408 80057C08 9012858F */  lw         $a1, %gp_rel(D_80098AF4)($gp)
    /* 4840C 80057C0C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 48410 80057C10 140086AC */  sw         $a2, 0x14($a0)
    /* 48414 80057C14 C46F010C */  jal        func_8005BF10
    /* 48418 80057C18 01000424 */   addiu     $a0, $zero, 0x1
    /* 4841C 80057C1C 1000BF8F */  lw         $ra, 0x10($sp)
.size func_80057BFC, . - func_80057BFC
