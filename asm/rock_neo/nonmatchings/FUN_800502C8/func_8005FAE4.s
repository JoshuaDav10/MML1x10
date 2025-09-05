.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FAE4
    /* 502E4 8005FAE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 502E8 8005FAE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 502EC 8005FAEC 21808000 */  addu       $s0, $a0, $zero
    /* 502F0 8005FAF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 502F4 8005FAF4 02000382 */  lb         $v1, 0x2($s0)
    /* 502F8 8005FAF8 00000000 */  nop
    /* 502FC 8005FAFC 05006010 */  beqz       $v1, .L8005FB14
    /* 50300 8005FB00 01000224 */   addiu     $v0, $zero, 0x1
    /* 50304 8005FB04 1E006210 */  beq        $v1, $v0, .L8005FB80
    /* 50308 8005FB08 0008033C */   lui       $v1, (0x8000000 >> 16)
    /* 5030C 8005FB0C E87E0108 */  j          .L8005FBA0
    /* 50310 8005FB10 00000000 */   nop
  .L8005FB14:
    /* 50314 8005FB14 04000292 */  lbu        $v0, 0x4($s0)
    /* 50318 8005FB18 0980013C */  lui        $at, (0x80090000 >> 16)
.size func_8005FAE4, . - func_8005FAE4
