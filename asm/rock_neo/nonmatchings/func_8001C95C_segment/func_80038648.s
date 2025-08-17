.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80038648
    /* 28E48 80038648 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 28E4C 8003864C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 28E50 80038650 0A80103C */  lui        $s0, %hi(D_800A3958)
    /* 28E54 80038654 58391026 */  addiu      $s0, $s0, %lo(D_800A3958)
    /* 28E58 80038658 21200002 */  addu       $a0, $s0, $zero
    /* 28E5C 8003865C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 28E60 80038660 F35D000C */  jal        func_800177CC
    /* 28E64 80038664 E0000526 */   addiu     $a1, $s0, 0xE0
    /* 28E68 80038668 0F000824 */  addiu      $t0, $zero, 0xF
    /* 28E6C 8003866C 0A80073C */  lui        $a3, %hi(D_8009A598)
    /* 28E70 80038670 98A5E724 */  addiu      $a3, $a3, %lo(D_8009A598)
    /* 28E74 80038674 01000624 */  addiu      $a2, $zero, 0x1
    /* 28E78 80038678 000006A2 */  sb         $a2, 0x0($s0)
    /* 28E7C 8003867C 0B80033C */  lui        $v1, %hi(Player_work + 0x14)
    /* 28E80 80038680 C4516384 */  lh         $v1, %lo(Player_work + 0x14)($v1)
    /* 28E84 80038684 0B80043C */  lui        $a0, %hi(Player_work + 0x16)
    /* 28E88 80038688 C6518484 */  lh         $a0, %lo(Player_work + 0x16)($a0)
    /* 28E8C 8003868C 0B80053C */  lui        $a1, %hi(Player_work + 0x18)
    /* 28E90 80038690 C851A584 */  lh         $a1, %lo(Player_work + 0x18)($a1)
    /* 28E94 80038694 00020224 */  addiu      $v0, $zero, 0x200
    /* 28E98 80038698 0A80013C */  lui        $at, %hi(D_800A3994)
    /* 28E9C 8003869C 943922AC */  sw         $v0, %lo(D_800A3994)($at)
    /* 28EA0 800386A0 0A80013C */  lui        $at, %hi(D_800A397C)
    /* 28EA4 800386A4 7C3922AC */  sw         $v0, %lo(D_800A397C)($at)
    /* 28EA8 800386A8 0A80013C */  lui        $at, %hi(D_800A3964)
    /* 28EAC 800386AC 643922AC */  sw         $v0, %lo(D_800A3964)($at)
    /* 28EB0 800386B0 30000224 */  addiu      $v0, $zero, 0x30
    /* 28EB4 800386B4 0A80013C */  lui        $at, %hi(D_800A399C)
    /* 28EB8 800386B8 9C3922AC */  sw         $v0, %lo(D_800A399C)($at)
    /* 28EBC 800386BC 0A80013C */  lui        $at, %hi(D_800A3984)
    /* 28EC0 800386C0 843922AC */  sw         $v0, %lo(D_800A3984)($at)
    /* 28EC4 800386C4 0A80013C */  lui        $at, %hi(D_800A396C)
    /* 28EC8 800386C8 6C3922AC */  sw         $v0, %lo(D_800A396C)($at)
    /* 28ECC 800386CC 96000224 */  addiu      $v0, $zero, 0x96
    /* 28ED0 800386D0 0A80013C */  lui        $at, %hi(D_800A39B4)
    /* 28ED4 800386D4 B43922AC */  sw         $v0, %lo(D_800A39B4)($at)
    /* 28ED8 800386D8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 28EDC 800386DC 0A80013C */  lui        $at, %hi(D_800A3959)
    /* 28EE0 800386E0 593920A0 */  sb         $zero, %lo(D_800A3959)($at)
    /* 28EE4 800386E4 0A80013C */  lui        $at, %hi(D_800A395A)
    /* 28EE8 800386E8 5A3920A0 */  sb         $zero, %lo(D_800A395A)($at)
    /* 28EEC 800386EC 0A80013C */  lui        $at, %hi(D_800A395B)
    /* 28EF0 800386F0 5B3920A0 */  sb         $zero, %lo(D_800A395B)($at)
    /* 28EF4 800386F4 0A80013C */  lui        $at, %hi(D_800A395C)
    /* 28EF8 800386F8 5C3920AC */  sw         $zero, %lo(D_800A395C)($at)
    /* 28EFC 800386FC 0A80013C */  lui        $at, %hi(D_800A3960)
    /* 28F00 80038700 603920AC */  sw         $zero, %lo(D_800A3960)($at)
    /* 28F04 80038704 0A80013C */  lui        $at, %hi(D_800A3970)
    /* 28F08 80038708 703920AC */  sw         $zero, %lo(D_800A3970)($at)
    /* 28F0C 8003870C 0A80013C */  lui        $at, %hi(D_800A3978)
    /* 28F10 80038710 783920AC */  sw         $zero, %lo(D_800A3978)($at)
    /* 28F14 80038714 0A80013C */  lui        $at, %hi(D_800A3974)
    /* 28F18 80038718 743920AC */  sw         $zero, %lo(D_800A3974)($at)
    /* 28F1C 8003871C 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 28F20 80038720 983920AC */  sw         $zero, %lo(D_800A3998)($at)
    /* 28F24 80038724 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 28F28 80038728 803920AC */  sw         $zero, %lo(D_800A3980)($at)
    /* 28F2C 8003872C 0A80013C */  lui        $at, %hi(D_800A3968)
    /* 28F30 80038730 683920AC */  sw         $zero, %lo(D_800A3968)($at)
    /* 28F34 80038734 E00000AE */  sw         $zero, 0xE0($s0)
    /* 28F38 80038738 0A80013C */  lui        $at, %hi(D_800A39E0)
    /* 28F3C 8003873C E03923AC */  sw         $v1, %lo(D_800A39E0)($at)
    /* 28F40 80038740 0A80013C */  lui        $at, %hi(D_800A39C0)
    /* 28F44 80038744 C03923AC */  sw         $v1, %lo(D_800A39C0)($at)
    /* 28F48 80038748 0A80013C */  lui        $at, %hi(D_800A39A0)
    /* 28F4C 8003874C A03923AC */  sw         $v1, %lo(D_800A39A0)($at)
    /* 28F50 80038750 0A80013C */  lui        $at, %hi(D_800A39F0)
    /* 28F54 80038754 F03923AC */  sw         $v1, %lo(D_800A39F0)($at)
    /* 28F58 80038758 0A80013C */  lui        $at, %hi(D_800A39E4)
    /* 28F5C 8003875C E43924AC */  sw         $a0, %lo(D_800A39E4)($at)
    /* 28F60 80038760 0A80013C */  lui        $at, %hi(D_800A39C4)
    /* 28F64 80038764 C43924AC */  sw         $a0, %lo(D_800A39C4)($at)
    /* 28F68 80038768 0A80013C */  lui        $at, %hi(D_800A39A4)
    /* 28F6C 8003876C A43924AC */  sw         $a0, %lo(D_800A39A4)($at)
    /* 28F70 80038770 0A80013C */  lui        $at, %hi(D_800A39F4)
    /* 28F74 80038774 F43924AC */  sw         $a0, %lo(D_800A39F4)($at)
    /* 28F78 80038778 0A80013C */  lui        $at, %hi(D_800A39E8)
    /* 28F7C 8003877C E83925AC */  sw         $a1, %lo(D_800A39E8)($at)
    /* 28F80 80038780 0A80013C */  lui        $at, %hi(D_800A39C8)
    /* 28F84 80038784 C83925AC */  sw         $a1, %lo(D_800A39C8)($at)
    /* 28F88 80038788 0A80013C */  lui        $at, %hi(D_800A39A8)
    /* 28F8C 8003878C A83925AC */  sw         $a1, %lo(D_800A39A8)($at)
    /* 28F90 80038790 0A80013C */  lui        $at, %hi(D_800A39F8)
    /* 28F94 80038794 F83925AC */  sw         $a1, %lo(D_800A39F8)($at)
    /* 28F98 80038798 0A80013C */  lui        $at, %hi(D_800A395D)
    /* 28F9C 8003879C 5D3920A0 */  sb         $zero, %lo(D_800A395D)($at)
    /* 28FA0 800387A0 0A80013C */  lui        $at, %hi(D_800A395E)
    /* 28FA4 800387A4 5E3920A0 */  sb         $zero, %lo(D_800A395E)($at)
    /* 28FA8 800387A8 0A80013C */  lui        $at, %hi(D_800A395F)
    /* 28FAC 800387AC 5F3920A0 */  sb         $zero, %lo(D_800A395F)($at)
    /* 28FB0 800387B0 0A80013C */  lui        $at, %hi(D_800A395C)
    /* 28FB4 800387B4 5C3926A0 */  sb         $a2, %lo(D_800A395C)($at)
    /* 28FB8 800387B8 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 28FBC 800387BC 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 28FC0 800387C0 040E80AF */  sw         $zero, %gp_rel(D_80098668)($gp)
    /* 28FC4 800387C4 080E80AF */  sw         $zero, %gp_rel(D_8009866C)($gp)
    /* 28FC8 800387C8 0C0E80AF */  sw         $zero, %gp_rel(D_80098670)($gp)
    /* 28FCC 800387CC 100E80AF */  sw         $zero, %gp_rel(D_80098674)($gp)
    /* 28FD0 800387D0 1C0E80AF */  sw         $zero, %gp_rel(D_80098680)($gp)
    /* 28FD4 800387D4 180E80AF */  sw         $zero, %gp_rel(D_8009867C)($gp)
    /* 28FD8 800387D8 140E80AF */  sw         $zero, %gp_rel(D_80098678)($gp)
    /* 28FDC 800387DC 2C0E80AF */  sw         $zero, %gp_rel(D_80098690)($gp)
    /* 28FE0 800387E0 280E80AF */  sw         $zero, %gp_rel(D_8009868C)($gp)
    /* 28FE4 800387E4 240E80AF */  sw         $zero, %gp_rel(D_80098688)($gp)
    /* 28FE8 800387E8 300E80AF */  sw         $zero, %gp_rel(D_80098694)($gp)
    /* 28FEC 800387EC C40480AF */  sw         $zero, %gp_rel(D_80097D28)($gp)
  .L800387F0:
    /* 28FF0 800387F0 0000E0AC */  sw         $zero, 0x0($a3)
    /* 28FF4 800387F4 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* 28FF8 800387F8 FDFF0105 */  bgez       $t0, .L800387F0
    /* 28FFC 800387FC FCFFE724 */   addiu     $a3, $a3, -0x4
    /* 29000 80038800 00020324 */  addiu      $v1, $zero, 0x200
    /* 29004 80038804 0C00058E */  lw         $a1, 0xC($s0)
    /* 29008 80038808 1000068E */  lw         $a2, 0x10($s0)
    /* 2900C 8003880C 1400078E */  lw         $a3, 0x14($s0)
    /* 29010 80038810 30000224 */  addiu      $v0, $zero, 0x30
    /* 29014 80038814 CC0482AF */  sw         $v0, %gp_rel(D_80097D30)($gp)
    /* 29018 80038818 00030224 */  addiu      $v0, $zero, 0x300
    /* 2901C 8003881C D40482AF */  sw         $v0, %gp_rel(D_80097D38)($gp)
    /* 29020 80038820 0A000224 */  addiu      $v0, $zero, 0xA
    /* 29024 80038824 D80482AF */  sw         $v0, %gp_rel(D_80097D3C)($gp)
    /* 29028 80038828 14000224 */  addiu      $v0, $zero, 0x14
    /* 2902C 8003882C DC0482AF */  sw         $v0, %gp_rel(D_80097D40)($gp)
    /* 29030 80038830 03000224 */  addiu      $v0, $zero, 0x3
    /* 29034 80038834 E00482AF */  sw         $v0, %gp_rel(D_80097D44)($gp)
    /* 29038 80038838 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 2903C 8003883C E40482AF */  sw         $v0, %gp_rel(D_80097D48)($gp)
    /* 29040 80038840 01000224 */  addiu      $v0, $zero, 0x1
    /* 29044 80038844 E80482AF */  sw         $v0, %gp_rel(D_80097D4C)($gp)
    /* 29048 80038848 EC0482AF */  sw         $v0, %gp_rel(D_80097D50)($gp)
    /* 2904C 8003884C B0040224 */  addiu      $v0, $zero, 0x4B0
    /* 29050 80038850 340E80AF */  sw         $zero, %gp_rel(D_80098698)($gp)
    /* 29054 80038854 C80483AF */  sw         $v1, %gp_rel(D_80097D2C)($gp)
    /* 29058 80038858 D00483AF */  sw         $v1, %gp_rel(D_80097D34)($gp)
    /* 2905C 8003885C F00482AF */  sw         $v0, %gp_rel(D_80097D54)($gp)
    /* 29060 80038860 EDDF000C */  jal        func_80037FB4
    /* 29064 80038864 48000426 */   addiu     $a0, $s0, 0x48
    /* 29068 80038868 0980043C */  lui        $a0, %hi(D_80097D58)
    /* 2906C 8003886C 587D8424 */  addiu      $a0, $a0, %lo(D_80097D58)
    /* 29070 80038870 8EE6000C */  jal        func_80039A38
    /* 29074 80038874 00000000 */   nop
    /* 29078 80038878 FAE5000C */  jal        func_800397E8
    /* 2907C 8003887C 00000000 */   nop
    /* 29080 80038880 1400BF8F */  lw         $ra, 0x14($sp)
    /* 29084 80038884 1000B08F */  lw         $s0, 0x10($sp)
    /* 29088 80038888 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2908C 8003888C 0800E003 */  jr         $ra
    /* 29090 80038890 00000000 */   nop
.size func_80038648, . - func_80038648
