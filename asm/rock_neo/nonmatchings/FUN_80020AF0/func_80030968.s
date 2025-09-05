.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80030968
    /* 21168 80030968 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2116C 8003096C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 21170 80030970 21808000 */  addu       $s0, $a0, $zero
    /* 21174 80030974 2118A000 */  addu       $v1, $a1, $zero
    /* 21178 80030978 00340600 */  sll        $a2, $a2, 16
    /* 2117C 8003097C 03340600 */  sra        $a2, $a2, 16
    /* 21180 80030980 003C0700 */  sll        $a3, $a3, 16
    /* 21184 80030984 033C0700 */  sra        $a3, $a3, 16
    /* 21188 80030988 14000426 */  addiu      $a0, $s0, 0x14
    /* 2118C 8003098C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 21190 80030990 4000B18F */  lw         $s1, 0x40($sp)
.size func_80030968, . - func_80030968
