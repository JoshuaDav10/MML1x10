.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D528
    /* 4DD28 8005D528 0C80033C */  lui        $v1, %hi(D_800BBD87)
    /* 4DD2C 8005D52C 87BD6390 */  lbu        $v1, %lo(D_800BBD87)($v1)
    /* 4DD30 8005D530 01000224 */  addiu      $v0, $zero, 0x1
    /* 4DD34 8005D534 0D006210 */  beq        $v1, $v0, .L8005D56C
    /* 4DD38 8005D538 00000000 */   nop
    /* 4DD3C 8005D53C 0C80023C */  lui        $v0, %hi(D_800BBD85)
    /* 4DD40 8005D540 85BD4290 */  lbu        $v0, %lo(D_800BBD85)($v0)
    /* 4DD44 8005D544 00000000 */  nop
    /* 4DD48 8005D548 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4DD4C 8005D54C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4DD50 8005D550 06004010 */  beqz       $v0, .L8005D56C
    /* 4DD54 8005D554 03000224 */   addiu     $v0, $zero, 0x3
    /* 4DD58 8005D558 0C80013C */  lui        $at, %hi(D_800BBD85)
    /* 4DD5C 8005D55C 85BD22A0 */  sb         $v0, %lo(D_800BBD85)($at)
    /* 4DD60 8005D560 06000224 */  addiu      $v0, $zero, 0x6
    /* 4DD64 8005D564 0C80013C */  lui        $at, %hi(D_800BBD81)
    /* 4DD68 8005D568 81BD22A0 */  sb         $v0, %lo(D_800BBD81)($at)
  .L8005D56C:
    /* 4DD6C 8005D56C 0800E003 */  jr         $ra
    /* 4DD70 8005D570 00000000 */   nop
.size func_8005D528, . - func_8005D528
