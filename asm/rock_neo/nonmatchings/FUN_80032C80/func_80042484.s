.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042484
    /* 32C84 80042484 12018480 */  lb         $a0, 0x112($a0)
    /* 32C88 80042488 01000224 */  addiu      $v0, $zero, 0x1
    /* 32C8C 8004248C 0C008210 */  beq        $a0, $v0, .L800424C0
    /* 32C90 80042490 02008228 */   slti      $v0, $a0, 0x2
    /* 32C94 80042494 05004010 */  beqz       $v0, .L800424AC
    /* 32C98 80042498 00000000 */   nop
    /* 32C9C 8004249C 0B008010 */  beqz       $a0, .L800424CC
    /* 32CA0 800424A0 41000224 */   addiu     $v0, $zero, 0x41
    /* 32CA4 800424A4 33090108 */  j          .L800424CC
    /* 32CA8 800424A8 40000224 */   addiu     $v0, $zero, 0x40
  .L800424AC:
    /* 32CAC 800424AC 03000224 */  addiu      $v0, $zero, 0x3
    /* 32CB0 800424B0 06008210 */  beq        $a0, $v0, .L800424CC
    /* 32CB4 800424B4 42000224 */   addiu     $v0, $zero, 0x42
    /* 32CB8 800424B8 33090108 */  j          .L800424CC
    /* 32CBC 800424BC 40000224 */   addiu     $v0, $zero, 0x40
  .L800424C0:
    /* 32CC0 800424C0 33090108 */  j          .L800424CC
    /* 32CC4 800424C4 43000224 */   addiu     $v0, $zero, 0x43
  glabel .L800424C8
    /* 32CC8 800424C8 40000224 */  addiu      $v0, $zero, 0x40
  .L800424CC:
    /* 32CCC 800424CC 0800E003 */  jr         $ra
    /* 32CD0 800424D0 00000000 */   nop
.size func_80042484, . - func_80042484
