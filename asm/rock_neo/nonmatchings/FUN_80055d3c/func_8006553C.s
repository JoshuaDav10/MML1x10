.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8006553C
    /* 55D3C 8006553C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 55D40 80065540 0300E22C */  sltiu      $v0, $a3, 0x3
    /* 55D44 80065544 FCFF4014 */  bnez       $v0, .L80065538
    /* 55D48 80065548 0400C624 */   addiu     $a2, $a2, 0x4
    /* 55D4C 8006554C 60000724 */  addiu      $a3, $zero, 0x60
    /* 55D50 80065550 80012626 */  addiu      $a2, $s1, 0x180
  .L80065554:
    /* 55D54 80065554 0000C58C */  lw         $a1, 0x0($a2)
    /* 55D58 80065558 1000A28F */  lw         $v0, 0x10($sp)
    /* 55D5C 8006555C 001C0500 */  sll        $v1, $a1, 16
    /* 55D60 80065560 02240500 */  srl        $a0, $a1, 16
    /* 55D64 80065564 25186400 */  or         $v1, $v1, $a0
    /* 55D68 80065568 21104300 */  addu       $v0, $v0, $v1
    /* 55D6C 8006556C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 55D70 80065570 0100E230 */  andi       $v0, $a3, 0x1
    /* 55D74 80065574 08004010 */  beqz       $v0, .L80065598
    /* 55D78 80065578 00000000 */   nop
    /* 55D7C 8006557C B001228E */  lw         $v0, 0x1B0($s1)
.size func_8006553C, . - func_8006553C
