.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BE6C
    /* 2C66C 8003BE6C 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 2C670 8003BE70 0A80013C */  lui        $at, %hi(D_8009888C)
    /* 2C674 8003BE74 8C8822AC */  sw         $v0, %lo(D_8009888C)($at)
    /* 2C678 8003BE78 0C80023C */  lui        $v0, %hi(Game_work + 0x82)
    /* 2C67C 8003BE7C 921B4280 */  lb         $v0, %lo(Game_work + 0x82)($v0)
    /* 2C680 8003BE80 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2C684 8003BE84 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C688 8003BE88 21808000 */  addu       $s0, $a0, $zero
    /* 2C68C 8003BE8C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C690 8003BE90 2190A000 */  addu       $s2, $a1, $zero
    /* 2C694 8003BE94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C698 8003BE98 0B80113C */  lui        $s1, %hi(D_800B5DB0)
    /* 2C69C 8003BE9C B05D3126 */  addiu      $s1, $s1, %lo(D_800B5DB0)
    /* 2C6A0 8003BEA0 80004230 */  andi       $v0, $v0, 0x80
    /* 2C6A4 8003BEA4 04004010 */  beqz       $v0, .L8003BEB8
    /* 2C6A8 8003BEA8 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 2C6AC 8003BEAC 000000A2 */  sb         $zero, 0x0($s0)
    /* 2C6B0 8003BEB0 B5EF0008 */  j          .L8003BED4
    /* 2C6B4 8003BEB4 060000A2 */   sb        $zero, 0x6($s0)
  .L8003BEB8:
    /* 2C6B8 8003BEB8 03000224 */  addiu      $v0, $zero, 0x3
    /* 2C6BC 8003BEBC 000002A2 */  sb         $v0, 0x0($s0)
    /* 2C6C0 8003BEC0 060002A2 */  sb         $v0, 0x6($s0)
    /* 2C6C4 8003BEC4 020000A6 */  sh         $zero, 0x2($s0)
    /* 2C6C8 8003BEC8 040000A6 */  sh         $zero, 0x4($s0)
    /* 2C6CC 8003BECC 0C0000AE */  sw         $zero, 0xC($s0)
    /* 2C6D0 8003BED0 080000AE */  sw         $zero, 0x8($s0)
  .L8003BED4:
    /* 2C6D4 8003BED4 0980023C */  lui        $v0, %hi(D_80097D90)
    /* 2C6D8 8003BED8 907D4224 */  addiu      $v0, $v0, %lo(D_80097D90)
    /* 2C6DC 8003BEDC 780002AE */  sw         $v0, 0x78($s0)
    /* 2C6E0 8003BEE0 0B80023C */  lui        $v0, %hi(Player_work)
    /* 2C6E4 8003BEE4 B0514224 */  addiu      $v0, $v0, %lo(Player_work)
    /* 2C6E8 8003BEE8 BD0000A2 */  sb         $zero, 0xBD($s0)
    /* 2C6EC 8003BEEC 750000A2 */  sb         $zero, 0x75($s0)
    /* 2C6F0 8003BEF0 740000A2 */  sb         $zero, 0x74($s0)
    /* 2C6F4 8003BEF4 770000A2 */  sb         $zero, 0x77($s0)
    /* 2C6F8 8003BEF8 760000A2 */  sb         $zero, 0x76($s0)
    /* 2C6FC 8003BEFC 840100AE */  sw         $zero, 0x184($s0)
    /* 2C700 8003BF00 100100A2 */  sb         $zero, 0x110($s0)
    /* 2C704 8003BF04 110100A2 */  sb         $zero, 0x111($s0)
    /* 2C708 8003BF08 05000216 */  bne        $s0, $v0, .L8003BF20
    /* 2C70C 8003BF0C 490400A2 */   sb        $zero, 0x449($s0)
    /* 2C710 8003BF10 0B80013C */  lui        $at, %hi(Player_work + 0x2)
    /* 2C714 8003BF14 B25120A0 */  sb         $zero, %lo(Player_work + 0x2)($at)
    /* 2C718 8003BF18 CAEF0008 */  j          .L8003BF28
    /* 2C71C 8003BF1C 00000000 */   nop
  .L8003BF20:
    /* 2C720 8003BF20 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C724 8003BF24 020002A2 */  sb         $v0, 0x2($s0)
  .L8003BF28:
    /* 2C728 8003BF28 0C80053C */  lui        $a1, %hi(Game_work + 0x54)
    /* 2C72C 8003BF2C 641BA580 */  lb         $a1, %lo(Game_work + 0x54)($a1)
    /* 2C730 8003BF30 7F09010C */  jal        func_800425FC
    /* 2C734 8003BF34 21200002 */   addu      $a0, $s0, $zero
    /* 2C738 8003BF38 19004016 */  bnez       $s2, .L8003BFA0
    /* 2C73C 8003BF3C 0C022426 */   addiu     $a0, $s1, 0x20C
    /* 2C740 8003BF40 54040426 */  addiu      $a0, $s0, 0x454
    /* 2C744 8003BF44 58040526 */  addiu      $a1, $s0, 0x458
    /* 2C748 8003BF48 50000224 */  addiu      $v0, $zero, 0x50
    /* 2C74C 8003BF4C B00002A6 */  sh         $v0, 0xB0($s0)
    /* 2C750 8003BF50 6E0002A6 */  sh         $v0, 0x6E($s0)
    /* 2C754 8003BF54 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C758 8003BF58 6A0100A2 */  sb         $zero, 0x16A($s0)
    /* 2C75C 8003BF5C 6B0100A2 */  sb         $zero, 0x16B($s0)
    /* 2C760 8003BF60 6C0100A2 */  sb         $zero, 0x16C($s0)
    /* 2C764 8003BF64 700100A2 */  sb         $zero, 0x170($s0)
    /* 2C768 8003BF68 720100A2 */  sb         $zero, 0x172($s0)
    /* 2C76C 8003BF6C 710100A2 */  sb         $zero, 0x171($s0)
    /* 2C770 8003BF70 730102A2 */  sb         $v0, 0x173($s0)
    /* 2C774 8003BF74 4C0400A2 */  sb         $zero, 0x44C($s0)
    /* 2C778 8003BF78 4E0400A2 */  sb         $zero, 0x44E($s0)
    /* 2C77C 8003BF7C F35D000C */  jal        func_800177CC
    /* 2C780 8003BF80 500400AE */   sw        $zero, 0x450($s0)
    /* 2C784 8003BF84 74040426 */  addiu      $a0, $s0, 0x474
    /* 2C788 8003BF88 F35D000C */  jal        func_800177CC
    /* 2C78C 8003BF8C B0040526 */   addiu     $a1, $s0, 0x4B0
    /* 2C790 8003BF90 4DDD000C */  jal        func_80037534
    /* 2C794 8003BF94 21200002 */   addu      $a0, $s0, $zero
    /* 2C798 8003BF98 18F00008 */  j          .L8003C060
    /* 2C79C 8003BF9C 00000000 */   nop
  .L8003BFA0:
    /* 2C7A0 8003BFA0 CE012296 */  lhu        $v0, 0x1CE($s1)
    /* 2C7A4 8003BFA4 00000000 */  nop
    /* 2C7A8 8003BFA8 B00002A6 */  sh         $v0, 0xB0($s0)
    /* 2C7AC 8003BFAC 6E0002A6 */  sh         $v0, 0x6E($s0)
    /* 2C7B0 8003BFB0 D4012292 */  lbu        $v0, 0x1D4($s1)
    /* 2C7B4 8003BFB4 00000000 */  nop
    /* 2C7B8 8003BFB8 6A0102A2 */  sb         $v0, 0x16A($s0)
    /* 2C7BC 8003BFBC D5012292 */  lbu        $v0, 0x1D5($s1)
    /* 2C7C0 8003BFC0 00000000 */  nop
    /* 2C7C4 8003BFC4 6B0102A2 */  sb         $v0, 0x16B($s0)
    /* 2C7C8 8003BFC8 D6012292 */  lbu        $v0, 0x1D6($s1)
    /* 2C7CC 8003BFCC 00000000 */  nop
    /* 2C7D0 8003BFD0 6C0102A2 */  sb         $v0, 0x16C($s0)
    /* 2C7D4 8003BFD4 D8012292 */  lbu        $v0, 0x1D8($s1)
    /* 2C7D8 8003BFD8 00000000 */  nop
    /* 2C7DC 8003BFDC 700102A2 */  sb         $v0, 0x170($s0)
    /* 2C7E0 8003BFE0 D9012292 */  lbu        $v0, 0x1D9($s1)
    /* 2C7E4 8003BFE4 00000000 */  nop
    /* 2C7E8 8003BFE8 710102A2 */  sb         $v0, 0x171($s0)
    /* 2C7EC 8003BFEC DA012292 */  lbu        $v0, 0x1DA($s1)
    /* 2C7F0 8003BFF0 00000000 */  nop
    /* 2C7F4 8003BFF4 720102A2 */  sb         $v0, 0x172($s0)
    /* 2C7F8 8003BFF8 DB012292 */  lbu        $v0, 0x1DB($s1)
    /* 2C7FC 8003BFFC 00000000 */  nop
    /* 2C800 8003C000 730102A2 */  sb         $v0, 0x173($s0)
    /* 2C804 8003C004 DC012292 */  lbu        $v0, 0x1DC($s1)
    /* 2C808 8003C008 00000000 */  nop
    /* 2C80C 8003C00C 4C0402A2 */  sb         $v0, 0x44C($s0)
    /* 2C810 8003C010 DE012292 */  lbu        $v0, 0x1DE($s1)
    /* 2C814 8003C014 00000000 */  nop
    /* 2C818 8003C018 4E0402A2 */  sb         $v0, 0x44E($s0)
    /* 2C81C 8003C01C DF012292 */  lbu        $v0, 0x1DF($s1)
    /* 2C820 8003C020 54040526 */  addiu      $a1, $s0, 0x454
    /* 2C824 8003C024 4F0402A2 */  sb         $v0, 0x44F($s0)
    /* 2C828 8003C028 0802228E */  lw         $v0, 0x208($s1)
    /* 2C82C 8003C02C 01000624 */  addiu      $a2, $zero, 0x1
    /* 2C830 8003C030 B75D000C */  jal        .L800176DC
    /* 2C834 8003C034 500402AE */   sw        $v0, 0x450($s0)
    /* 2C838 8003C038 801C2426 */  addiu      $a0, $s1, 0x1C80
    /* 2C83C 8003C03C 74040526 */  addiu      $a1, $s0, 0x474
    /* 2C840 8003C040 B75D000C */  jal        .L800176DC
    /* 2C844 8003C044 04000624 */   addiu     $a2, $zero, 0x4
    /* 2C848 8003C048 2C022426 */  addiu      $a0, $s1, 0x22C
    /* 2C84C 8003C04C F4040526 */  addiu      $a1, $s0, 0x4F4
    /* 2C850 8003C050 B75D000C */  jal        .L800176DC
    /* 2C854 8003C054 08000624 */   addiu     $a2, $zero, 0x8
    /* 2C858 8003C058 65DD000C */  jal        func_80037594
    /* 2C85C 8003C05C 00000000 */   nop
  .L8003C060:
    /* 2C860 8003C060 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2C864 8003C064 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C868 8003C068 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C86C 8003C06C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C870 8003C070 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2C874 8003C074 0800E003 */  jr         $ra
    /* 2C878 8003C078 00000000 */   nop
.size func_8003BE6C, . - func_8003BE6C
