.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800674BC
    /* 57CBC 800674BC 060000A6 */  sh         $zero, 0x6($s0)
  glabel .L800674C0
    /* 57CC0 800674C0 0C00028E */  lw         $v0, 0xC($s0)
    /* 57CC4 800674C4 00000000 */  nop
    /* 57CC8 800674C8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 57CCC 800674CC AC004014 */  bnez       $v0, .L80067780
    /* 57CD0 800674D0 0C0002AE */   sw        $v0, 0xC($s0)
    /* 57CD4 800674D4 1994010C */  jal        func_80065064
    /* 57CD8 800674D8 00000000 */   nop
    /* 57CDC 800674DC E194010C */  jal        func_80065384
    /* 57CE0 800674E0 00000000 */   nop
    /* 57CE4 800674E4 0B80113C */  lui        $s1, %hi(D_800B5DB0)
    /* 57CE8 800674E8 B05D3126 */  addiu      $s1, $s1, %lo(D_800B5DB0)
    /* 57CEC 800674EC 21302002 */  addu       $a2, $s1, $zero
    /* 57CF0 800674F0 A0118293 */  lbu        $v0, %gp_rel(D_80098A04)($gp)
    /* 57CF4 800674F4 E4118493 */  lbu        $a0, %gp_rel(D_80098A48)($gp)
    /* 57CF8 800674F8 80100200 */  sll        $v0, $v0, 2
    /* 57CFC 800674FC 0A80013C */  lui        $at, (0x800A0000 >> 16)
.size func_800674BC, . - func_800674BC
