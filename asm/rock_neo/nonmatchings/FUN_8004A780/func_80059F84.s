.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059F84
    /* 4A784 80059F84 09004010 */  beqz       $v0, .L80059FAC
    /* 4A788 80059F88 82000424 */   addiu     $a0, $zero, 0x82
    /* 4A78C 80059F8C 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A790 80059F90 0268000C */  jal        Sound_call
    /* 4A794 80059F94 21300000 */   addu      $a2, $zero, $zero
    /* 4A798 80059F98 FFFE033C */  lui        $v1, (0xFEFFFFFF >> 16)
    /* 4A79C 80059F9C FFFF6334 */  ori        $v1, $v1, (0xFEFFFFFF & 0xFFFF)
    /* 4A7A0 80059FA0 0000028E */  lw         $v0, 0x0($s0)
    /* 4A7A4 80059FA4 F8670108 */  j          .L80059FE0
    /* 4A7A8 80059FA8 01001224 */   addiu     $s2, $zero, 0x1
  .L80059FAC:
    /* 4A7AC 80059FAC 1A680108 */  j          .L8005A068
    /* 4A7B0 80059FB0 C6010424 */   addiu     $a0, $zero, 0x1C6
  .L80059FB4:
    /* 4A7B4 80059FB4 0D004010 */  beqz       $v0, .L80059FEC
    /* 4A7B8 80059FB8 20008230 */   andi      $v0, $a0, 0x20
    /* 4A7BC 80059FBC 83000424 */  addiu      $a0, $zero, 0x83
    /* 4A7C0 80059FC0 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A7C4 80059FC4 0268000C */  jal        Sound_call
    /* 4A7C8 80059FC8 21300000 */   addu      $a2, $zero, $zero
    /* 4A7CC 80059FCC FFFE033C */  lui        $v1, (0xFEFFFFFF >> 16)
    /* 4A7D0 80059FD0 FFFF6334 */  ori        $v1, $v1, (0xFEFFFFFF & 0xFFFF)
    /* 4A7D4 80059FD4 0000028E */  lw         $v0, 0x0($s0)
    /* 4A7D8 80059FD8 01001224 */  addiu      $s2, $zero, 0x1
    /* 4A7DC 80059FDC 7C0F80AF */  sw         $zero, %gp_rel(D_800987E0)($gp)
  .L80059FE0:
    /* 4A7E0 80059FE0 24104300 */  and        $v0, $v0, $v1
    /* 4A7E4 80059FE4 81680108 */  j          .L8005A204
    /* 4A7E8 80059FE8 000002AE */   sw        $v0, 0x0($s0)
  .L80059FEC:
    /* 4A7EC 80059FEC 26004010 */  beqz       $v0, .L8005A088
    /* 4A7F0 80059FF0 0100A224 */   addiu     $v0, $a1, 0x1
    /* 4A7F4 80059FF4 710002A2 */  sb         $v0, 0x71($s0)
    /* 4A7F8 80059FF8 00160200 */  sll        $v0, $v0, 24
    /* 4A7FC 80059FFC 72000682 */  lb         $a2, 0x72($s0)
.size func_80059F84, . - func_80059F84
