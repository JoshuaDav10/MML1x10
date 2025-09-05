.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BA00
    /* 4C200 8005BA00 7D00C290 */  lbu        $v0, 0x7D($a2)
    /* 4C204 8005BA04 7F00C390 */  lbu        $v1, 0x7F($a2)
    /* 4C208 8005BA08 01004224 */  addiu      $v0, $v0, 0x1
    /* 4C20C 8005BA0C 7D00C2A0 */  sb         $v0, 0x7D($a2)
    /* 4C210 8005BA10 40100300 */  sll        $v0, $v1, 1
    /* 4C214 8005BA14 21104300 */  addu       $v0, $v0, $v1
    /* 4C218 8005BA18 7F00C390 */  lbu        $v1, 0x7F($a2)
    /* 4C21C 8005BA1C 40100200 */  sll        $v0, $v0, 1
.size func_8005BA00, . - func_8005BA00
