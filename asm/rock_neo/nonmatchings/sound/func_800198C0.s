.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800198C0
    /* A0C0 800198C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0C4 800198C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A0C8 800198C8 9676000C */  jal        Sce_flag_test
    /* A0CC 800198CC 06000424 */   addiu     $a0, $zero, 0x6
    /* A0D0 800198D0 06004010 */  beqz       $v0, .L800198EC
    /* A0D4 800198D4 07000424 */   addiu     $a0, $zero, 0x7
    /* A0D8 800198D8 9676000C */  jal        Sce_flag_test
    /* A0DC 800198DC 2C000424 */   addiu     $a0, $zero, 0x2C
    /* A0E0 800198E0 02004014 */  bnez       $v0, .L800198EC
    /* A0E4 800198E4 07000424 */   addiu     $a0, $zero, 0x7
    /* A0E8 800198E8 02000424 */  addiu      $a0, $zero, 0x2
  .L800198EC:
    /* A0EC 800198EC 05000324 */  addiu      $v1, $zero, 0x5
    /* A0F0 800198F0 0880023C */  lui        $v0, %hi(D_8008222A)
    /* A0F4 800198F4 2A224224 */  addiu      $v0, $v0, %lo(D_8008222A)
  .L800198F8:
    /* A0F8 800198F8 000044A4 */  sh         $a0, 0x0($v0)
    /* A0FC 800198FC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A100 80019900 FDFF6104 */  bgez       $v1, .L800198F8
    /* A104 80019904 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* A108 80019908 1000BF8F */  lw         $ra, 0x10($sp)
    /* A10C 8001990C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A110 80019910 0800E003 */  jr         $ra
    /* A114 80019914 00000000 */   nop
.size func_800198C0, . - func_800198C0
