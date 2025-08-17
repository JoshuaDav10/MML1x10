.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058C08
    /* 49408 80058C08 6C00838C */  lw         $v1, 0x6C($a0)
    /* 4940C 80058C0C 6C00828C */  lw         $v0, 0x6C($a0)
    /* 49410 80058C10 01006390 */  lbu        $v1, 0x1($v1)
    /* 49414 80058C14 02004224 */  addiu      $v0, $v0, 0x2
    /* 49418 80058C18 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 4941C 80058C1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 49420 80058C20 0800E003 */  jr         $ra
    /* 49424 80058C24 3D0083A0 */   sb        $v1, 0x3D($a0)
.size func_80058C08, . - func_80058C08
