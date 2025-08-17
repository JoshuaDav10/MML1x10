.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001CF98
    /* D798 8001CF98 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D79C 8001CF9C 09000324 */  addiu      $v1, $zero, 0x9
    /* D7A0 8001CFA0 0A80023C */  lui        $v0, %hi(D_80098B41)
    /* D7A4 8001CFA4 418B4224 */  addiu      $v0, $v0, %lo(D_80098B41)
    /* D7A8 8001CFA8 1400BFAF */  sw         $ra, 0x14($sp)
    /* D7AC 8001CFAC 1000B0AF */  sw         $s0, 0x10($sp)
  .L8001CFB0:
    /* D7B0 8001CFB0 000040A0 */  sb         $zero, 0x0($v0)
    /* D7B4 8001CFB4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* D7B8 8001CFB8 FDFF6104 */  bgez       $v1, .L8001CFB0
    /* D7BC 8001CFBC FFFF4224 */   addiu     $v0, $v0, -0x1
    /* D7C0 8001CFC0 0A80053C */  lui        $a1, %hi(D_80098814)
    /* D7C4 8001CFC4 1488A524 */  addiu      $a1, $a1, %lo(D_80098814)
    /* D7C8 8001CFC8 40800400 */  sll        $s0, $a0, 1
    /* D7CC 8001CFCC 21800402 */  addu       $s0, $s0, $a0
    /* D7D0 8001CFD0 80801000 */  sll        $s0, $s0, 2
    /* D7D4 8001CFD4 0880013C */  lui        $at, %hi(D_80082CD0)
    /* D7D8 8001CFD8 21083000 */  addu       $at, $at, $s0
    /* D7DC 8001CFDC D02C248C */  lw         $a0, %lo(D_80082CD0)($at)
    /* D7E0 8001CFE0 01000224 */  addiu      $v0, $zero, 0x1
    /* D7E4 8001CFE4 0A80013C */  lui        $at, %hi(D_800988C0)
    /* D7E8 8001CFE8 C08822A0 */  sb         $v0, %lo(D_800988C0)($at)
    /* D7EC 8001CFEC 07000224 */  addiu      $v0, $zero, 0x7
    /* D7F0 8001CFF0 0A80013C */  lui        $at, %hi(D_80098B42)
    /* D7F4 8001CFF4 428B22A0 */  sb         $v0, %lo(D_80098B42)($at)
    /* D7F8 8001CFF8 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D7FC 8001CFFC 6C8920A0 */  sb         $zero, %lo(D_8009896C)($at)
    /* D800 8001D000 0A80013C */  lui        $at, %hi(D_80098828)
    /* D804 8001D004 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* D808 8001D008 0A80013C */  lui        $at, %hi(D_80098964)
    /* D80C 8001D00C 648920A0 */  sb         $zero, %lo(D_80098964)($at)
    /* D810 8001D010 0A80013C */  lui        $at, %hi(D_80098998)
    /* D814 8001D014 988920AC */  sw         $zero, %lo(D_80098998)($at)
    /* D818 8001D018 0A80013C */  lui        $at, %hi(D_80098A7C)
    /* D81C 8001D01C 7C8A24AC */  sw         $a0, %lo(D_80098A7C)($at)
    /* D820 8001D020 A2DF010C */  jal        CdIntToPos
    /* D824 8001D024 00000000 */   nop
    /* D828 8001D028 0880013C */  lui        $at, %hi(D_80082CD0 + 0x4)
    /* D82C 8001D02C 21083000 */  addu       $at, $at, $s0
    /* D830 8001D030 D42C228C */  lw         $v0, %lo(D_80082CD0 + 0x4)($at)
    /* D834 8001D034 0280043C */  lui        $a0, %hi(func_8001D078)
    /* D838 8001D038 78D08424 */  addiu      $a0, $a0, %lo(func_8001D078)
    /* D83C 8001D03C 0A80013C */  lui        $at, %hi(D_8009881C)
    /* D840 8001D040 1C8822AC */  sw         $v0, %lo(D_8009881C)($at)
    /* D844 8001D044 89DE010C */  jal        CdReadyCallback
    /* D848 8001D048 00000000 */   nop
    /* D84C 8001D04C 0A80053C */  lui        $a1, %hi(D_80098814)
    /* D850 8001D050 1488A524 */  addiu      $a1, $a1, %lo(D_80098814)
    /* D854 8001D054 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D858 8001D058 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D85C 8001D05C AF74000C */  jal        func_8001D2BC
    /* D860 8001D060 06000424 */   addiu     $a0, $zero, 0x6
    /* D864 8001D064 1400BF8F */  lw         $ra, 0x14($sp)
    /* D868 8001D068 1000B08F */  lw         $s0, 0x10($sp)
    /* D86C 8001D06C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D870 8001D070 0800E003 */  jr         $ra
    /* D874 8001D074 00000000 */   nop
.size func_8001CF98, . - func_8001CF98
