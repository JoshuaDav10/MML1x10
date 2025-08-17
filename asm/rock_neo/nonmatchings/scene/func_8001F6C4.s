.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F6C4
    /* FEC4 8001F6C4 0C80023C */  lui        $v0, %hi(D_800C356E)
    /* FEC8 8001F6C8 6E354290 */  lbu        $v0, %lo(D_800C356E)($v0)
    /* FECC 8001F6CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* FED0 8001F6D0 1000BFAF */  sw         $ra, 0x10($sp)
    /* FED4 8001F6D4 80100200 */  sll        $v0, $v0, 2
    /* FED8 8001F6D8 0980013C */  lui        $at, %hi(D_800893BC)
    /* FEDC 8001F6DC 21082200 */  addu       $at, $at, $v0
    /* FEE0 8001F6E0 BC93258C */  lw         $a1, %lo(D_800893BC)($at)
    /* FEE4 8001F6E4 0C80023C */  lui        $v0, %hi(Game_work + 0x68)
    /* FEE8 8001F6E8 781B4284 */  lh         $v0, %lo(Game_work + 0x68)($v0)
    /* FEEC 8001F6EC 0000A484 */  lh         $a0, 0x0($a1)
    /* FEF0 8001F6F0 0C80033C */  lui        $v1, %hi(D_800C356F)
    /* FEF4 8001F6F4 6F356390 */  lbu        $v1, %lo(D_800C356F)($v1)
    /* FEF8 8001F6F8 0B004414 */  bne        $v0, $a0, .L8001F728
    /* FEFC 8001F6FC 40100300 */   sll       $v0, $v1, 1
    /* FF00 8001F700 21104500 */  addu       $v0, $v0, $a1
    /* FF04 8001F704 02004484 */  lh         $a0, 0x2($v0)
    /* FF08 8001F708 00000000 */  nop
    /* FF0C 8001F70C 08008004 */  bltz       $a0, .L8001F730
    /* FF10 8001F710 00000000 */   nop
    /* FF14 8001F714 0C80023C */  lui        $v0, %hi(Game_work + 0x6A)
    /* FF18 8001F718 7A1B4284 */  lh         $v0, %lo(Game_work + 0x6A)($v0)
    /* FF1C 8001F71C 00000000 */  nop
    /* FF20 8001F720 03004410 */  beq        $v0, $a0, .L8001F730
    /* FF24 8001F724 00000000 */   nop
  .L8001F728:
    /* FF28 8001F728 EB75000C */  jal        func_8001D7AC
    /* FF2C 8001F72C 00000000 */   nop
  .L8001F730:
    /* FF30 8001F730 1000BF8F */  lw         $ra, 0x10($sp)
    /* FF34 8001F734 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FF38 8001F738 0800E003 */  jr         $ra
    /* FF3C 8001F73C 00000000 */   nop
.size func_8001F6C4, . - func_8001F6C4
