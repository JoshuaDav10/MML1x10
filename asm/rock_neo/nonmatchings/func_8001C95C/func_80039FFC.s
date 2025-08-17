.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039FFC
    /* 2A7FC 80039FFC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A800 8003A000 0A80013C */  lui        $at, %hi(D_800A3959)
    /* 2A804 8003A004 593922A0 */  sb         $v0, %lo(D_800A3959)($at)
    /* 2A808 8003A008 40000224 */  addiu      $v0, $zero, 0x40
    /* 2A80C 8003A00C 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 2A810 8003A010 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 2A814 8003A014 0A80093C */  lui        $t1, %hi(D_800A39A0)
    /* 2A818 8003A018 A0392925 */  addiu      $t1, $t1, %lo(D_800A39A0)
    /* 2A81C 8003A01C 0A80083C */  lui        $t0, %hi(D_800A39C0)
    /* 2A820 8003A020 C0390825 */  addiu      $t0, $t0, %lo(D_800A39C0)
    /* 2A824 8003A024 0000228D */  lw         $v0, 0x0($t1)
    /* 2A828 8003A028 0400238D */  lw         $v1, 0x4($t1)
    /* 2A82C 8003A02C 000002AD */  sw         $v0, 0x0($t0)
    /* 2A830 8003A030 040003AD */  sw         $v1, 0x4($t0)
    /* 2A834 8003A034 0800228D */  lw         $v0, 0x8($t1)
    /* 2A838 8003A038 0C00238D */  lw         $v1, 0xC($t1)
    /* 2A83C 8003A03C 080002AD */  sw         $v0, 0x8($t0)
    /* 2A840 8003A040 0C0003AD */  sw         $v1, 0xC($t0)
    /* 2A844 8003A044 0A80033C */  lui        $v1, %hi(D_800A3964)
    /* 2A848 8003A048 6439638C */  lw         $v1, %lo(D_800A3964)($v1)
    /* 2A84C 8003A04C 00020224 */  addiu      $v0, $zero, 0x200
    /* 2A850 8003A050 C80482AF */  sw         $v0, %gp_rel(D_80097D2C)($gp)
    /* 2A854 8003A054 0A80023C */  lui        $v0, %hi(D_800A3968)
    /* 2A858 8003A058 6839428C */  lw         $v0, %lo(D_800A3968)($v0)
    /* 2A85C 8003A05C FF0FC630 */  andi       $a2, $a2, 0xFFF
    /* 2A860 8003A060 0B80013C */  lui        $at, %hi(Player_work + 0x44D)
    /* 2A864 8003A064 FD5520A0 */  sb         $zero, %lo(Player_work + 0x44D)($at)
    /* 2A868 8003A068 0A80013C */  lui        $at, %hi(D_800A397C)
    /* 2A86C 8003A06C 7C3923AC */  sw         $v1, %lo(D_800A397C)($at)
    /* 2A870 8003A070 0A80033C */  lui        $v1, %hi(D_800A396C)
    /* 2A874 8003A074 6C39638C */  lw         $v1, %lo(D_800A396C)($v1)
    /* 2A878 8003A078 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 2A87C 8003A07C 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2A880 8003A080 803922AC */  sw         $v0, %lo(D_800A3980)($at)
    /* 2A884 8003A084 0A80013C */  lui        $at, %hi(D_800A3984)
    /* 2A888 8003A088 843923AC */  sw         $v1, %lo(D_800A3984)($at)
    /* 2A88C 8003A08C 0A80093C */  lui        $t1, %hi(D_800A39E0)
    /* 2A890 8003A090 E0392925 */  addiu      $t1, $t1, %lo(D_800A39E0)
    /* 2A894 8003A094 0000828C */  lw         $v0, 0x0($a0)
    /* 2A898 8003A098 0400838C */  lw         $v1, 0x4($a0)
    /* 2A89C 8003A09C 0800888C */  lw         $t0, 0x8($a0)
    /* 2A8A0 8003A0A0 000022AD */  sw         $v0, 0x0($t1)
    /* 2A8A4 8003A0A4 040023AD */  sw         $v1, 0x4($t1)
    /* 2A8A8 8003A0A8 080028AD */  sw         $t0, 0x8($t1)
    /* 2A8AC 8003A0AC 0C00828C */  lw         $v0, 0xC($a0)
    /* 2A8B0 8003A0B0 00000000 */  nop
    /* 2A8B4 8003A0B4 0C0022AD */  sw         $v0, 0xC($t1)
    /* 2A8B8 8003A0B8 0A80043C */  lui        $a0, %hi(D_800A3980)
    /* 2A8BC 8003A0BC 8039848C */  lw         $a0, %lo(D_800A3980)($a0)
    /* 2A8C0 8003A0C0 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 2A8C4 8003A0C4 0A80013C */  lui        $at, %hi(D_800A3994)
    /* 2A8C8 8003A0C8 943925AC */  sw         $a1, %lo(D_800A3994)($at)
    /* 2A8CC 8003A0CC 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2A8D0 8003A0D0 983926AC */  sw         $a2, %lo(D_800A3998)($at)
    /* 2A8D4 8003A0D4 0A80013C */  lui        $at, %hi(D_800A399C)
    /* 2A8D8 8003A0D8 9C3927AC */  sw         $a3, %lo(D_800A399C)($at)
    /* 2A8DC 8003A0DC 0A80013C */  lui        $at, %hi(D_800A3961)
    /* 2A8E0 8003A0E0 613922A0 */  sb         $v0, %lo(D_800A3961)($at)
    /* 2A8E4 8003A0E4 2A10C400 */  slt        $v0, $a2, $a0
    /* 2A8E8 8003A0E8 0A004010 */  beqz       $v0, .L8003A114
    /* 2A8EC 8003A0EC 23188600 */   subu      $v1, $a0, $a2
    /* 2A8F0 8003A0F0 00F08224 */  addiu      $v0, $a0, -0x1000
    /* 2A8F4 8003A0F4 2310C200 */  subu       $v0, $a2, $v0
    /* 2A8F8 8003A0F8 2A104300 */  slt        $v0, $v0, $v1
    /* 2A8FC 8003A0FC 0D004010 */  beqz       $v0, .L8003A134
    /* 2A900 8003A100 0010C224 */   addiu     $v0, $a2, 0x1000
    /* 2A904 8003A104 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2A908 8003A108 983922AC */  sw         $v0, %lo(D_800A3998)($at)
    /* 2A90C 8003A10C 4DE80008 */  j          .L8003A134
    /* 2A910 8003A110 00000000 */   nop
  .L8003A114:
    /* 2A914 8003A114 2318C400 */  subu       $v1, $a2, $a0
    /* 2A918 8003A118 00F0C224 */  addiu      $v0, $a2, -0x1000
    /* 2A91C 8003A11C 23108200 */  subu       $v0, $a0, $v0
    /* 2A920 8003A120 2A104300 */  slt        $v0, $v0, $v1
    /* 2A924 8003A124 03004010 */  beqz       $v0, .L8003A134
    /* 2A928 8003A128 00108224 */   addiu     $v0, $a0, 0x1000
    /* 2A92C 8003A12C 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2A930 8003A130 803922AC */  sw         $v0, %lo(D_800A3980)($at)
  .L8003A134:
    /* 2A934 8003A134 0800E003 */  jr         $ra
    /* 2A938 8003A138 00000000 */   nop
.size func_80039FFC, . - func_80039FFC
