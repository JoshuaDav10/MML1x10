.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054A04
    /* 45204 80054A04 BE008294 */  lhu        $v0, 0xBE($a0)
    /* 45208 80054A08 00000000 */  nop
    /* 4520C 80054A0C 01004324 */  addiu      $v1, $v0, 0x1
    /* 45210 80054A10 80100200 */  sll        $v0, $v0, 2
    /* 45214 80054A14 BE0083A4 */  sh         $v1, 0xBE($a0)
    /* 45218 80054A18 1400838C */  lw         $v1, 0x14($a0)
    /* 4521C 80054A1C 21104400 */  addu       $v0, $v0, $a0
    /* 45220 80054A20 02006324 */  addiu      $v1, $v1, 0x2
    /* 45224 80054A24 180043AC */  sw         $v1, 0x18($v0)
    /* 45228 80054A28 4400838C */  lw         $v1, 0x44($a0)
    /* 4522C 80054A2C 00000000 */  nop
    /* 45230 80054A30 0A006010 */  beqz       $v1, .L80054A5C
.size func_80054A04, . - func_80054A04
