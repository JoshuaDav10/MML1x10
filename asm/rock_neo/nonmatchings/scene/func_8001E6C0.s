.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E6C0
    /* EEC0 8001E6C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EEC4 8001E6C4 00240400 */  sll        $a0, $a0, 16
    /* EEC8 8001E6C8 03000224 */  addiu      $v0, $zero, 0x3
    /* EECC 8001E6CC 0A80013C */  lui        $at, %hi(D_800A395C)
    /* EED0 8001E6D0 5C3922A0 */  sb         $v0, %lo(D_800A395C)($at)
    /* EED4 8001E6D4 0A80023C */  lui        $v0, %hi(D_800A39A0)
    /* EED8 8001E6D8 A039428C */  lw         $v0, %lo(D_800A39A0)($v0)
    /* EEDC 8001E6DC 0A80033C */  lui        $v1, %hi(D_800A39A4)
    /* EEE0 8001E6E0 A439638C */  lw         $v1, %lo(D_800A39A4)($v1)
    /* EEE4 8001E6E4 002C0500 */  sll        $a1, $a1, 16
    /* EEE8 8001E6E8 0C80013C */  lui        $at, %hi(D_800BC7D0)
    /* EEEC 8001E6EC D0C724AC */  sw         $a0, %lo(D_800BC7D0)($at)
    /* EEF0 8001E6F0 0A80043C */  lui        $a0, %hi(D_800A396C)
    /* EEF4 8001E6F4 6C39848C */  lw         $a0, %lo(D_800A396C)($a0)
    /* EEF8 8001E6F8 00340600 */  sll        $a2, $a2, 16
    /* EEFC 8001E6FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* EF00 8001E700 0C80013C */  lui        $at, %hi(D_800BC7D4)
    /* EF04 8001E704 D4C725AC */  sw         $a1, %lo(D_800BC7D4)($at)
    /* EF08 8001E708 0C80013C */  lui        $at, %hi(D_800BC7D8)
    /* EF0C 8001E70C D8C726AC */  sw         $a2, %lo(D_800BC7D8)($at)
    /* EF10 8001E710 0C80013C */  lui        $at, %hi(D_800BC758)
    /* EF14 8001E714 58C720AC */  sw         $zero, %lo(D_800BC758)($at)
    /* EF18 8001E718 0C80013C */  lui        $at, %hi(D_800BC754)
    /* EF1C 8001E71C 54C720AC */  sw         $zero, %lo(D_800BC754)($at)
    /* EF20 8001E720 0C80013C */  lui        $at, %hi(D_800BC750)
    /* EF24 8001E724 50C720AC */  sw         $zero, %lo(D_800BC750)($at)
    /* EF28 8001E728 0C80013C */  lui        $at, %hi(D_800BC788)
    /* EF2C 8001E72C 88C720AC */  sw         $zero, %lo(D_800BC788)($at)
    /* EF30 8001E730 0C80013C */  lui        $at, %hi(D_800BC784)
    /* EF34 8001E734 84C720AC */  sw         $zero, %lo(D_800BC784)($at)
    /* EF38 8001E738 0C80013C */  lui        $at, %hi(D_800BC780)
    /* EF3C 8001E73C 80C720AC */  sw         $zero, %lo(D_800BC780)($at)
    /* EF40 8001E740 0C80013C */  lui        $at, %hi(D_800BC7B8)
    /* EF44 8001E744 B8C720AC */  sw         $zero, %lo(D_800BC7B8)($at)
    /* EF48 8001E748 0C80013C */  lui        $at, %hi(D_800BC7B4)
    /* EF4C 8001E74C B4C720AC */  sw         $zero, %lo(D_800BC7B4)($at)
    /* EF50 8001E750 0C80013C */  lui        $at, %hi(D_800BC7B0)
    /* EF54 8001E754 B0C720AC */  sw         $zero, %lo(D_800BC7B0)($at)
    /* EF58 8001E758 0C80013C */  lui        $at, %hi(D_800BC738)
    /* EF5C 8001E75C 38C720A0 */  sb         $zero, %lo(D_800BC738)($at)
    /* EF60 8001E760 00140200 */  sll        $v0, $v0, 16
    /* EF64 8001E764 001C0300 */  sll        $v1, $v1, 16
    /* EF68 8001E768 FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* EF6C 8001E76C 0C80013C */  lui        $at, %hi(D_800BC740)
    /* EF70 8001E770 40C722AC */  sw         $v0, %lo(D_800BC740)($at)
    /* EF74 8001E774 0A80023C */  lui        $v0, %hi(D_800A39A8)
    /* EF78 8001E778 A839428C */  lw         $v0, %lo(D_800A39A8)($v0)
    /* EF7C 8001E77C 00240400 */  sll        $a0, $a0, 16
    /* EF80 8001E780 0C80013C */  lui        $at, %hi(D_800BC774)
    /* EF84 8001E784 74C724AC */  sw         $a0, %lo(D_800BC774)($at)
    /* EF88 8001E788 0C80013C */  lui        $at, %hi(D_800BC744)
    /* EF8C 8001E78C 44C723AC */  sw         $v1, %lo(D_800BC744)($at)
    /* EF90 8001E790 0A80033C */  lui        $v1, %hi(D_800A3968)
    /* EF94 8001E794 6839638C */  lw         $v1, %lo(D_800A3968)($v1)
    /* EF98 8001E798 00140200 */  sll        $v0, $v0, 16
    /* EF9C 8001E79C FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* EFA0 8001E7A0 0C80013C */  lui        $at, %hi(D_800BC748)
    /* EFA4 8001E7A4 48C722AC */  sw         $v0, %lo(D_800BC748)($at)
    /* EFA8 8001E7A8 0A80023C */  lui        $v0, %hi(D_800A3964)
    /* EFAC 8001E7AC 6439428C */  lw         $v0, %lo(D_800A3964)($v0)
    /* EFB0 8001E7B0 001C0300 */  sll        $v1, $v1, 16
    /* EFB4 8001E7B4 0C80013C */  lui        $at, %hi(D_800BC770)
    /* EFB8 8001E7B8 70C723AC */  sw         $v1, %lo(D_800BC770)($at)
    /* EFBC 8001E7BC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* EFC0 8001E7C0 00140200 */  sll        $v0, $v0, 16
    /* EFC4 8001E7C4 0C80013C */  lui        $at, %hi(D_800BC778)
    /* EFC8 8001E7C8 78C722AC */  sw         $v0, %lo(D_800BC778)($at)
    /* EFCC 8001E7CC 38E6000C */  jal        func_800398E0
    /* EFD0 8001E7D0 21200000 */   addu      $a0, $zero, $zero
    /* EFD4 8001E7D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* EFD8 8001E7D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EFDC 8001E7DC 0800E003 */  jr         $ra
    /* EFE0 8001E7E0 00000000 */   nop
.size func_8001E6C0, . - func_8001E6C0
