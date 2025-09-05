.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80067420
    /* 57C20 80067420 17004010 */  beqz       $v0, .L80067480
    /* 57C24 80067424 FF006230 */   andi      $v0, $v1, 0xFF
    /* 57C28 80067428 22004014 */  bnez       $v0, .L800674B4
    /* 57C2C 8006742C 05000224 */   addiu     $v0, $zero, 0x5
    /* 57C30 80067430 04000382 */  lb         $v1, 0x4($s0)
    /* 57C34 80067434 01000224 */  addiu      $v0, $zero, 0x1
    /* 57C38 80067438 08006214 */  bne        $v1, $v0, .L8006745C
    /* 57C3C 8006743C 03000424 */   addiu     $a0, $zero, 0x3
    /* 57C40 80067440 0980053C */  lui        $a1, %hi(D_8008CB2C)
    /* 57C44 80067444 2CCBA58C */  lw         $a1, %lo(D_8008CB2C)($a1)
    /* 57C48 80067448 0B4E010C */  jal        MojiTaskExec
    /* 57C4C 8006744C FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 57C50 80067450 06000292 */  lbu        $v0, 0x6($s0)
    /* 57C54 80067454 1C9D0108 */  j          .L80067470
    /* 57C58 80067458 01004224 */   addiu     $v0, $v0, 0x1
  .L8006745C:
    /* 57C5C 8006745C 0980053C */  lui        $a1, %hi(D_8008CB50)
    /* 57C60 80067460 50CBA58C */  lw         $a1, %lo(D_8008CB50)($a1)
    /* 57C64 80067464 0B4E010C */  jal        MojiTaskExec
    /* 57C68 80067468 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 57C6C 8006746C 0A000224 */  addiu      $v0, $zero, 0xA
  .L80067470:
    /* 57C70 80067470 060002A2 */  sb         $v0, 0x6($s0)
    /* 57C74 80067474 0F000224 */  addiu      $v0, $zero, 0xF
    /* 57C78 80067478 E09D0108 */  j          .L80067780
    /* 57C7C 8006747C 0C0002AE */   sw        $v0, 0xC($s0)
.size func_80067420, . - func_80067420
