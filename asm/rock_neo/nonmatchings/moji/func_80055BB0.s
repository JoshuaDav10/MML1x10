.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055BB0
    /* 463B0 80055BB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 463B4 80055BB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 463B8 80055BB8 0000858C */  lw         $a1, 0x0($a0)
    /* 463BC 80055BBC 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 463C0 80055BC0 2410A200 */  and        $v0, $a1, $v0
    /* 463C4 80055BC4 06004014 */  bnez       $v0, .L80055BE0
    /* 463C8 80055BC8 1000023C */   lui       $v0, (0x100000 >> 16)
    /* 463CC 80055BCC 6C00838C */  lw         $v1, 0x6C($a0)
    /* 463D0 80055BD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 463D4 80055BD4 01006324 */  addiu      $v1, $v1, 0x1
    /* 463D8 80055BD8 03570108 */  j          .L80055C0C
    /* 463DC 80055BDC 6C0083AC */   sw        $v1, 0x6C($a0)
  .L80055BE0:
    /* 463E0 80055BE0 7C008390 */  lbu        $v1, 0x7C($a0)
    /* 463E4 80055BE4 2510A200 */  or         $v0, $a1, $v0
    /* 463E8 80055BE8 000082AC */  sw         $v0, 0x0($a0)
    /* 463EC 80055BEC 80180300 */  sll        $v1, $v1, 2
    /* 463F0 80055BF0 0980013C */  lui        $at, %hi(D_8008AAC0)
    /* 463F4 80055BF4 21082300 */  addu       $at, $at, $v1
    /* 463F8 80055BF8 C0AA228C */  lw         $v0, %lo(D_8008AAC0)($at)
    /* 463FC 80055BFC 00000000 */  nop
    /* 46400 80055C00 09F84000 */  jalr       $v0
    /* 46404 80055C04 00000000 */   nop
    /* 46408 80055C08 21100000 */  addu       $v0, $zero, $zero
  .L80055C0C:
    /* 4640C 80055C0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 46410 80055C10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46414 80055C14 0800E003 */  jr         $ra
    /* 46418 80055C18 00000000 */   nop
.size func_80055BB0, . - func_80055BB0
