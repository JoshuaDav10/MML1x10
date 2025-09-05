.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80067340
    /* 57B40 80067340 031C0300 */  sra        $v1, $v1, 16
    /* 57B44 80067344 08006328 */  slti       $v1, $v1, 0x8
    /* 57B48 80067348 0980023C */  lui        $v0, %hi(D_8008D198)
    /* 57B4C 8006734C 98D1428C */  lw         $v0, %lo(D_8008D198)($v0)
.size func_80067340, . - func_80067340
