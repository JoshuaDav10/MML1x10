.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059530
    /* 49D30 80059530 BE008394 */  lhu        $v1, 0xBE($a0)
    /* 49D34 80059534 00000000 */  nop
    /* 49D38 80059538 01006224 */  addiu      $v0, $v1, 0x1
    /* 49D3C 8005953C 80180300 */  sll        $v1, $v1, 2
    /* 49D40 80059540 BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 49D44 80059544 1400828C */  lw         $v0, 0x14($a0)
    /* 49D48 80059548 21186400 */  addu       $v1, $v1, $a0
    /* 49D4C 8005954C 01004224 */  addiu      $v0, $v0, 0x1
    /* 49D50 80059550 180062AC */  sw         $v0, 0x18($v1)
    /* 49D54 80059554 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 49D58 80059558 73008380 */  lb         $v1, 0x73($a0)
.size func_80059530, . - func_80059530
    /* 49D5C 8005955C 00000000 */  nop
