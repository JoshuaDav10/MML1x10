.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80067210
    /* 57A10 80067210 0980053C */  lui        $a1, %hi(D_8008CB20)
    /* 57A14 80067214 20CBA58C */  lw         $a1, %lo(D_8008CB20)($a1)
    /* 57A18 80067218 0B4E010C */  jal        MojiTaskExec
    /* 57A1C 8006721C FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 57A20 80067220 06000292 */  lbu        $v0, 0x6($s0)
    /* 57A24 80067224 1E000324 */  addiu      $v1, $zero, 0x1E
    /* 57A28 80067228 8A9D0108 */  j          .L80067628
    /* 57A2C 8006722C 100003AE */   sw        $v1, 0x10($s0)
  glabel .L80067230
    /* 57A30 80067230 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 57A34 80067234 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 57A38 80067238 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 57A3C 8006723C 24106200 */  and        $v0, $v1, $v0
    /* 57A40 80067240 6D004010 */  beqz       $v0, .L800673F8
    /* 57A44 80067244 05000224 */   addiu     $v0, $zero, 0x5
    /* 57A48 80067248 A01183A3 */  sb         $v1, %gp_rel(D_80098A04)($gp)
    /* 57A4C 8006724C FF006330 */  andi       $v1, $v1, 0xFF
    /* 57A50 80067250 09006214 */  bne        $v1, $v0, .L80067278
    /* 57A54 80067254 40100300 */   sll       $v0, $v1, 1
    /* 57A58 80067258 83000424 */  addiu      $a0, $zero, 0x83
    /* 57A5C 8006725C 01000524 */  addiu      $a1, $zero, 0x1
    /* 57A60 80067260 21300000 */  addu       $a2, $zero, $zero
    /* 57A64 80067264 050000A2 */  sb         $zero, 0x5($s0)
    /* 57A68 80067268 0268000C */  jal        Sound_call
    /* 57A6C 8006726C 060000A6 */   sh        $zero, 0x6($s0)
    /* 57A70 80067270 E19D0108 */  j          .L80067784
    /* 57A74 80067274 01000224 */   addiu     $v0, $zero, 0x1
  .L80067278:
    /* 57A78 80067278 21104300 */  addu       $v0, $v0, $v1
    /* 57A7C 8006727C C0110200 */  sll        $v0, $v0, 7
.size func_80067210, . - func_80067210
