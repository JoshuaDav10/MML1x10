.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80030CB8
    /* 214B8 80030CB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 214BC 80030CBC 00010224 */  addiu      $v0, $zero, 0x100
    /* 214C0 80030CC0 00340600 */  sll        $a2, $a2, 16
    /* 214C4 80030CC4 003C0700 */  sll        $a3, $a3, 16
    /* 214C8 80030CC8 03340600 */  sra        $a2, $a2, 16
    /* 214CC 80030CCC 033C0700 */  sra        $a3, $a3, 16
    /* 214D0 80030CD0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 214D4 80030CD4 3CC3000C */  jal        func_80030CF0
    /* 214D8 80030CD8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 214DC 80030CDC 00140200 */  sll        $v0, $v0, 16
    /* 214E0 80030CE0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 214E4 80030CE4 03140200 */  sra        $v0, $v0, 16
    /* 214E8 80030CE8 0800E003 */  jr         $ra
    /* 214EC 80030CEC 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_80030CB8, . - func_80030CB8
