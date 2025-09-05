.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005851C
    /* 48D1C 8005851C 21388000 */  addu       $a3, $a0, $zero
    /* 48D20 80058520 0980033C */  lui        $v1, %hi(D_8008D8EC)
    /* 48D24 80058524 ECD86324 */  addiu      $v1, $v1, %lo(D_8008D8EC)
    /* 48D28 80058528 70118593 */  lbu        $a1, %gp_rel(D_800989D4)($gp)
    /* 48D2C 8005852C 6C00E28C */  lw         $v0, 0x6C($a3)
    /* 48D30 80058530 80200500 */  sll        $a0, $a1, 2
    /* 48D34 80058534 21208500 */  addu       $a0, $a0, $a1
    /* 48D38 80058538 01004690 */  lbu        $a2, 0x1($v0)
    /* 48D3C 8005853C C0200400 */  sll        $a0, $a0, 3
    /* 48D40 80058540 C0100600 */  sll        $v0, $a2, 3
    /* 48D44 80058544 21104300 */  addu       $v0, $v0, $v1
    /* 48D48 80058548 0700A010 */  beqz       $a1, .L80058568
    /* 48D4C 8005854C 21208200 */   addu      $a0, $a0, $v0
    /* 48D50 80058550 C0180500 */  sll        $v1, $a1, 3
    /* 48D54 80058554 0B80023C */  lui        $v0, %hi(Player_work + 0x4FC)
    /* 48D58 80058558 AC564224 */  addiu      $v0, $v0, %lo(Player_work + 0x4FC)
    /* 48D5C 8005855C 2110C200 */  addu       $v0, $a2, $v0
    /* 48D60 80058560 5D610108 */  j          .L80058574
    /* 48D64 80058564 21186200 */   addu      $v1, $v1, $v0
  .L80058568:
    /* 48D68 80058568 0B80023C */  lui        $v0, %hi(Player_work + 0x4F4)
    /* 48D6C 8005856C A4564224 */  addiu      $v0, $v0, %lo(Player_work + 0x4F4)
    /* 48D70 80058570 2118C200 */  addu       $v1, $a2, $v0
  .L80058574:
    /* 48D74 80058574 00008294 */  lhu        $v0, 0x0($a0)
    /* 48D78 80058578 00000000 */  nop
    /* 48D7C 8005857C 05004014 */  bnez       $v0, .L80058594
.size func_8005851C, . - func_8005851C
