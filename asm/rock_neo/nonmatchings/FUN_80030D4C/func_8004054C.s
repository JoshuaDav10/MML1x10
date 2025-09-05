.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004054C
    /* 30D4C 8004054C 21100000 */  addu       $v0, $zero, $zero
    /* 30D50 80040550 01000224 */  addiu      $v0, $zero, 0x1
    /* 30D54 80040554 1201C490 */  lbu        $a0, 0x112($a2)
    /* 30D58 80040558 02000324 */  addiu      $v1, $zero, 0x2
    /* 30D5C 8004055C 0900C3A0 */  sb         $v1, 0x9($a2)
    /* 30D60 80040560 0A00C0A4 */  sh         $zero, 0xA($a2)
    /* 30D64 80040564 1201C3A0 */  sb         $v1, 0x112($a2)
    /* 30D68 80040568 1301C4A0 */  sb         $a0, 0x113($a2)
  .L8004056C:
    /* 30D6C 8004056C 0800E003 */  jr         $ra
.size func_8004054C, . - func_8004054C
