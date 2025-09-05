.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80046890
    /* 37090 80046890 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 37094 80046894 4800B0AF */  sw         $s0, 0x48($sp)
    /* 37098 80046898 21808000 */  addu       $s0, $a0, $zero
    /* 3709C 8004689C 5000BFAF */  sw         $ra, 0x50($sp)
    /* 370A0 800468A0 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 370A4 800468A4 1800028E */  lw         $v0, 0x18($s0)
    /* 370A8 800468A8 1C00038E */  lw         $v1, 0x1C($s0)
    /* 370AC 800468AC 2000048E */  lw         $a0, 0x20($s0)
    /* 370B0 800468B0 2400058E */  lw         $a1, 0x24($s0)
    /* 370B4 800468B4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 370B8 800468B8 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 370BC 800468BC 2000A4AF */  sw         $a0, 0x20($sp)
    /* 370C0 800468C0 2400A5AF */  sw         $a1, 0x24($sp)
.size func_80046890, . - func_80046890
