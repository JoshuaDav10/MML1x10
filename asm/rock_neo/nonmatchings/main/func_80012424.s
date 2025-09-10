.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012424
    /* 2C24 80012424 0C80023C */  lui        $v0, %hi(D_800C0C26)
    /* 2C28 80012428 260C4294 */  lhu        $v0, %lo(D_800C0C26)($v0)
    /* 2C2C 8001242C 000F0324 */  addiu      $v1, $zero, 0xF00
    /* 2C30 80012430 000F4230 */  andi       $v0, $v0, 0xF00
    /* 2C34 80012434 0B004314 */  bne        $v0, $v1, .L80012464
    /* 2C38 80012438 00000000 */   nop
    /* 2C3C 8001243C 0C80023C */  lui        $v0, %hi(D_800C0D8E)
    /* 2C40 80012440 8E0D4294 */  lhu        $v0, %lo(D_800C0D8E)($v0)
    /* 2C44 80012444 00000000 */  nop
    /* 2C48 80012448 00204230 */  andi       $v0, $v0, 0x2000
    /* 2C4C 8001244C 05004010 */  beqz       $v0, .L80012464
    /* 2C50 80012450 00000000 */   nop
    /* 2C54 80012454 0000828F */  lw         $v0, %gp_rel(func_80097864)($gp)
    /* 2C58 80012458 00000000 */  nop
    /* 2C5C 8001245C 01004238 */  xori       $v0, $v0, 0x1
    /* 2C60 80012460 000082AF */  sw         $v0, %gp_rel(func_80097864)($gp)
  .L80012464:
    /* 2C64 80012464 0800E003 */  jr         $ra
    /* 2C68 80012468 00000000 */   nop
.size func_80012424, . - func_80012424
