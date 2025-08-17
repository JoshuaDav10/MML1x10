.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80015634
    /* 5E34 80015634 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E38 80015638 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E3C 8001563C 21808000 */  addu       $s0, $a0, $zero
    /* 5E40 80015640 01000424 */  addiu      $a0, $zero, 0x1
    /* 5E44 80015644 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5E48 80015648 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E4C 8001564C 82000392 */  lbu        $v1, 0x82($s0)
    /* 5E50 80015650 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5E54 80015654 040000AE */  sw         $zero, 0x4($s0)
    /* 5E58 80015658 080000AE */  sw         $zero, 0x8($s0)
    /* 5E5C 8001565C 680002A6 */  sh         $v0, 0x68($s0)
    /* 5E60 80015660 6A0002A6 */  sh         $v0, 0x6A($s0)
    /* 5E64 80015664 6C0002A6 */  sh         $v0, 0x6C($s0)
    /* 5E68 80015668 810000A2 */  sb         $zero, 0x81($s0)
    /* 5E6C 8001566C 830000A2 */  sb         $zero, 0x83($s0)
    /* 5E70 80015670 0C80013C */  lui        $at, %hi(D_800C356C)
    /* 5E74 80015674 6C3520A0 */  sb         $zero, %lo(D_800C356C)($at)
    /* 5E78 80015678 EAB9000C */  jal        func_8002E7A8
    /* 5E7C 8001567C 01007130 */   andi      $s1, $v1, 0x1
    /* 5E80 80015680 05002016 */  bnez       $s1, .L80015698
    /* 5E84 80015684 00000000 */   nop
    /* 5E88 80015688 2F99010C */  jal        func_800664BC
    /* 5E8C 8001568C 00000000 */   nop
    /* 5E90 80015690 A8550008 */  j          .L800156A0
    /* 5E94 80015694 00000000 */   nop
  .L80015698:
    /* 5E98 80015698 AA96010C */  jal        func_80065AA8
    /* 5E9C 8001569C 00000000 */   nop
  .L800156A0:
    /* 5EA0 800156A0 90EF000C */  jal        func_8003BE40
    /* 5EA4 800156A4 21202002 */   addu      $a0, $s1, $zero
    /* 5EA8 800156A8 3076000C */  jal        func_8001D8C0
    /* 5EAC 800156AC 21202002 */   addu      $a0, $s1, $zero
    /* 5EB0 800156B0 9EEC000C */  jal        func_8003B278
    /* 5EB4 800156B4 21202002 */   addu      $a0, $s1, $zero
    /* 5EB8 800156B8 ED76010C */  jal        func_8005DBB4
    /* 5EBC 800156BC 21202002 */   addu      $a0, $s1, $zero
    /* 5EC0 800156C0 9B9F010C */  jal        func_80067E6C
    /* 5EC4 800156C4 21202002 */   addu      $a0, $s1, $zero
    /* 5EC8 800156C8 EA8E010C */  jal        func_80063BA8
    /* 5ECC 800156CC 00000000 */   nop
    /* 5ED0 800156D0 ED67000C */  jal        func_80019FB4
    /* 5ED4 800156D4 00000000 */   nop
    /* 5ED8 800156D8 0F000424 */  addiu      $a0, $zero, 0xF
    /* 5EDC 800156DC 3C000326 */  addiu      $v1, $s0, 0x3C
    /* 5EE0 800156E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 5EE4 800156E4 000002A2 */  sb         $v0, 0x0($s0)
    /* 5EE8 800156E8 010000A2 */  sb         $zero, 0x1($s0)
  .L800156EC:
    /* 5EEC 800156EC 740160AC */  sw         $zero, 0x174($v1)
    /* 5EF0 800156F0 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 5EF4 800156F4 FDFF8104 */  bgez       $a0, .L800156EC
    /* 5EF8 800156F8 FCFF6324 */   addiu     $v1, $v1, -0x4
    /* 5EFC 800156FC C791010C */  jal        func_8006471C
    /* 5F00 80015700 00000000 */   nop
    /* 5F04 80015704 A376000C */  jal        Sce_flag_on
    /* 5F08 80015708 FE010424 */   addiu     $a0, $zero, 0x1FE
    /* 5F0C 8001570C A376000C */  jal        Sce_flag_on
    /* 5F10 80015710 8A030424 */   addiu     $a0, $zero, 0x38A
    /* 5F14 80015714 A376000C */  jal        Sce_flag_on
    /* 5F18 80015718 C7030424 */   addiu     $a0, $zero, 0x3C7
    /* 5F1C 8001571C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5F20 80015720 1400B18F */  lw         $s1, 0x14($sp)
    /* 5F24 80015724 1000B08F */  lw         $s0, 0x10($sp)
    /* 5F28 80015728 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5F2C 8001572C 0800E003 */  jr         $ra
    /* 5F30 80015730 00000000 */   nop
.size func_80015634, . - func_80015634
