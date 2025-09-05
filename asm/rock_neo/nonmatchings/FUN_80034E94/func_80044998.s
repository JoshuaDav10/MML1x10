.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044998
    /* 35198 80044998 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3519C 8004499C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 351A0 800449A0 21808000 */  addu       $s0, $a0, $zero
    /* 351A4 800449A4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 351A8 800449A8 00000292 */  lbu        $v0, 0x0($s0)
    /* 351AC 800449AC 21280000 */  addu       $a1, $zero, $zero
    /* 351B0 800449B0 02004234 */  ori        $v0, $v0, 0x2
    /* 351B4 800449B4 71BE000C */  jal        func_8002F9C4
    /* 351B8 800449B8 000002A2 */   sb        $v0, 0x0($s0)
    /* 351BC 800449BC 8002023C */  lui        $v0, (0x2808080 >> 16)
    /* 351C0 800449C0 1400038E */  lw         $v1, 0x14($s0)
    /* 351C4 800449C4 80804234 */  ori        $v0, $v0, (0x2808080 & 0xFFFF)
    /* 351C8 800449C8 400002AE */  sw         $v0, 0x40($s0)
    /* 351CC 800449CC 7000638C */  lw         $v1, 0x70($v1)
    /* 351D0 800449D0 08000292 */  lbu        $v0, 0x8($s0)
    /* 351D4 800449D4 1000638C */  lw         $v1, 0x10($v1)
    /* 351D8 800449D8 01004224 */  addiu      $v0, $v0, 0x1
    /* 351DC 800449DC 080002A2 */  sb         $v0, 0x8($s0)
    /* 351E0 800449E0 10000224 */  addiu      $v0, $zero, 0x10
    /* 351E4 800449E4 0B0002A2 */  sb         $v0, 0xB($s0)
    /* 351E8 800449E8 440003AE */  sw         $v1, 0x44($s0)
    /* 351EC 800449EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 351F0 800449F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 351F4 800449F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 351F8 800449F8 0800E003 */  jr         $ra
    /* 351FC 800449FC 00000000 */   nop
.size func_80044998, . - func_80044998
