.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047EC8
    /* 386C8 80047EC8 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 386CC 80047ECC 3800B2AF */  sw         $s2, 0x38($sp)
    /* 386D0 80047ED0 21908000 */  addu       $s2, $a0, $zero
    /* 386D4 80047ED4 5400BFAF */  sw         $ra, 0x54($sp)
    /* 386D8 80047ED8 5000BEAF */  sw         $fp, 0x50($sp)
    /* 386DC 80047EDC 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 386E0 80047EE0 4800B6AF */  sw         $s6, 0x48($sp)
    /* 386E4 80047EE4 4400B5AF */  sw         $s5, 0x44($sp)
    /* 386E8 80047EE8 4000B4AF */  sw         $s4, 0x40($sp)
    /* 386EC 80047EEC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 386F0 80047EF0 3400B1AF */  sw         $s1, 0x34($sp)
    /* 386F4 80047EF4 AA20010C */  jal        func_800482A8
    /* 386F8 80047EF8 3000B0AF */   sw        $s0, 0x30($sp)
.size func_80047EC8, . - func_80047EC8
