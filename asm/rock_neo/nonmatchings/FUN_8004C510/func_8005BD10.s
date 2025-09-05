.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BD10
    /* 4C510 8005BD10 05000624 */  addiu      $a2, $zero, 0x5
    /* 4C514 8005BD14 030046A0 */  sb         $a2, 0x3($v0)
    /* 4C518 8005BD18 9800828C */  lw         $v0, 0x98($a0)
    /* 4C51C 8005BD1C 28000724 */  addiu      $a3, $zero, 0x28
    /* 4C520 8005BD20 070047A0 */  sb         $a3, 0x7($v0)
    /* 4C524 8005BD24 9800838C */  lw         $v1, 0x98($a0)
    /* 4C528 8005BD28 00000000 */  nop
    /* 4C52C 8005BD2C 07006290 */  lbu        $v0, 0x7($v1)
    /* 4C530 8005BD30 00000000 */  nop
    /* 4C534 8005BD34 02004234 */  ori        $v0, $v0, 0x2
    /* 4C538 8005BD38 070062A0 */  sb         $v0, 0x7($v1)
    /* 4C53C 8005BD3C 40180500 */  sll        $v1, $a1, 1
    /* 4C540 8005BD40 21186500 */  addu       $v1, $v1, $a1
    /* 4C544 8005BD44 40180300 */  sll        $v1, $v1, 1
    /* 4C548 8005BD48 9800858C */  lw         $a1, 0x98($a0)
    /* 4C54C 8005BD4C 0980013C */  lui        $at, %hi(D_80097F6C)
    /* 4C550 8005BD50 21082300 */  addu       $at, $at, $v1
    /* 4C554 8005BD54 6C7F2290 */  lbu        $v0, %lo(D_80097F6C)($at)
    /* 4C558 8005BD58 00000000 */  nop
    /* 4C55C 8005BD5C 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 4C560 8005BD60 9800858C */  lw         $a1, 0x98($a0)
    /* 4C564 8005BD64 0980013C */  lui        $at, %hi(D_80097F6D)
    /* 4C568 8005BD68 21082300 */  addu       $at, $at, $v1
    /* 4C56C 8005BD6C 6D7F2290 */  lbu        $v0, %lo(D_80097F6D)($at)
    /* 4C570 8005BD70 21500000 */  addu       $t2, $zero, $zero
    /* 4C574 8005BD74 0500A2A0 */  sb         $v0, 0x5($a1)
    /* 4C578 8005BD78 9800858C */  lw         $a1, 0x98($a0)
    /* 4C57C 8005BD7C 0980013C */  lui        $at, (0x80090000 >> 16)
.size func_8005BD10, . - func_8005BD10
