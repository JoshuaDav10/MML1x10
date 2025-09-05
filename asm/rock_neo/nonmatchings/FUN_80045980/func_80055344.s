.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055344
    /* 45B44 80055344 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 45B48 80055348 1000BFAF */  sw         $ra, 0x10($sp)
    /* 45B4C 8005534C 6C00828C */  lw         $v0, 0x6C($a0)
    /* 45B50 80055350 4400858C */  lw         $a1, 0x44($a0)
    /* 45B54 80055354 01004390 */  lbu        $v1, 0x1($v0)
    /* 45B58 80055358 02004690 */  lbu        $a2, 0x2($v0)
    /* 45B5C 8005535C 03004224 */  addiu      $v0, $v0, 0x3
    /* 45B60 80055360 0400A010 */  beqz       $a1, .L80055374
    /* 45B64 80055364 6C0082AC */   sw        $v0, 0x6C($a0)
    /* 45B68 80055368 00260300 */  sll        $a0, $v1, 24
    /* 45B6C 8005536C E4540108 */  j          .L80055390
    /* 45B70 80055370 03260400 */   sra       $a0, $a0, 24
  .L80055374:
    /* 45B74 80055374 00260300 */  sll        $a0, $v1, 24
    /* 45B78 80055378 03260400 */  sra        $a0, $a0, 24
    /* 45B7C 8005537C 80100600 */  sll        $v0, $a2, 2
    /* 45B80 80055380 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 45B84 80055384 21082200 */  addu       $at, $at, $v0
    /* 45B88 80055388 CCCA258C */  lw         $a1, %lo(D_8008CACC)($at)
    /* 45B8C 8005538C FF000624 */  addiu      $a2, $zero, 0xFF
  .L80055390:
    /* 45B90 80055390 0B4E010C */  jal        MojiTaskExec
    /* 45B94 80055394 00000000 */   nop
    /* 45B98 80055398 1000BF8F */  lw         $ra, 0x10($sp)
    /* 45B9C 8005539C 01000224 */  addiu      $v0, $zero, 0x1
    /* 45BA0 800553A0 0800E003 */  jr         $ra
    /* 45BA4 800553A4 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_80055344, . - func_80055344
