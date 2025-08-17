.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800164B4
    /* 6CB4 800164B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6CB8 800164B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6CBC 800164BC 21808000 */  addu       $s0, $a0, $zero
    /* 6CC0 800164C0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6CC4 800164C4 01000382 */  lb         $v1, 0x1($s0)
    /* 6CC8 800164C8 00000000 */  nop
    /* 6CCC 800164CC 05006010 */  beqz       $v1, .L800164E4
    /* 6CD0 800164D0 01000224 */   addiu     $v0, $zero, 0x1
    /* 6CD4 800164D4 0A006210 */  beq        $v1, $v0, .L80016500
    /* 6CD8 800164D8 03000224 */   addiu     $v0, $zero, 0x3
    /* 6CDC 800164DC 43590008 */  j          .L8001650C
    /* 6CE0 800164E0 00000000 */   nop
  .L800164E4:
    /* 6CE4 800164E4 7F99010C */  jal        func_800665FC
    /* 6CE8 800164E8 01000424 */   addiu     $a0, $zero, 0x1
    /* 6CEC 800164EC 01000392 */  lbu        $v1, 0x1($s0)
    /* 6CF0 800164F0 00000000 */  nop
    /* 6CF4 800164F4 21186200 */  addu       $v1, $v1, $v0
    /* 6CF8 800164F8 43590008 */  j          .L8001650C
    /* 6CFC 800164FC 010003A2 */   sb        $v1, 0x1($s0)
  .L80016500:
    /* 6D00 80016500 000002A2 */  sb         $v0, 0x0($s0)
    /* 6D04 80016504 02000224 */  addiu      $v0, $zero, 0x2
    /* 6D08 80016508 010002A2 */  sb         $v0, 0x1($s0)
  .L8001650C:
    /* 6D0C 8001650C 6D57000C */  jal        func_80015DB4
    /* 6D10 80016510 00000000 */   nop
    /* 6D14 80016514 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6D18 80016518 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D1C 8001651C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6D20 80016520 0800E003 */  jr         $ra
    /* 6D24 80016524 00000000 */   nop
.size func_800164B4, . - func_800164B4
