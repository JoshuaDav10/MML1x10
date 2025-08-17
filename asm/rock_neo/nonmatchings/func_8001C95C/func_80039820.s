.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039820
    /* 2A020 80039820 0B80033C */  lui        $v1, %hi(Player_work + 0x14)
    /* 2A024 80039824 C4516384 */  lh         $v1, %lo(Player_work + 0x14)($v1)
    /* 2A028 80039828 0B80043C */  lui        $a0, %hi(Player_work + 0x16)
    /* 2A02C 8003982C C6518484 */  lh         $a0, %lo(Player_work + 0x16)($a0)
    /* 2A030 80039830 0B80053C */  lui        $a1, %hi(Player_work + 0x18)
    /* 2A034 80039834 C851A584 */  lh         $a1, %lo(Player_work + 0x18)($a1)
    /* 2A038 80039838 0B80063C */  lui        $a2, %hi(Player_work + 0x56)
    /* 2A03C 8003983C 0652C684 */  lh         $a2, %lo(Player_work + 0x56)($a2)
    /* 2A040 80039840 30000224 */  addiu      $v0, $zero, 0x30
    /* 2A044 80039844 0A80013C */  lui        $at, %hi(D_800A396C)
    /* 2A048 80039848 6C3922AC */  sw         $v0, %lo(D_800A396C)($at)
    /* 2A04C 8003984C 00020224 */  addiu      $v0, $zero, 0x200
    /* 2A050 80039850 C80482AF */  sw         $v0, %gp_rel(D_80097D2C)($gp)
    /* 2A054 80039854 0A80013C */  lui        $at, %hi(D_800A3964)
    /* 2A058 80039858 643922AC */  sw         $v0, %lo(D_800A3964)($at)
    /* 2A05C 8003985C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2A060 80039860 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 2A064 80039864 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 2A068 80039868 96000224 */  addiu      $v0, $zero, 0x96
    /* 2A06C 8003986C 0A80013C */  lui        $at, %hi(D_800A3959)
    /* 2A070 80039870 593920A0 */  sb         $zero, %lo(D_800A3959)($at)
    /* 2A074 80039874 0B80013C */  lui        $at, %hi(Player_work + 0x44D)
    /* 2A078 80039878 FD5520A0 */  sb         $zero, %lo(Player_work + 0x44D)($at)
    /* 2A07C 8003987C 0A80013C */  lui        $at, %hi(D_800A39B4)
    /* 2A080 80039880 B43922AC */  sw         $v0, %lo(D_800A39B4)($at)
    /* 2A084 80039884 0008C624 */  addiu      $a2, $a2, 0x800
    /* 2A088 80039888 0A80013C */  lui        $at, %hi(D_800A39E0)
    /* 2A08C 8003988C E03923AC */  sw         $v1, %lo(D_800A39E0)($at)
    /* 2A090 80039890 0A80013C */  lui        $at, %hi(D_800A39C0)
    /* 2A094 80039894 C03923AC */  sw         $v1, %lo(D_800A39C0)($at)
    /* 2A098 80039898 0A80013C */  lui        $at, %hi(D_800A39A0)
    /* 2A09C 8003989C A03923AC */  sw         $v1, %lo(D_800A39A0)($at)
    /* 2A0A0 800398A0 0A80013C */  lui        $at, %hi(D_800A39E4)
    /* 2A0A4 800398A4 E43924AC */  sw         $a0, %lo(D_800A39E4)($at)
    /* 2A0A8 800398A8 0A80013C */  lui        $at, %hi(D_800A39C4)
    /* 2A0AC 800398AC C43924AC */  sw         $a0, %lo(D_800A39C4)($at)
    /* 2A0B0 800398B0 0A80013C */  lui        $at, %hi(D_800A39A4)
    /* 2A0B4 800398B4 A43924AC */  sw         $a0, %lo(D_800A39A4)($at)
    /* 2A0B8 800398B8 0A80013C */  lui        $at, %hi(D_800A39E8)
    /* 2A0BC 800398BC E83925AC */  sw         $a1, %lo(D_800A39E8)($at)
    /* 2A0C0 800398C0 0A80013C */  lui        $at, %hi(D_800A39C8)
    /* 2A0C4 800398C4 C83925AC */  sw         $a1, %lo(D_800A39C8)($at)
    /* 2A0C8 800398C8 0A80013C */  lui        $at, %hi(D_800A39A8)
    /* 2A0CC 800398CC A83925AC */  sw         $a1, %lo(D_800A39A8)($at)
    /* 2A0D0 800398D0 0A80013C */  lui        $at, %hi(D_800A3968)
    /* 2A0D4 800398D4 683926AC */  sw         $a2, %lo(D_800A3968)($at)
    /* 2A0D8 800398D8 0800E003 */  jr         $ra
    /* 2A0DC 800398DC 00000000 */   nop
.size func_80039820, . - func_80039820
