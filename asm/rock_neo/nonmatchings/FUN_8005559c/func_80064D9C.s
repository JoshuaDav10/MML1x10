.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064D9C
    /* 5559C 80064D9C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 555A0 80064DA0 9F92010C */  jal        func_80064A7C
    /* 555A4 80064DA4 3800B2AF */   sw        $s2, 0x38($sp)
    /* 555A8 80064DA8 34004014 */  bnez       $v0, .L80064E7C
    /* 555AC 80064DAC 21200002 */   addu      $a0, $s0, $zero
    /* 555B0 80064DB0 FF1F8226 */  addiu      $v0, $s4, 0x1FFF
    /* 555B4 80064DB4 0293010C */  jal        func_80064C08
    /* 555B8 80064DB8 42930200 */   srl       $s2, $v0, 13
    /* 555BC 80064DBC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 555C0 80064DC0 80181000 */  sll        $v1, $s0, 2
    /* 555C4 80064DC4 0980013C */  lui        $at, %hi(D_8008FA5C)
    /* 555C8 80064DC8 21082300 */  addu       $at, $at, $v1
    /* 555CC 80064DCC 5CFA258C */  lw         $a1, %lo(D_8008FA5C)($at)
    /* 555D0 80064DD0 8CFF010C */  jal        strcpy
    /* 555D4 80064DD4 21984000 */   addu      $s3, $v0, $zero
    /* 555D8 80064DD8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 555DC 80064DDC 88FF010C */  jal        strcat
    /* 555E0 80064DE0 21282002 */   addu      $a1, $s1, $zero
    /* 555E4 80064DE4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 555E8 80064DE8 E4FF010C */  jal        open
    /* 555EC 80064DEC 02000524 */   addiu     $a1, $zero, 0x2
    /* 555F0 80064DF0 21804000 */  addu       $s0, $v0, $zero
    /* 555F4 80064DF4 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 555F8 80064DF8 15001116 */  bne        $s0, $s1, .L80064E50
    /* 555FC 80064DFC 21200002 */   addu      $a0, $s0, $zero
.size func_80064D9C, . - func_80064D9C
