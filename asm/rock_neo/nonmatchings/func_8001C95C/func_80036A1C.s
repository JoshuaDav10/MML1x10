.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80036A1C
    /* 2721C 80036A1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 27220 80036A20 0C80033C */  lui        $v1, %hi(D_800BC81C)
    /* 27224 80036A24 1CC86394 */  lhu        $v1, %lo(D_800BC81C)($v1)
    /* 27228 80036A28 02000224 */  addiu      $v0, $zero, 0x2
    /* 2722C 80036A2C 801F013C */  lui        $at, (0x1F800074 >> 16)
    /* 27230 80036A30 740022A0 */  sb         $v0, (0x1F800074 & 0xFFFF)($at)
    /* 27234 80036A34 00030224 */  addiu      $v0, $zero, 0x300
    /* 27238 80036A38 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2723C 80036A3C 801F013C */  lui        $at, (0x1F800006 >> 16)
    /* 27240 80036A40 060022A4 */  sh         $v0, (0x1F800006 & 0xFFFF)($at)
    /* 27244 80036A44 801F013C */  lui        $at, (0x1F800076 >> 16)
    /* 27248 80036A48 760022A4 */  sh         $v0, (0x1F800076 & 0xFFFF)($at)
    /* 2724C 80036A4C 80200300 */  sll        $a0, $v1, 2
    /* 27250 80036A50 3333822C */  sltiu      $v0, $a0, 0x3333
    /* 27254 80036A54 02004014 */  bnez       $v0, .L80036A60
    /* 27258 80036A58 00000000 */   nop
    /* 2725C 80036A5C 21206000 */  addu       $a0, $v1, $zero
  .L80036A60:
    /* 27260 80036A60 73E8010C */  jal        SetFogNear
    /* 27264 80036A64 80010524 */   addiu     $a1, $zero, 0x180
    /* 27268 80036A68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2726C 80036A6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 27270 80036A70 0800E003 */  jr         $ra
    /* 27274 80036A74 00000000 */   nop
.size func_80036A1C, . - func_80036A1C
