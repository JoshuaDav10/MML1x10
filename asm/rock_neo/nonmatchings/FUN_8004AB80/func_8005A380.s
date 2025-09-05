.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A380
    /* 4AB80 8005A380 21208200 */  addu       $a0, $a0, $v0
    /* 4AB84 8005A384 7C0F84AF */  sw         $a0, %gp_rel(D_800987E0)($gp)
    /* 4AB88 8005A388 72000282 */  lb         $v0, 0x72($s0)
    /* 4AB8C 8005A38C FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4AB90 8005A390 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4AB94 8005A394 2A186200 */  slt        $v1, $v1, $v0
    /* 4AB98 8005A398 EAFF6014 */  bnez       $v1, .L8005A344
    /* 4AB9C 8005A39C 00000000 */   nop
  .L8005A3A0:
    /* 4ABA0 8005A3A0 9012848F */  lw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 4ABA4 8005A3A4 9F0C010C */  jal        func_8004327C
    /* 4ABA8 8005A3A8 23200400 */   negu      $a0, $a0
    /* 4ABAC 8005A3AC 05004010 */  beqz       $v0, .L8005A3C4
    /* 4ABB0 8005A3B0 00000000 */   nop
    /* 4ABB4 8005A3B4 0C80113C */  lui        $s1, %hi(Game_work + 0x1C)
    /* 4ABB8 8005A3B8 2C1B318E */  lw         $s1, %lo(Game_work + 0x1C)($s1)
    /* 4ABBC 8005A3BC F2680108 */  j          .L8005A3C8
    /* 4ABC0 8005A3C0 00000000 */   nop
  .L8005A3C4:
    /* 4ABC4 8005A3C4 9012918F */  lw         $s1, %gp_rel(D_80098AF4)($gp)
  .L8005A3C8:
    /* 4ABC8 8005A3C8 7C0F828F */  lw         $v0, %gp_rel(D_800987E0)($gp)
    /* 4ABCC 8005A3CC 00000000 */  nop
    /* 4ABD0 8005A3D0 2B102202 */  sltu       $v0, $s1, $v0
    /* 4ABD4 8005A3D4 64004010 */  beqz       $v0, .L8005A568
    /* 4ABD8 8005A3D8 02000424 */   addiu     $a0, $zero, 0x2
    /* 4ABDC 8005A3DC 0C80063C */  lui        $a2, %hi(D_800BE2F8)
    /* 4ABE0 8005A3E0 F8E2C624 */  addiu      $a2, $a2, %lo(D_800BE2F8)
    /* 4ABE4 8005A3E4 C46F010C */  jal        func_8005BF10
    /* 4ABE8 8005A3E8 21282002 */   addu      $a1, $s1, $zero
    /* 4ABEC 8005A3EC 72000282 */  lb         $v0, 0x72($s0)
    /* 4ABF0 8005A3F0 72000692 */  lbu        $a2, 0x72($s0)
    /* 4ABF4 8005A3F4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4ABF8 8005A3F8 15004018 */  blez       $v0, .L8005A450
    /* 4ABFC 8005A3FC 21280000 */   addu      $a1, $zero, $zero
.size func_8005A380, . - func_8005A380
