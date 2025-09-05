.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800476A4
    /* 37EA4 800476A4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 37EA8 800476A8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 37EAC 800476AC 21808000 */  addu       $s0, $a0, $zero
    /* 37EB0 800476B0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 37EB4 800476B4 09000292 */  lbu        $v0, 0x9($s0)
    /* 37EB8 800476B8 00000000 */  nop
    /* 37EBC 800476BC 80100200 */  sll        $v0, $v0, 2
.size func_800476A4, . - func_800476A4
