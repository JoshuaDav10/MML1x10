.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D8D0
    /* 4E0D0 8005D8D0 03004018 */  blez       $v0, .L8005D8E0
    /* 4E0D4 8005D8D4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4E0D8 8005D8D8 4A760108 */  j          .L8005D928
    /* 4E0DC 8005D8DC 21100000 */   addu      $v0, $zero, $zero
  .L8005D8E0:
    /* 4E0E0 8005D8E0 0C80033C */  lui        $v1, %hi(D_800BBD85)
    /* 4E0E4 8005D8E4 85BD6390 */  lbu        $v1, %lo(D_800BBD85)($v1)
    /* 4E0E8 8005D8E8 00000000 */  nop
    /* 4E0EC 8005D8EC 03006010 */  beqz       $v1, .L8005D8FC
    /* 4E0F0 8005D8F0 03000224 */   addiu     $v0, $zero, 0x3
    /* 4E0F4 8005D8F4 0C006214 */  bne        $v1, $v0, .L8005D928
    /* 4E0F8 8005D8F8 01000224 */   addiu     $v0, $zero, 0x1
  .L8005D8FC:
    /* 4E0FC 8005D8FC 0A008010 */  beqz       $a0, .L8005D928
    /* 4E100 8005D900 21100000 */   addu      $v0, $zero, $zero
    /* 4E104 8005D904 3E75010C */  jal        func_8005D4F8
    /* 4E108 8005D908 00000000 */   nop
    /* 4E10C 8005D90C 0C80013C */  lui        $at, %hi(D_800BBD82)
    /* 4E110 8005D910 82BD20A0 */  sb         $zero, %lo(D_800BBD82)($at)
    /* 4E114 8005D914 0C80013C */  lui        $at, %hi(D_800BBD83)
    /* 4E118 8005D918 83BD20A0 */  sb         $zero, %lo(D_800BBD83)($at)
    /* 4E11C 8005D91C 0C80013C */  lui        $at, %hi(D_800BBD90)
    /* 4E120 8005D920 90BD20A4 */  sh         $zero, %lo(D_800BBD90)($at)
    /* 4E124 8005D924 01000224 */  addiu      $v0, $zero, 0x1
  .L8005D928:
    /* 4E128 8005D928 1000BF8F */  lw         $ra, 0x10($sp)
.size func_8005D8D0, . - func_8005D8D0
