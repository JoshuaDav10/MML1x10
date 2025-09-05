.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048E18
    /* 39618 80048E18 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3961C 80048E1C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 39620 80048E20 1823010C */  jal        func_80048C60
    /* 39624 80048E24 00000000 */   nop
    /* 39628 80048E28 21184000 */  addu       $v1, $v0, $zero
    /* 3962C 80048E2C 0300601C */  bgtz       $v1, .L80048E3C
    /* 39630 80048E30 40100300 */   sll       $v0, $v1, 1
    /* 39634 80048E34 97230108 */  j          .L80048E5C
    /* 39638 80048E38 21100000 */   addu      $v0, $zero, $zero
  .L80048E3C:
    /* 3963C 80048E3C 21104300 */  addu       $v0, $v0, $v1
    /* 39640 80048E40 801F033C */  lui        $v1, (0x1F80004C >> 16)
    /* 39644 80048E44 4C00638C */  lw         $v1, (0x1F80004C & 0xFFFF)($v1)
    /* 39648 80048E48 80100200 */  sll        $v0, $v0, 2
    /* 3964C 80048E4C 21104300 */  addu       $v0, $v0, $v1
    /* 39650 80048E50 06004294 */  lhu        $v0, 0x6($v0)
    /* 39654 80048E54 00000000 */  nop
    /* 39658 80048E58 FF0F4230 */  andi       $v0, $v0, 0xFFF
  .L80048E5C:
    /* 3965C 80048E5C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39660 80048E60 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 39664 80048E64 0800E003 */  jr         $ra
    /* 39668 80048E68 00000000 */   nop
.size func_80048E18, . - func_80048E18
