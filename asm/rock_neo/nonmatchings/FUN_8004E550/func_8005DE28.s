.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DE28
    /* 4E628 8005DE28 0C80023C */  lui        $v0, %hi(Game_work + 0x59)
    /* 4E62C 8005DE2C 691B4280 */  lb         $v0, %lo(Game_work + 0x59)($v0)
    /* 4E630 8005DE30 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4E634 8005DE34 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4E638 8005DE38 3B004014 */  bnez       $v0, .L8005DF28
    /* 4E63C 8005DE3C 3000B0AF */   sw        $s0, 0x30($sp)
    /* 4E640 8005DE40 A007828F */  lw         $v0, %gp_rel(D_80098004)($gp)
    /* 4E644 8005DE44 00000000 */  nop
    /* 4E648 8005DE48 02004230 */  andi       $v0, $v0, 0x2
    /* 4E64C 8005DE4C 36004010 */  beqz       $v0, .L8005DF28
    /* 4E650 8005DE50 00000000 */   nop
    /* 4E654 8005DE54 B807828F */  lw         $v0, %gp_rel(D_8009801C)($gp)
    /* 4E658 8005DE58 00000000 */  nop
    /* 4E65C 8005DE5C 04004014 */  bnez       $v0, .L8005DE70
    /* 4E660 8005DE60 08000224 */   addiu     $v0, $zero, 0x8
    /* 4E664 8005DE64 B00782AF */  sw         $v0, %gp_rel(D_80098014)($gp)
    /* 4E668 8005DE68 60000224 */  addiu      $v0, $zero, 0x60
    /* 4E66C 8005DE6C B40782AF */  sw         $v0, %gp_rel(D_80098018)($gp)
  .L8005DE70:
    /* 4E670 8005DE70 1000A427 */  addiu      $a0, $sp, 0x10
    /* 4E674 8005DE74 300F838F */  lw         $v1, %gp_rel(D_80098794)($gp)
    /* 4E678 8005DE78 B407858F */  lw         $a1, %gp_rel(D_80098018)($gp)
    /* 4E67C 8005DE7C 40100300 */  sll        $v0, $v1, 1
    /* 4E680 8005DE80 21104300 */  addu       $v0, $v0, $v1
    /* 4E684 8005DE84 80100200 */  sll        $v0, $v0, 2
    /* 4E688 8005DE88 0980013C */  lui        $at, %hi(D_8008D1A4)
    /* 4E68C 8005DE8C 21082200 */  addu       $at, $at, $v0
    /* 4E690 8005DE90 A4D12684 */  lh         $a2, %lo(D_8008D1A4)($at)
    /* 4E694 8005DE94 0980013C */  lui        $at, %hi(D_8008D1A6)
    /* 4E698 8005DE98 21082200 */  addu       $at, $at, $v0
    /* 4E69C 8005DE9C A6D12784 */  lh         $a3, %lo(D_8008D1A6)($at)
    /* 4E6A0 8005DEA0 B007838F */  lw         $v1, %gp_rel(D_80098014)($gp)
    /* 4E6A4 8005DEA4 06000224 */  addiu      $v0, $zero, 0x6
    /* 4E6A8 8005DEA8 D00782AF */  sw         $v0, %gp_rel(D_80098034)($gp)
    /* 4E6AC 8005DEAC 0B000224 */  addiu      $v0, $zero, 0xB
    /* 4E6B0 8005DEB0 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 4E6B4 8005DEB4 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 4E6B8 8005DEB8 36000224 */  addiu      $v0, $zero, 0x36
    /* 4E6BC 8005DEBC 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* 4E6C0 8005DEC0 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* 4E6C4 8005DEC4 0B80023C */  lui        $v0, %hi(Player_work + 0x18)
    /* 4E6C8 8005DEC8 C8514284 */  lh         $v0, %lo(Player_work + 0x18)($v0)
    /* 4E6CC 8005DECC 2800B027 */  addiu      $s0, $sp, 0x28
    /* 4E6D0 8005DED0 1200A5A7 */  sh         $a1, 0x12($sp)
    /* 4E6D4 8005DED4 C4FFA524 */  addiu      $a1, $a1, -0x3C
    /* 4E6D8 8005DED8 2A00A5A7 */  sh         $a1, 0x2A($sp)
    /* 4E6DC 8005DEDC 1800A527 */  addiu      $a1, $sp, 0x18
    /* 4E6E0 8005DEE0 1000A3A7 */  sh         $v1, 0x10($sp)
    /* 4E6E4 8005DEE4 06006324 */  addiu      $v1, $v1, 0x6
    /* 4E6E8 8005DEE8 23104700 */  subu       $v0, $v0, $a3
    /* 4E6EC 8005DEEC 43120200 */  sra        $v0, $v0, 9
    /* 4E6F0 8005DEF0 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 4E6F4 8005DEF4 2800A3A7 */  sh         $v1, 0x28($sp)
    /* 4E6F8 8005DEF8 0B80033C */  lui        $v1, %hi(Player_work + 0x14)
    /* 4E6FC 8005DEFC C4516384 */  lh         $v1, %lo(Player_work + 0x14)($v1)
    /* 4E700 8005DF00 21380002 */  addu       $a3, $s0, $zero
    /* 4E704 8005DF04 2200A2A7 */  sh         $v0, 0x22($sp)
    /* 4E708 8005DF08 23186600 */  subu       $v1, $v1, $a2
    /* 4E70C 8005DF0C 431A0300 */  sra        $v1, $v1, 9
    /* 4E710 8005DF10 FBFF6324 */  addiu      $v1, $v1, -0x5
    /* 4E714 8005DF14 2000A627 */  addiu      $a2, $sp, 0x20
    /* 4E718 8005DF18 5178010C */  jal        func_8005E144
    /* 4E71C 8005DF1C 2000A3A7 */   sh        $v1, 0x20($sp)
    /* 4E720 8005DF20 7E7A010C */  jal        func_8005E9F8
    /* 4E724 8005DF24 21200002 */   addu      $a0, $s0, $zero
  .L8005DF28:
    /* 4E728 8005DF28 3400BF8F */  lw         $ra, 0x34($sp)
.size func_8005DE28, . - func_8005DE28
