.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BD80
    /* 4C580 8005BD80 21082300 */  addu       $at, $at, $v1
    /* 4C584 8005BD84 6E7F2290 */  lbu        $v0, 0x7F6E($at)
    /* 4C588 8005BD88 801F0B3C */  lui        $t3, (0x1F800070 >> 16)
    /* 4C58C 8005BD8C 0600A2A0 */  sb         $v0, 0x6($a1)
    /* 4C590 8005BD90 9C00828C */  lw         $v0, 0x9C($a0)
    /* 4C594 8005BD94 70006B35 */  ori        $t3, $t3, (0x1F800070 & 0xFFFF)
    /* 4C598 8005BD98 030046A0 */  sb         $a2, 0x3($v0)
    /* 4C59C 8005BD9C 9C00828C */  lw         $v0, 0x9C($a0)
    /* 4C5A0 8005BDA0 08000D24 */  addiu      $t5, $zero, 0x8
    /* 4C5A4 8005BDA4 070047A0 */  sb         $a3, 0x7($v0)
    /* 4C5A8 8005BDA8 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5AC 8005BDAC 38000C24 */  addiu      $t4, $zero, 0x38
    /* 4C5B0 8005BDB0 0700A290 */  lbu        $v0, 0x7($a1)
    /* 4C5B4 8005BDB4 0980083C */  lui        $t0, %hi(D_80097F7B)
    /* 4C5B8 8005BDB8 7B7F0825 */  addiu      $t0, $t0, %lo(D_80097F7B)
    /* 4C5BC 8005BDBC 02004234 */  ori        $v0, $v0, 0x2
    /* 4C5C0 8005BDC0 0700A2A0 */  sb         $v0, 0x7($a1)
    /* 4C5C4 8005BDC4 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5C8 8005BDC8 0980013C */  lui        $at, %hi(D_80097F6F)
    /* 4C5CC 8005BDCC 21082300 */  addu       $at, $at, $v1
    /* 4C5D0 8005BDD0 6F7F2290 */  lbu        $v0, %lo(D_80097F6F)($at)
    /* 4C5D4 8005BDD4 0980093C */  lui        $t1, %hi(D_80097F7A)
    /* 4C5D8 8005BDD8 7A7F2925 */  addiu      $t1, $t1, %lo(D_80097F7A)
    /* 4C5DC 8005BDDC 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 4C5E0 8005BDE0 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5E4 8005BDE4 0980013C */  lui        $at, %hi(D_80097F70)
    /* 4C5E8 8005BDE8 21082300 */  addu       $at, $at, $v1
    /* 4C5EC 8005BDEC 707F2290 */  lbu        $v0, %lo(D_80097F70)($at)
    /* 4C5F0 8005BDF0 FDFF0625 */  addiu      $a2, $t0, -0x3
    /* 4C5F4 8005BDF4 0500A2A0 */  sb         $v0, 0x5($a1)
    /* 4C5F8 8005BDF8 9C00858C */  lw         $a1, 0x9C($a0)
    /* 4C5FC 8005BDFC 0980013C */  lui        $at, (0x80090000 >> 16)
.size func_8005BD80, . - func_8005BD80
