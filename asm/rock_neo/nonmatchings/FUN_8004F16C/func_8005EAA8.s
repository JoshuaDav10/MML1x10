.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005EAA8
    /* 4F2A8 8005EAA8 21380000 */  addu       $a3, $zero, $zero
    /* 4F2AC 8005EAAC 801F0A3C */  lui        $t2, (0x1F800070 >> 16)
    /* 4F2B0 8005EAB0 70004A35 */  ori        $t2, $t2, (0x1F800070 & 0xFFFF)
    /* 4F2B4 8005EAB4 00080E3C */  lui        $t6, (0x8000000 >> 16)
    /* 4F2B8 8005EAB8 00380D3C */  lui        $t5, (0x38000000 >> 16)
    /* 4F2BC 8005EABC 40010C24 */  addiu      $t4, $zero, 0x140
    /* 4F2C0 8005EAC0 FF00093C */  lui        $t1, (0xFFFFFF >> 16)
    /* 4F2C4 8005EAC4 FFFF2935 */  ori        $t1, $t1, (0xFFFFFF & 0xFFFF)
    /* 4F2C8 8005EAC8 00FF0B3C */  lui        $t3, (0xFF000000 >> 16)
  .L8005EACC:
    /* 4F2CC 8005EACC 00210700 */  sll        $a0, $a3, 4
    /* 4F2D0 8005EAD0 0000438D */  lw         $v1, 0x0($t2)
    /* 4F2D4 8005EAD4 23288700 */  subu       $a1, $a0, $a3
    /* 4F2D8 8005EAD8 24006224 */  addiu      $v0, $v1, 0x24
    /* 4F2DC 8005EADC 000042AD */  sw         $v0, 0x0($t2)
    /* 4F2E0 8005EAE0 00006EAC */  sw         $t6, 0x0($v1)
    /* 4F2E4 8005EAE4 0A80013C */  lui        $at, %hi(D_8009806C)
    /* 4F2E8 8005EAE8 21082400 */  addu       $at, $at, $a0
    /* 4F2EC 8005EAEC 6C80228C */  lw         $v0, %lo(D_8009806C)($at)
    /* 4F2F0 8005EAF0 0000668C */  lw         $a2, 0x0($v1)
    /* 4F2F4 8005EAF4 25104D00 */  or         $v0, $v0, $t5
    /* 4F2F8 8005EAF8 040062AC */  sw         $v0, 0x4($v1)
    /* 4F2FC 8005EAFC 0A80013C */  lui        $at, %hi(D_80098070)
    /* 4F300 8005EB00 21082400 */  addu       $at, $at, $a0
    /* 4F304 8005EB04 7080228C */  lw         $v0, %lo(D_80098070)($at)
    /* 4F308 8005EB08 C0280500 */  sll        $a1, $a1, 3
    /* 4F30C 8005EB0C 0C0062AC */  sw         $v0, 0xC($v1)
    /* 4F310 8005EB10 0A80013C */  lui        $at, %hi(D_80098074)
    /* 4F314 8005EB14 21082400 */  addu       $at, $at, $a0
    /* 4F318 8005EB18 7480228C */  lw         $v0, %lo(D_80098074)($at)
.size func_8005EAA8, . - func_8005EAA8
