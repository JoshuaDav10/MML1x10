.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056234
    /* 46A34 80056234 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 46A38 80056238 1000B0AF */  sw         $s0, 0x10($sp)
    /* 46A3C 8005623C 21808000 */  addu       $s0, $a0, $zero
    /* 46A40 80056240 1400BFAF */  sw         $ra, 0x14($sp)
    /* 46A44 80056244 8776010C */  jal        func_8005DA1C
    /* 46A48 80056248 01000424 */   addiu     $a0, $zero, 0x1
    /* 46A4C 8005624C 03004014 */  bnez       $v0, .L8005625C
    /* 46A50 80056250 01000224 */   addiu     $v0, $zero, 0x1
    /* 46A54 80056254 9B580108 */  j          .L8005626C
    /* 46A58 80056258 21100000 */   addu      $v0, $zero, $zero
  .L8005625C:
    /* 46A5C 8005625C 6C00038E */  lw         $v1, 0x6C($s0)
    /* 46A60 80056260 00000000 */  nop
    /* 46A64 80056264 01006324 */  addiu      $v1, $v1, 0x1
    /* 46A68 80056268 6C0003AE */  sw         $v1, 0x6C($s0)
  .L8005626C:
    /* 46A6C 8005626C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 46A70 80056270 1000B08F */  lw         $s0, 0x10($sp)
    /* 46A74 80056274 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46A78 80056278 0800E003 */  jr         $ra
    /* 46A7C 8005627C 00000000 */   nop
.size func_80056234, . - func_80056234
