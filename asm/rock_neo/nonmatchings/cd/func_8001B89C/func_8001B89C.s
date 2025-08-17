.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B89C
    /* C09C 8001B89C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C0A0 8001B8A0 0A80033C */  lui        $v1, %hi(D_800989C4)
    /* C0A4 8001B8A4 C489638C */  lw         $v1, %lo(D_800989C4)($v1)
    /* C0A8 8001B8A8 01000224 */  addiu      $v0, $zero, 0x1
    /* C0AC 8001B8AC 2400BFAF */  sw         $ra, 0x24($sp)
    /* C0B0 8001B8B0 18006210 */  beq        $v1, $v0, .L8001B914
    /* C0B4 8001B8B4 2000B0AF */   sw        $s0, 0x20($sp)
    /* C0B8 8001B8B8 07006010 */  beqz       $v1, .L8001B8D8
    /* C0BC 8001B8BC 02000224 */   addiu     $v0, $zero, 0x2
    /* C0C0 8001B8C0 23006210 */  beq        $v1, $v0, .L8001B950
    /* C0C4 8001B8C4 03000224 */   addiu     $v0, $zero, 0x3
    /* C0C8 8001B8C8 73006210 */  beq        $v1, $v0, .L8001BA98
    /* C0CC 8001B8CC 00000000 */   nop
    /* C0D0 8001B8D0 CE6E0008 */  j          .L8001BB38
    /* C0D4 8001B8D4 00000000 */   nop
  .L8001B8D8:
    /* C0D8 8001B8D8 0A80023C */  lui        $v0, %hi(D_80098964)
    /* C0DC 8001B8DC 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* C0E0 8001B8E0 00000000 */  nop
    /* C0E4 8001B8E4 03004014 */  bnez       $v0, .L8001B8F4
    /* C0E8 8001B8E8 00000000 */   nop
    /* C0EC 8001B8EC DF72000C */  jal        func_8001CB7C
    /* C0F0 8001B8F0 00000000 */   nop
  .L8001B8F4:
    /* C0F4 8001B8F4 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* C0F8 8001B8F8 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* C0FC 8001B8FC 02000324 */  addiu      $v1, $zero, 0x2
    /* C100 8001B900 0A80013C */  lui        $at, %hi(D_800988D0)
    /* C104 8001B904 D08823A0 */  sb         $v1, %lo(D_800988D0)($at)
    /* C108 8001B908 01004224 */  addiu      $v0, $v0, 0x1
    /* C10C 8001B90C 0A80013C */  lui        $at, %hi(D_800989C4)
    /* C110 8001B910 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B914:
    /* C114 8001B914 0A80023C */  lui        $v0, %hi(D_80098964)
    /* C118 8001B918 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* C11C 8001B91C 00000000 */  nop
    /* C120 8001B920 85004010 */  beqz       $v0, .L8001BB38
    /* C124 8001B924 7F000224 */   addiu     $v0, $zero, 0x7F
    /* C128 8001B928 0B80013C */  lui        $at, %hi(D_800AD14E)
    /* C12C 8001B92C 4ED122A4 */  sh         $v0, %lo(D_800AD14E)($at)
    /* C130 8001B930 C974000C */  jal        func_8001D324
    /* C134 8001B934 C8000424 */   addiu     $a0, $zero, 0xC8
    /* C138 8001B938 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* C13C 8001B93C C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* C140 8001B940 00000000 */  nop
    /* C144 8001B944 01004224 */  addiu      $v0, $v0, 0x1
    /* C148 8001B948 0A80013C */  lui        $at, %hi(D_800989C4)
    /* C14C 8001B94C C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001B950:
    /* C150 8001B950 0A80023C */  lui        $v0, %hi(D_80098828)
    /* C154 8001B954 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* C158 8001B958 00000000 */  nop
    /* C15C 8001B95C 05004010 */  beqz       $v0, .L8001B974
    /* C160 8001B960 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* C164 8001B964 0A80013C */  lui        $at, %hi(D_80098828)
    /* C168 8001B968 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* C16C 8001B96C CE6E0008 */  j          .L8001BB38
    /* C170 8001B970 00000000 */   nop
  .L8001B974:
    /* C174 8001B974 0A80013C */  lui        $at, %hi(D_800988C0)
    /* C178 8001B978 C08820A0 */  sb         $zero, %lo(D_800988C0)($at)
    /* C17C 8001B97C 0A80023C */  lui        $v0, %hi(D_800988C0)
    /* C180 8001B980 C0884290 */  lbu        $v0, %lo(D_800988C0)($v0)
    /* C184 8001B984 0A80033C */  lui        $v1, %hi(D_80098B42)
    /* C188 8001B988 428B6390 */  lbu        $v1, %lo(D_80098B42)($v1)
    /* C18C 8001B98C 0A80013C */  lui        $at, %hi(D_8009896C)
    /* C190 8001B990 6C8920A0 */  sb         $zero, %lo(D_8009896C)($at)
    /* C194 8001B994 0A80013C */  lui        $at, %hi(D_80098964)
    /* C198 8001B998 648922A0 */  sb         $v0, %lo(D_80098964)($at)
    /* C19C 8001B99C 02000224 */  addiu      $v0, $zero, 0x2
    /* C1A0 8001B9A0 37006210 */  beq        $v1, $v0, .L8001BA80
    /* C1A4 8001B9A4 FF00073C */   lui       $a3, (0xFFFFFF >> 16)
    /* C1A8 8001B9A8 01000224 */  addiu      $v0, $zero, 0x1
    /* C1AC 8001B9AC 0A80063C */  lui        $a2, %hi(D_80098A84)
    /* C1B0 8001B9B0 848AC68C */  lw         $a2, %lo(D_80098A84)($a2)
    /* C1B4 8001B9B4 FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
    /* C1B8 8001B9B8 1800A2A3 */  sb         $v0, 0x18($sp)
    /* C1BC 8001B9BC 0B00C290 */  lbu        $v0, 0xB($a2)
    /* C1C0 8001B9C0 00000000 */  nop
    /* C1C4 8001B9C4 1F004230 */  andi       $v0, $v0, 0x1F
    /* C1C8 8001B9C8 1900A2A3 */  sb         $v0, 0x19($sp)
    /* C1CC 8001B9CC 0400C38C */  lw         $v1, 0x4($a2)
    /* C1D0 8001B9D0 0800C48C */  lw         $a0, 0x8($a2)
    /* C1D4 8001B9D4 40100300 */  sll        $v0, $v1, 1
    /* C1D8 8001B9D8 21104300 */  addu       $v0, $v0, $v1
    /* C1DC 8001B9DC 80100200 */  sll        $v0, $v0, 2
    /* C1E0 8001B9E0 24208700 */  and        $a0, $a0, $a3
    /* C1E4 8001B9E4 0880013C */  lui        $at, %hi(D_80082CD0)
    /* C1E8 8001B9E8 21082200 */  addu       $at, $at, $v0
    /* C1EC 8001B9EC D02C228C */  lw         $v0, %lo(D_80082CD0)($at)
    /* C1F0 8001B9F0 0400C38C */  lw         $v1, 0x4($a2)
    /* C1F4 8001B9F4 21204400 */  addu       $a0, $v0, $a0
    /* C1F8 8001B9F8 40100300 */  sll        $v0, $v1, 1
    /* C1FC 8001B9FC 21104300 */  addu       $v0, $v0, $v1
    /* C200 8001BA00 80100200 */  sll        $v0, $v0, 2
    /* C204 8001BA04 0C00C38C */  lw         $v1, 0xC($a2)
    /* C208 8001BA08 0880013C */  lui        $at, %hi(D_80082CD0)
    /* C20C 8001BA0C 21082200 */  addu       $at, $at, $v0
    /* C210 8001BA10 D02C228C */  lw         $v0, %lo(D_80082CD0)($at)
    /* C214 8001BA14 24186700 */  and        $v1, $v1, $a3
    /* C218 8001BA18 21104300 */  addu       $v0, $v0, $v1
    /* C21C 8001BA1C 0A80013C */  lui        $at, %hi(D_800989B0)
    /* C220 8001BA20 B08922AC */  sw         $v0, %lo(D_800989B0)($at)
    /* C224 8001BA24 A2DF010C */  jal        CdIntToPos
    /* C228 8001BA28 1000A527 */   addiu     $a1, $sp, 0x10
    /* C22C 8001BA2C 0D000424 */  addiu      $a0, $zero, 0xD
    /* C230 8001BA30 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* C234 8001BA34 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* C238 8001BA38 AF74000C */  jal        func_8001D2BC
    /* C23C 8001BA3C 1800A527 */   addiu     $a1, $sp, 0x18
    /* C240 8001BA40 02000424 */  addiu      $a0, $zero, 0x2
    /* C244 8001BA44 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* C248 8001BA48 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* C24C 8001BA4C AF74000C */  jal        func_8001D2BC
    /* C250 8001BA50 1000A527 */   addiu     $a1, $sp, 0x10
    /* C254 8001BA54 1B000424 */  addiu      $a0, $zero, 0x1B
    /* C258 8001BA58 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* C25C 8001BA5C 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* C260 8001BA60 AF74000C */  jal        func_8001D2BC
    /* C264 8001BA64 21280000 */   addu      $a1, $zero, $zero
    /* C268 8001BA68 0A80023C */  lui        $v0, %hi(D_80098A98)
    /* C26C 8001BA6C 988A4290 */  lbu        $v0, %lo(D_80098A98)($v0)
    /* C270 8001BA70 0A80013C */  lui        $at, %hi(D_80098828)
    /* C274 8001BA74 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* C278 8001BA78 0A80013C */  lui        $at, %hi(D_80098AB8)
    /* C27C 8001BA7C B88A22A0 */  sb         $v0, %lo(D_80098AB8)($at)
  .L8001BA80:
    /* C280 8001BA80 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* C284 8001BA84 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* C288 8001BA88 00000000 */  nop
    /* C28C 8001BA8C 01004224 */  addiu      $v0, $v0, 0x1
    /* C290 8001BA90 0A80013C */  lui        $at, %hi(D_800989C4)
    /* C294 8001BA94 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001BA98:
    /* C298 8001BA98 0A80023C */  lui        $v0, %hi(D_80098AB8)
    /* C29C 8001BA9C B88A4290 */  lbu        $v0, %lo(D_80098AB8)($v0)
    /* C2A0 8001BAA0 00000000 */  nop
    /* C2A4 8001BAA4 20004230 */  andi       $v0, $v0, 0x20
    /* C2A8 8001BAA8 12004014 */  bnez       $v0, .L8001BAF4
    /* C2AC 8001BAAC 21800000 */   addu      $s0, $zero, $zero
    /* C2B0 8001BAB0 0A80023C */  lui        $v0, %hi(D_80098828)
    /* C2B4 8001BAB4 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* C2B8 8001BAB8 00000000 */  nop
    /* C2BC 8001BABC 01004224 */  addiu      $v0, $v0, 0x1
    /* C2C0 8001BAC0 0A80013C */  lui        $at, %hi(D_80098828)
    /* C2C4 8001BAC4 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* C2C8 8001BAC8 9600422C */  sltiu      $v0, $v0, 0x96
    /* C2CC 8001BACC 1A004014 */  bnez       $v0, .L8001BB38
    /* C2D0 8001BAD0 00000000 */   nop
    /* C2D4 8001BAD4 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* C2D8 8001BAD8 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* C2DC 8001BADC 00000000 */  nop
    /* C2E0 8001BAE0 10004234 */  ori        $v0, $v0, 0x10
    /* C2E4 8001BAE4 0A80013C */  lui        $at, %hi(D_8009896C)
    /* C2E8 8001BAE8 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* C2EC 8001BAEC CE6E0008 */  j          .L8001BB38
    /* C2F0 8001BAF0 00000000 */   nop
  .L8001BAF4:
    /* C2F4 8001BAF4 E574000C */  jal        func_8001D394
    /* C2F8 8001BAF8 FF000432 */   andi      $a0, $s0, 0xFF
    /* C2FC 8001BAFC 01000226 */  addiu      $v0, $s0, 0x1
    /* C300 8001BB00 21804000 */  addu       $s0, $v0, $zero
    /* C304 8001BB04 00140200 */  sll        $v0, $v0, 16
    /* C308 8001BB08 03140200 */  sra        $v0, $v0, 16
    /* C30C 8001BB0C 7F004228 */  slti       $v0, $v0, 0x7F
    /* C310 8001BB10 F8FF4014 */  bnez       $v0, .L8001BAF4
    /* C314 8001BB14 00000000 */   nop
    /* C318 8001BB18 0B80033C */  lui        $v1, %hi(D_800AD142)
    /* C31C 8001BB1C 42D16324 */  addiu      $v1, $v1, %lo(D_800AD142)
    /* C320 8001BB20 00006294 */  lhu        $v0, 0x0($v1)
    /* C324 8001BB24 0A80013C */  lui        $at, %hi(D_80098B42)
    /* C328 8001BB28 428B20A0 */  sb         $zero, %lo(D_80098B42)($at)
    /* C32C 8001BB2C FF7F4230 */  andi       $v0, $v0, 0x7FFF
    /* C330 8001BB30 AB72000C */  jal        func_8001CAAC
    /* C334 8001BB34 000062A4 */   sh        $v0, 0x0($v1)
  .L8001BB38:
    /* C338 8001BB38 2400BF8F */  lw         $ra, 0x24($sp)
    /* C33C 8001BB3C 2000B08F */  lw         $s0, 0x20($sp)
    /* C340 8001BB40 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C344 8001BB44 0800E003 */  jr         $ra
    /* C348 8001BB48 00000000 */   nop
.size func_8001B89C, . - func_8001B89C
