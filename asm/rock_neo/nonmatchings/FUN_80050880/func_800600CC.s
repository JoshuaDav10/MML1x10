.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800600CC
    /* 508CC 800600CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 508D0 800600D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 508D4 800600D4 21808000 */  addu       $s0, $a0, $zero
    /* 508D8 800600D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 508DC 800600DC 01000382 */  lb         $v1, 0x1($s0)
    /* 508E0 800600E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 508E4 800600E4 14006210 */  beq        $v1, $v0, .L80060138
    /* 508E8 800600E8 02006228 */   slti      $v0, $v1, 0x2
    /* 508EC 800600EC 05004010 */  beqz       $v0, .L80060104
    /* 508F0 800600F0 00000000 */   nop
    /* 508F4 800600F4 0A006010 */  beqz       $v1, .L80060120
    /* 508F8 800600F8 21100000 */   addu      $v0, $zero, $zero
    /* 508FC 800600FC 8D800108 */  j          .L80060234
.size func_800600CC, . - func_800600CC
