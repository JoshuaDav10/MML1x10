.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800647BC
    /* 54FBC 800647BC B4FF010C */  jal        OpenEvent
    /* 54FC0 800647C0 21380000 */   addu      $a3, $zero, $zero
    /* 54FC4 800647C4 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* 54FC8 800647C8 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* 54FCC 800647CC 00800534 */  ori        $a1, $zero, 0x8000
    /* 54FD0 800647D0 00200624 */  addiu      $a2, $zero, 0x2000
    /* 54FD4 800647D4 A40E82AF */  sw         $v0, %gp_rel(D_80098708)($gp)
    /* 54FD8 800647D8 B4FF010C */  jal        OpenEvent
    /* 54FDC 800647DC 21380000 */   addu      $a3, $zero, $zero
    /* 54FE0 800647E0 00F4043C */  lui        $a0, (0xF4000001 >> 16)
    /* 54FE4 800647E4 01008434 */  ori        $a0, $a0, (0xF4000001 & 0xFFFF)
    /* 54FE8 800647E8 00010524 */  addiu      $a1, $zero, 0x100
    /* 54FEC 800647EC 00200624 */  addiu      $a2, $zero, 0x2000
    /* 54FF0 800647F0 A80E82AF */  sw         $v0, %gp_rel(D_8009870C)($gp)
    /* 54FF4 800647F4 B4FF010C */  jal        OpenEvent
    /* 54FF8 800647F8 21380000 */   addu      $a3, $zero, $zero
    /* 54FFC 800647FC 00F4043C */  lui        $a0, (0xF4000000 >> 16)
.size func_800647BC, . - func_800647BC
