.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047760
    /* 37F60 80047760 80000224 */  addiu      $v0, $zero, 0x80
    /* 37F64 80047764 1800A5AF */  sw         $a1, 0x18($sp)
  .L80047768:
    /* 37F68 80047768 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 37F6C 8004776C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 37F70 80047770 001C0300 */  sll        $v1, $v1, 16
    /* 37F74 80047774 032C0300 */  sra        $a1, $v1, 16
    /* 37F78 80047778 C21F0300 */  srl        $v1, $v1, 31
    /* 37F7C 8004777C 2128A300 */  addu       $a1, $a1, $v1
    /* 37F80 80047780 43280500 */  sra        $a1, $a1, 1
    /* 37F84 80047784 6FD0000C */  jal        func_800341BC
    /* 37F88 80047788 1000A8AF */   sw        $t0, 0x10($sp)
    /* 37F8C 8004778C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 37F90 80047790 2800B08F */  lw         $s0, 0x28($sp)
    /* 37F94 80047794 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 37F98 80047798 0800E003 */  jr         $ra
    /* 37F9C 8004779C 00000000 */   nop
.size func_80047760, . - func_80047760
