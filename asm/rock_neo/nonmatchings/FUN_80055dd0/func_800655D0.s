.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800655D0
    /* 55DD0 800655D0 21380000 */  addu       $a3, $zero, $zero
    /* 55DD4 800655D4 1000A627 */  addiu      $a2, $sp, 0x10
    /* 55DD8 800655D8 B001228E */  lw         $v0, 0x1B0($s1)
    /* 55DDC 800655DC 1000A38F */  lw         $v1, 0x10($sp)
    /* 55DE0 800655E0 27100200 */  nor        $v0, $zero, $v0
    /* 55DE4 800655E4 21104300 */  addu       $v0, $v0, $v1
    /* 55DE8 800655E8 B40122AE */  sw         $v0, 0x1B4($s1)
    /* 55DEC 800655EC B001228E */  lw         $v0, 0x1B0($s1)
    /* 55DF0 800655F0 1400A38F */  lw         $v1, 0x14($sp)
    /* 55DF4 800655F4 26104400 */  xor        $v0, $v0, $a0
    /* 55DF8 800655F8 21104300 */  addu       $v0, $v0, $v1
    /* 55DFC 800655FC B80122AE */  sw         $v0, 0x1B8($s1)
.size func_800655D0, . - func_800655D0
