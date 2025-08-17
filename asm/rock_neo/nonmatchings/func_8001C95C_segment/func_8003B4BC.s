.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B4BC
    /* 2BCBC 8003B4BC 1E00A004 */  bltz       $a1, .L8003B538
    /* 2BCC0 8003B4C0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2BCC4 8003B4C4 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2BCC8 8003B4C8 21082400 */  addu       $at, $at, $a0
    /* 2BCCC 8003B4CC 049F2380 */  lb         $v1, %lo(D_80089F04)($at)
    /* 2BCD0 8003B4D0 00000000 */  nop
    /* 2BCD4 8003B4D4 18006004 */  bltz       $v1, .L8003B538
    /* 2BCD8 8003B4D8 401A0300 */   sll       $v1, $v1, 9
    /* 2BCDC 8003B4DC 0C80023C */  lui        $v0, %hi(D_800BD3B8)
    /* 2BCE0 8003B4E0 B8D34224 */  addiu      $v0, $v0, %lo(D_800BD3B8)
    /* 2BCE4 8003B4E4 21186200 */  addu       $v1, $v1, $v0
    /* 2BCE8 8003B4E8 03110500 */  sra        $v0, $a1, 4
    /* 2BCEC 8003B4EC 80100200 */  sll        $v0, $v0, 2
    /* 2BCF0 8003B4F0 21304300 */  addu       $a2, $v0, $v1
    /* 2BCF4 8003B4F4 0F00A230 */  andi       $v0, $a1, 0xF
    /* 2BCF8 8003B4F8 0000C58C */  lw         $a1, 0x0($a2)
    /* 2BCFC 8003B4FC 40200200 */  sll        $a0, $v0, 1
    /* 2BD00 8003B500 06108500 */  srlv       $v0, $a1, $a0
    /* 2BD04 8003B504 03004330 */  andi       $v1, $v0, 0x3
    /* 2BD08 8003B508 03000224 */  addiu      $v0, $zero, 0x3
    /* 2BD0C 8003B50C 09006210 */  beq        $v1, $v0, .L8003B534
    /* 2BD10 8003B510 01006324 */   addiu     $v1, $v1, 0x1
    /* 2BD14 8003B514 04108200 */  sllv       $v0, $v0, $a0
    /* 2BD18 8003B518 27100200 */  nor        $v0, $zero, $v0
    /* 2BD1C 8003B51C 2410A200 */  and        $v0, $a1, $v0
    /* 2BD20 8003B520 04188300 */  sllv       $v1, $v1, $a0
    /* 2BD24 8003B524 25104300 */  or         $v0, $v0, $v1
    /* 2BD28 8003B528 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2BD2C 8003B52C 4EED0008 */  j          .L8003B538
    /* 2BD30 8003B530 01000224 */   addiu     $v0, $zero, 0x1
  .L8003B534:
    /* 2BD34 8003B534 21100000 */  addu       $v0, $zero, $zero
  .L8003B538:
    /* 2BD38 8003B538 0800E003 */  jr         $ra
    /* 2BD3C 8003B53C 00000000 */   nop
.size func_8003B4BC, . - func_8003B4BC
