.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059B44
    /* 4A344 80059B44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A348 80059B48 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A34C 80059B4C 21888000 */  addu       $s1, $a0, $zero
    /* 4A350 80059B50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A354 80059B54 21800000 */  addu       $s0, $zero, $zero
    /* 4A358 80059B58 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4A35C 80059B5C 9676000C */  jal        Sce_flag_test
    /* 4A360 80059B60 3D020424 */   addiu     $a0, $zero, 0x23D
    /* 4A364 80059B64 09004010 */  beqz       $v0, .L80059B8C
    /* 4A368 80059B68 F4010224 */   addiu     $v0, $zero, 0x1F4
    /* 4A36C 80059B6C 0C80033C */  lui        $v1, %hi(Game_work + 0x28)
    /* 4A370 80059B70 381B638C */  lw         $v1, %lo(Game_work + 0x28)($v1)
    /* 4A374 80059B74 00000000 */  nop
    /* 4A378 80059B78 04006210 */  beq        $v1, $v0, .L80059B8C
    /* 4A37C 80059B7C 00000000 */   nop
.size func_80059B44, . - func_80059B44
