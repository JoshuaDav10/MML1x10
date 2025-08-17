.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A480
    /* 2AC80 8003A480 3C090224 */  addiu      $v0, $zero, 0x93C
    /* 2AC84 8003A484 0C1082A7 */  sh         $v0, %gp_rel(D_80098870)($gp)
    /* 2AC88 8003A488 0A80013C */  lui        $at, %hi(D_80098872)
    /* 2AC8C 8003A48C 728822A4 */  sh         $v0, %lo(D_80098872)($at)
    /* 2AC90 8003A490 0A80013C */  lui        $at, %hi(D_80098874)
    /* 2AC94 8003A494 748822A4 */  sh         $v0, %lo(D_80098874)($at)
    /* 2AC98 8003A498 0A80013C */  lui        $at, %hi(D_80098878)
    /* 2AC9C 8003A49C 788822A4 */  sh         $v0, %lo(D_80098878)($at)
    /* 2ACA0 8003A4A0 0A80013C */  lui        $at, %hi(D_8009887A)
    /* 2ACA4 8003A4A4 7A8822A4 */  sh         $v0, %lo(D_8009887A)($at)
    /* 2ACA8 8003A4A8 C4F60224 */  addiu      $v0, $zero, -0x93C
    /* 2ACAC 8003A4AC 0A80013C */  lui        $at, %hi(D_8009887C)
    /* 2ACB0 8003A4B0 7C8822A4 */  sh         $v0, %lo(D_8009887C)($at)
    /* 2ACB4 8003A4B4 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 2ACB8 8003A4B8 F40F82A3 */  sb         $v0, %gp_rel(D_80098858)($gp)
    /* 2ACBC 8003A4BC 0A80013C */  lui        $at, %hi(D_80098859)
    /* 2ACC0 8003A4C0 598822A0 */  sb         $v0, %lo(D_80098859)($at)
    /* 2ACC4 8003A4C4 0A80013C */  lui        $at, %hi(D_8009885A)
    /* 2ACC8 8003A4C8 5A8822A0 */  sb         $v0, %lo(D_8009885A)($at)
    /* 2ACCC 8003A4CC 60000224 */  addiu      $v0, $zero, 0x60
    /* 2ACD0 8003A4D0 0A80013C */  lui        $at, %hi(D_8009885C)
    /* 2ACD4 8003A4D4 5C8822A0 */  sb         $v0, %lo(D_8009885C)($at)
    /* 2ACD8 8003A4D8 0A80013C */  lui        $at, %hi(D_8009885D)
    /* 2ACDC 8003A4DC 5D8822A0 */  sb         $v0, %lo(D_8009885D)($at)
    /* 2ACE0 8003A4E0 0A80013C */  lui        $at, %hi(D_8009885E)
    /* 2ACE4 8003A4E4 5E8822A0 */  sb         $v0, %lo(D_8009885E)($at)
    /* 2ACE8 8003A4E8 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 2ACEC 8003A4EC 0A80013C */  lui        $at, %hi(D_80098880)
    /* 2ACF0 8003A4F0 808820A4 */  sh         $zero, %lo(D_80098880)($at)
    /* 2ACF4 8003A4F4 0A80013C */  lui        $at, %hi(D_80098882)
    /* 2ACF8 8003A4F8 828820A4 */  sh         $zero, %lo(D_80098882)($at)
    /* 2ACFC 8003A4FC 0A80013C */  lui        $at, %hi(D_80098884)
    /* 2AD00 8003A500 848820A4 */  sh         $zero, %lo(D_80098884)($at)
    /* 2AD04 8003A504 0A80013C */  lui        $at, %hi(D_80098860)
    /* 2AD08 8003A508 608820A0 */  sb         $zero, %lo(D_80098860)($at)
    /* 2AD0C 8003A50C 0A80013C */  lui        $at, %hi(D_80098861)
    /* 2AD10 8003A510 618820A0 */  sb         $zero, %lo(D_80098861)($at)
    /* 2AD14 8003A514 0A80013C */  lui        $at, %hi(D_80098862)
    /* 2AD18 8003A518 628820A0 */  sb         $zero, %lo(D_80098862)($at)
    /* 2AD1C 8003A51C 9C1082AF */  sw         $v0, %gp_rel(D_80098900)($gp)
    /* 2AD20 8003A520 0A80013C */  lui        $at, %hi(D_80098904)
    /* 2AD24 8003A524 048922AC */  sw         $v0, %lo(D_80098904)($at)
    /* 2AD28 8003A528 0A80013C */  lui        $at, %hi(D_80098908)
    /* 2AD2C 8003A52C 088922AC */  sw         $v0, %lo(D_80098908)($at)
    /* 2AD30 8003A530 0800E003 */  jr         $ra
    /* 2AD34 8003A534 00000000 */   nop
.size func_8003A480, . - func_8003A480
