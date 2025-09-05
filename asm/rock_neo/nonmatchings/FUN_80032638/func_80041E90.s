.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041E90
    /* 32690 80041E90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32694 80041E94 1000B0AF */  sw         $s0, 0x10($sp)
    /* 32698 80041E98 21808000 */  addu       $s0, $a0, $zero
    /* 3269C 80041E9C 002C0500 */  sll        $a1, $a1, 16
    /* 326A0 80041EA0 00340600 */  sll        $a2, $a2, 16
    /* 326A4 80041EA4 003C0700 */  sll        $a3, $a3, 16
    /* 326A8 80041EA8 032C0500 */  sra        $a1, $a1, 16
    /* 326AC 80041EAC 03340600 */  sra        $a2, $a2, 16
    /* 326B0 80041EB0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 326B4 80041EB4 56000296 */  lhu        $v0, 0x56($s0)
    /* 326B8 80041EB8 16010396 */  lhu        $v1, 0x116($s0)
    /* 326BC 80041EBC 033C0700 */  sra        $a3, $a3, 16
    /* 326C0 80041EC0 23104300 */  subu       $v0, $v0, $v1
    /* 326C4 80041EC4 A9BF000C */  jal        func_8002FEA4
    /* 326C8 80041EC8 560002A6 */   sh        $v0, 0x56($s0)
.size func_80041E90, . - func_80041E90
