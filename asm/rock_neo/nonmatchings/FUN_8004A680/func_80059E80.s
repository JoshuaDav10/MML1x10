.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059E80
    /* 4A680 80059E80 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 4A684 80059E84 7800B2AF */  sw         $s2, 0x78($sp)
    /* 4A688 80059E88 7400B1AF */  sw         $s1, 0x74($sp)
    /* 4A68C 80059E8C 0000028E */  lw         $v0, 0x0($s0)
    /* 4A690 80059E90 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* 4A694 80059E94 24304400 */  and        $a2, $v0, $a0
    /* 4A698 80059E98 2A00C014 */  bnez       $a2, .L80059F44
    /* 4A69C 80059E9C 21900000 */   addu      $s2, $zero, $zero
    /* 4A6A0 80059EA0 25104400 */  or         $v0, $v0, $a0
    /* 4A6A4 80059EA4 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4A6A8 80059EA8 000002AE */  sw         $v0, 0x0($s0)
    /* 4A6AC 80059EAC BC0000A6 */  sh         $zero, 0xBC($s0)
    /* 4A6B0 80059EB0 860000A6 */  sh         $zero, 0x86($s0)
    /* 4A6B4 80059EB4 01006390 */  lbu        $v1, 0x1($v1)
    /* 4A6B8 80059EB8 04000224 */  addiu      $v0, $zero, 0x4
    /* 4A6BC 80059EBC 710002A2 */  sb         $v0, 0x71($s0)
    /* 4A6C0 80059EC0 05000224 */  addiu      $v0, $zero, 0x5
    /* 4A6C4 80059EC4 040002A6 */  sh         $v0, 0x4($s0)
    /* 4A6C8 80059EC8 60000224 */  addiu      $v0, $zero, 0x60
    /* 4A6CC 80059ECC 730000A2 */  sb         $zero, 0x73($s0)
    /* 4A6D0 80059ED0 720003A2 */  sb         $v1, 0x72($s0)
    /* 4A6D4 80059ED4 840E82A3 */  sb         $v0, %gp_rel(D_800986E8)($gp)
    /* 4A6D8 80059ED8 02000224 */  addiu      $v0, $zero, 0x2
    /* 4A6DC 80059EDC 880E82A3 */  sb         $v0, %gp_rel(D_800986EC)($gp)
    /* 4A6E0 80059EE0 72000282 */  lb         $v0, 0x72($s0)
    /* 4A6E4 80059EE4 72000492 */  lbu        $a0, 0x72($s0)
    /* 4A6E8 80059EE8 2A10C200 */  slt        $v0, $a2, $v0
    /* 4A6EC 80059EEC 15004010 */  beqz       $v0, .L80059F44
    /* 4A6F0 80059EF0 21280000 */   addu      $a1, $zero, $zero
    /* 4A6F4 80059EF4 0980063C */  lui        $a2, %hi(D_8008D028)
    /* 4A6F8 80059EF8 28D0C624 */  addiu      $a2, $a2, %lo(D_8008D028)
  .L80059EFC:
    /* 4A6FC 80059EFC FFFFA330 */  andi       $v1, $a1, 0xFFFF
.size func_80059E80, . - func_80059E80
