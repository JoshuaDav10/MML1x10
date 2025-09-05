.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C180
    /* 4C980 8005C180 0980013C */  lui        $at, %hi(D_8008AF40)
    /* 4C984 8005C184 21082200 */  addu       $at, $at, $v0
    /* 4C988 8005C188 40AF2294 */  lhu        $v0, %lo(D_8008AF40)($at)
    /* 4C98C 8005C18C 2120E000 */  addu       $a0, $a3, $zero
    /* 4C990 8005C190 80100200 */  sll        $v0, $v0, 2
    /* 4C994 8005C194 0980013C */  lui        $at, %hi(D_8008CAD0)
    /* 4C998 8005C198 21082200 */  addu       $at, $at, $v0
    /* 4C99C 8005C19C D0CA258C */  lw         $a1, %lo(D_8008CAD0)($at)
    /* 4C9A0 8005C1A0 CC0F83A3 */  sb         $v1, %gp_rel(D_80098830)($gp)
    /* 4C9A4 8005C1A4 80700108 */  j          .L8005C200
    /* 4C9A8 8005C1A8 FF000624 */   addiu     $a2, $zero, 0xFF
  .L8005C1AC:
    /* 4C9AC 8005C1AC 40100400 */  sll        $v0, $a0, 1
    /* 4C9B0 8005C1B0 0980013C */  lui        $at, %hi(D_8008AF40)
    /* 4C9B4 8005C1B4 21082200 */  addu       $at, $at, $v0
    /* 4C9B8 8005C1B8 40AF2294 */  lhu        $v0, %lo(D_8008AF40)($at)
    /* 4C9BC 8005C1BC 2120E000 */  addu       $a0, $a3, $zero
    /* 4C9C0 8005C1C0 80100200 */  sll        $v0, $v0, 2
    /* 4C9C4 8005C1C4 0980013C */  lui        $at, %hi(D_8008CAD4)
    /* 4C9C8 8005C1C8 21082200 */  addu       $at, $at, $v0
    /* 4C9CC 8005C1CC D4CA258C */  lw         $a1, %lo(D_8008CAD4)($at)
    /* 4C9D0 8005C1D0 901283AF */  sw         $v1, %gp_rel(D_80098AF4)($gp)
    /* 4C9D4 8005C1D4 80700108 */  j          .L8005C200
    /* 4C9D8 8005C1D8 FF000624 */   addiu     $a2, $zero, 0xFF
  .L8005C1DC:
    /* 4C9DC 8005C1DC 0980013C */  lui        $at, %hi(D_8008AF40)
    /* 4C9E0 8005C1E0 21082200 */  addu       $at, $at, $v0
    /* 4C9E4 8005C1E4 40AF2294 */  lhu        $v0, %lo(D_8008AF40)($at)
    /* 4C9E8 8005C1E8 2120E000 */  addu       $a0, $a3, $zero
    /* 4C9EC 8005C1EC 80100200 */  sll        $v0, $v0, 2
    /* 4C9F0 8005C1F0 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 4C9F4 8005C1F4 21082200 */  addu       $at, $at, $v0
    /* 4C9F8 8005C1F8 CCCA258C */  lw         $a1, %lo(D_8008CACC)($at)
    /* 4C9FC 8005C1FC FF000624 */  addiu      $a2, $zero, 0xFF
  .L8005C200:
    /* 4CA00 8005C200 0B4E010C */  jal        MojiTaskExec
    /* 4CA04 8005C204 00000000 */   nop
  .L8005C208:
    /* 4CA08 8005C208 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4CA0C 8005C20C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4CA10 8005C210 0800E003 */  jr         $ra
    /* 4CA14 8005C214 00000000 */   nop
.size func_8005C180, . - func_8005C180
