.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C07C
    /* 2C87C 8003C07C 0B80023C */  lui        $v0, %hi(Player_work)
    /* 2C880 8003C080 B0514280 */  lb         $v0, %lo(Player_work)($v0)
    /* 2C884 8003C084 0B80033C */  lui        $v1, %hi(Player_work + 0x6)
    /* 2C888 8003C088 B6516390 */  lbu        $v1, %lo(Player_work + 0x6)($v1)
    /* 2C88C 8003C08C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C890 8003C090 24104300 */  and        $v0, $v0, $v1
    /* 2C894 8003C094 01004230 */  andi       $v0, $v0, 0x1
    /* 2C898 8003C098 62004010 */  beqz       $v0, .L8003C224
    /* 2C89C 8003C09C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2C8A0 8003C0A0 0B80063C */  lui        $a2, %hi(Player_work + 0xBD)
    /* 2C8A4 8003C0A4 6D52C690 */  lbu        $a2, %lo(Player_work + 0xBD)($a2)
    /* 2C8A8 8003C0A8 00000000 */  nop
    /* 2C8AC 8003C0AC 4000C230 */  andi       $v0, $a2, 0x40
    /* 2C8B0 8003C0B0 28004014 */  bnez       $v0, .L8003C154
    /* 2C8B4 8003C0B4 1000C230 */   andi      $v0, $a2, 0x10
    /* 2C8B8 8003C0B8 2000C230 */  andi       $v0, $a2, 0x20
    /* 2C8BC 8003C0BC 13004014 */  bnez       $v0, .L8003C10C
    /* 2C8C0 8003C0C0 00000000 */   nop
    /* 2C8C4 8003C0C4 0C80023C */  lui        $v0, %hi(D_800C0C26)
    /* 2C8C8 8003C0C8 260C4294 */  lhu        $v0, %lo(D_800C0C26)($v0)
    /* 2C8CC 8003C0CC 0C80033C */  lui        $v1, %hi(D_800C0C2A)
    /* 2C8D0 8003C0D0 2A0C6394 */  lhu        $v1, %lo(D_800C0C2A)($v1)
    /* 2C8D4 8003C0D4 0C80043C */  lui        $a0, %hi(D_800C0C2C)
    /* 2C8D8 8003C0D8 2C0C8494 */  lhu        $a0, %lo(D_800C0C2C)($a0)
    /* 2C8DC 8003C0DC 0C80053C */  lui        $a1, %hi(D_800C0C2E)
    /* 2C8E0 8003C0E0 2E0CA594 */  lhu        $a1, %lo(D_800C0C2E)($a1)
    /* 2C8E4 8003C0E4 0B80013C */  lui        $at, %hi(Player_work + 0x11C)
    /* 2C8E8 8003C0E8 CC5222A4 */  sh         $v0, %lo(Player_work + 0x11C)($at)
    /* 2C8EC 8003C0EC 0B80013C */  lui        $at, %hi(Player_work + 0x11E)
    /* 2C8F0 8003C0F0 CE5223A4 */  sh         $v1, %lo(Player_work + 0x11E)($at)
    /* 2C8F4 8003C0F4 0B80013C */  lui        $at, %hi(Player_work + 0x120)
    /* 2C8F8 8003C0F8 D05224A4 */  sh         $a0, %lo(Player_work + 0x120)($at)
    /* 2C8FC 8003C0FC 0B80013C */  lui        $at, %hi(Player_work + 0x122)
    /* 2C900 8003C100 D25225A4 */  sh         $a1, %lo(Player_work + 0x122)($at)
    /* 2C904 8003C104 85F00008 */  j          .L8003C214
    /* 2C908 8003C108 00000000 */   nop
  .L8003C10C:
    /* 2C90C 8003C10C 0C80023C */  lui        $v0, %hi(D_800C0F96)
    /* 2C910 8003C110 960F4294 */  lhu        $v0, %lo(D_800C0F96)($v0)
    /* 2C914 8003C114 0C80033C */  lui        $v1, %hi(D_800C0F9A)
    /* 2C918 8003C118 9A0F6394 */  lhu        $v1, %lo(D_800C0F9A)($v1)
    /* 2C91C 8003C11C 0C80043C */  lui        $a0, %hi(D_800C0F9C)
    /* 2C920 8003C120 9C0F8494 */  lhu        $a0, %lo(D_800C0F9C)($a0)
    /* 2C924 8003C124 0C80053C */  lui        $a1, %hi(D_800C0F9E)
    /* 2C928 8003C128 9E0FA594 */  lhu        $a1, %lo(D_800C0F9E)($a1)
    /* 2C92C 8003C12C 0B80013C */  lui        $at, %hi(Player_work + 0x11C)
    /* 2C930 8003C130 CC5222A4 */  sh         $v0, %lo(Player_work + 0x11C)($at)
    /* 2C934 8003C134 0B80013C */  lui        $at, %hi(Player_work + 0x11E)
    /* 2C938 8003C138 CE5223A4 */  sh         $v1, %lo(Player_work + 0x11E)($at)
    /* 2C93C 8003C13C 0B80013C */  lui        $at, %hi(Player_work + 0x120)
    /* 2C940 8003C140 D05224A4 */  sh         $a0, %lo(Player_work + 0x120)($at)
    /* 2C944 8003C144 0B80013C */  lui        $at, %hi(Player_work + 0x122)
    /* 2C948 8003C148 D25225A4 */  sh         $a1, %lo(Player_work + 0x122)($at)
    /* 2C94C 8003C14C 59F00008 */  j          .L8003C164
    /* 2C950 8003C150 1000C230 */   andi      $v0, $a2, 0x10
  .L8003C154:
    /* 2C954 8003C154 0B80013C */  lui        $at, %hi(Player_work + 0x11C)
    /* 2C958 8003C158 CC5220AC */  sw         $zero, %lo(Player_work + 0x11C)($at)
    /* 2C95C 8003C15C 0B80013C */  lui        $at, %hi(Player_work + 0x120)
    /* 2C960 8003C160 D05220AC */  sw         $zero, %lo(Player_work + 0x120)($at)
  .L8003C164:
    /* 2C964 8003C164 2B004010 */  beqz       $v0, .L8003C214
    /* 2C968 8003C168 00000000 */   nop
    /* 2C96C 8003C16C 0B80053C */  lui        $a1, %hi(Player_work + 0x438)
    /* 2C970 8003C170 E855A524 */  addiu      $a1, $a1, %lo(Player_work + 0x438)
    /* 2C974 8003C174 0B80043C */  lui        $a0, %hi(Player_work + 0x14)
    /* 2C978 8003C178 C4518424 */  addiu      $a0, $a0, %lo(Player_work + 0x14)
    /* 2C97C 8003C17C 0300A288 */  lwl        $v0, 0x3($a1)
    /* 2C980 8003C180 0000A298 */  lwr        $v0, 0x0($a1)
    /* 2C984 8003C184 0700A388 */  lwl        $v1, 0x7($a1)
    /* 2C988 8003C188 0400A398 */  lwr        $v1, 0x4($a1)
    /* 2C98C 8003C18C 030082A8 */  swl        $v0, 0x3($a0)
    /* 2C990 8003C190 000082B8 */  swr        $v0, 0x0($a0)
    /* 2C994 8003C194 070083A8 */  swl        $v1, 0x7($a0)
    /* 2C998 8003C198 040083B8 */  swr        $v1, 0x4($a0)
    /* 2C99C 8003C19C 0B80053C */  lui        $a1, %hi(Player_work + 0x428)
    /* 2C9A0 8003C1A0 D855A524 */  addiu      $a1, $a1, %lo(Player_work + 0x428)
    /* 2C9A4 8003C1A4 0B80043C */  lui        $a0, %hi(Player_work + 0x1C)
    /* 2C9A8 8003C1A8 CC518424 */  addiu      $a0, $a0, %lo(Player_work + 0x1C)
    /* 2C9AC 8003C1AC 0000A28C */  lw         $v0, 0x0($a1)
    /* 2C9B0 8003C1B0 0400A38C */  lw         $v1, 0x4($a1)
    /* 2C9B4 8003C1B4 000082AC */  sw         $v0, 0x0($a0)
    /* 2C9B8 8003C1B8 040083AC */  sw         $v1, 0x4($a0)
    /* 2C9BC 8003C1BC 0800A28C */  lw         $v0, 0x8($a1)
    /* 2C9C0 8003C1C0 0C00A38C */  lw         $v1, 0xC($a1)
    /* 2C9C4 8003C1C4 080082AC */  sw         $v0, 0x8($a0)
    /* 2C9C8 8003C1C8 0C0083AC */  sw         $v1, 0xC($a0)
    /* 2C9CC 8003C1CC 0B80053C */  lui        $a1, %hi(Player_work + 0x440)
    /* 2C9D0 8003C1D0 F055A524 */  addiu      $a1, $a1, %lo(Player_work + 0x440)
    /* 2C9D4 8003C1D4 0B80043C */  lui        $a0, %hi(Player_work + 0x54)
    /* 2C9D8 8003C1D8 04528424 */  addiu      $a0, $a0, %lo(Player_work + 0x54)
    /* 2C9DC 8003C1DC 0300A288 */  lwl        $v0, 0x3($a1)
    /* 2C9E0 8003C1E0 0000A298 */  lwr        $v0, 0x0($a1)
    /* 2C9E4 8003C1E4 0700A388 */  lwl        $v1, 0x7($a1)
    /* 2C9E8 8003C1E8 0400A398 */  lwr        $v1, 0x4($a1)
    /* 2C9EC 8003C1EC 030082A8 */  swl        $v0, 0x3($a0)
    /* 2C9F0 8003C1F0 000082B8 */  swr        $v0, 0x0($a0)
    /* 2C9F4 8003C1F4 070083A8 */  swl        $v1, 0x7($a0)
    /* 2C9F8 8003C1F8 040083B8 */  swr        $v1, 0x4($a0)
    /* 2C9FC 8003C1FC 0B80023C */  lui        $v0, %hi(Player_work + 0xBD)
    /* 2CA00 8003C200 6D524290 */  lbu        $v0, %lo(Player_work + 0xBD)($v0)
    /* 2CA04 8003C204 00000000 */  nop
    /* 2CA08 8003C208 EF004230 */  andi       $v0, $v0, 0xEF
    /* 2CA0C 8003C20C 0B80013C */  lui        $at, %hi(Player_work + 0xBD)
    /* 2CA10 8003C210 6D5222A0 */  sb         $v0, %lo(Player_work + 0xBD)($at)
  .L8003C214:
    /* 2CA14 8003C214 0B80043C */  lui        $a0, %hi(Player_work)
    /* 2CA18 8003C218 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 2CA1C 8003C21C 06F1000C */  jal        func_8003C418
    /* 2CA20 8003C220 00000000 */   nop
  .L8003C224:
    /* 2CA24 8003C224 0B80023C */  lui        $v0, %hi(Player_work2)
    /* 2CA28 8003C228 A4574280 */  lb         $v0, %lo(Player_work2)($v0)
    /* 2CA2C 8003C22C 0B80033C */  lui        $v1, %hi(Player_work2 + 0x6)
    /* 2CA30 8003C230 AA576390 */  lbu        $v1, %lo(Player_work2 + 0x6)($v1)
    /* 2CA34 8003C234 00000000 */  nop
    /* 2CA38 8003C238 24104300 */  and        $v0, $v0, $v1
    /* 2CA3C 8003C23C 01004230 */  andi       $v0, $v0, 0x1
    /* 2CA40 8003C240 21004010 */  beqz       $v0, .L8003C2C8
    /* 2CA44 8003C244 00000000 */   nop
    /* 2CA48 8003C248 0B80023C */  lui        $v0, %hi(Player_work2 + 0xBD)
    /* 2CA4C 8003C24C 61584290 */  lbu        $v0, %lo(Player_work2 + 0xBD)($v0)
    /* 2CA50 8003C250 00000000 */  nop
    /* 2CA54 8003C254 40004230 */  andi       $v0, $v0, 0x40
    /* 2CA58 8003C258 13004014 */  bnez       $v0, .L8003C2A8
    /* 2CA5C 8003C25C 00000000 */   nop
    /* 2CA60 8003C260 0C80023C */  lui        $v0, %hi(D_800C0FE6)
    /* 2CA64 8003C264 E60F4294 */  lhu        $v0, %lo(D_800C0FE6)($v0)
    /* 2CA68 8003C268 0C80033C */  lui        $v1, %hi(D_800C0FEA)
    /* 2CA6C 8003C26C EA0F6394 */  lhu        $v1, %lo(D_800C0FEA)($v1)
    /* 2CA70 8003C270 0C80043C */  lui        $a0, %hi(D_800C0FEC)
    /* 2CA74 8003C274 EC0F8494 */  lhu        $a0, %lo(D_800C0FEC)($a0)
    /* 2CA78 8003C278 0C80053C */  lui        $a1, %hi(D_800C0FEE)
    /* 2CA7C 8003C27C EE0FA594 */  lhu        $a1, %lo(D_800C0FEE)($a1)
    /* 2CA80 8003C280 0B80013C */  lui        $at, %hi(Player_work2 + 0x11C)
    /* 2CA84 8003C284 C05822A4 */  sh         $v0, %lo(Player_work2 + 0x11C)($at)
    /* 2CA88 8003C288 0B80013C */  lui        $at, %hi(Player_work2 + 0x11E)
    /* 2CA8C 8003C28C C25823A4 */  sh         $v1, %lo(Player_work2 + 0x11E)($at)
    /* 2CA90 8003C290 0B80013C */  lui        $at, %hi(Player_work2 + 0x120)
    /* 2CA94 8003C294 C45824A4 */  sh         $a0, %lo(Player_work2 + 0x120)($at)
    /* 2CA98 8003C298 0B80013C */  lui        $at, %hi(Player_work2 + 0x122)
    /* 2CA9C 8003C29C C65825A4 */  sh         $a1, %lo(Player_work2 + 0x122)($at)
    /* 2CAA0 8003C2A0 AEF00008 */  j          .L8003C2B8
    /* 2CAA4 8003C2A4 00000000 */   nop
  .L8003C2A8:
    /* 2CAA8 8003C2A8 0B80013C */  lui        $at, %hi(Player_work2 + 0x11C)
    /* 2CAAC 8003C2AC C05820AC */  sw         $zero, %lo(Player_work2 + 0x11C)($at)
    /* 2CAB0 8003C2B0 0B80013C */  lui        $at, %hi(Player_work2 + 0x120)
    /* 2CAB4 8003C2B4 C45820AC */  sw         $zero, %lo(Player_work2 + 0x120)($at)
  .L8003C2B8:
    /* 2CAB8 8003C2B8 0B80043C */  lui        $a0, %hi(Player_work2)
    /* 2CABC 8003C2BC A4578424 */  addiu      $a0, $a0, %lo(Player_work2)
    /* 2CAC0 8003C2C0 06F1000C */  jal        func_8003C418
    /* 2CAC4 8003C2C4 00000000 */   nop
  .L8003C2C8:
    /* 2CAC8 8003C2C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2CACC 8003C2CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CAD0 8003C2D0 0800E003 */  jr         $ra
    /* 2CAD4 8003C2D4 00000000 */   nop
.size func_8003C07C, . - func_8003C07C
