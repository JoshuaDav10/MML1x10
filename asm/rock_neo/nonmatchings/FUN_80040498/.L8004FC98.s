.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8004FC98
    /* 40498 8004FC98 1E004010 */  beqz       $v0, .L8004FD14
    /* 4049C 8004FC9C 00000000 */   nop
    /* 404A0 8004FCA0 1200A287 */  lh         $v0, 0x12($sp)
    /* 404A4 8004FCA4 1000A387 */  lh         $v1, 0x10($sp)
    /* 404A8 8004FCA8 02004104 */  bgez       $v0, .L8004FCB4
    /* 404AC 8004FCAC 21204000 */   addu      $a0, $v0, $zero
    /* 404B0 8004FCB0 23200400 */  negu       $a0, $a0
  .L8004FCB4:
    /* 404B4 8004FCB4 05006004 */  bltz       $v1, .L8004FCCC
    /* 404B8 8004FCB8 2A108300 */   slt       $v0, $a0, $v1
    /* 404BC 8004FCBC 15004010 */  beqz       $v0, .L8004FD14
    /* 404C0 8004FCC0 00000000 */   nop
    /* 404C4 8004FCC4 373F0108 */  j          .L8004FCDC
    /* 404C8 8004FCC8 00000000 */   nop
  .L8004FCCC:
    /* 404CC 8004FCCC 23100300 */  negu       $v0, $v1
    /* 404D0 8004FCD0 2A108200 */  slt        $v0, $a0, $v0
    /* 404D4 8004FCD4 0F004010 */  beqz       $v0, .L8004FD14
    /* 404D8 8004FCD8 00000000 */   nop
  .L8004FCDC:
    /* 404DC 8004FCDC 02002296 */  lhu        $v0, 0x2($s1)
    /* 404E0 8004FCE0 1200A397 */  lhu        $v1, 0x12($sp)
    /* 404E4 8004FCE4 00000000 */  nop
    /* 404E8 8004FCE8 21104300 */  addu       $v0, $v0, $v1
    /* 404EC 8004FCEC 020022A6 */  sh         $v0, 0x2($s1)
.size .L8004FC98, . - .L8004FC98
