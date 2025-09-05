.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FA0C
    /* 5020C 8005FA0C 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 50210 8005FA10 B47E0108 */  j          .L8005FAD0
    /* 50214 8005FA14 00000000 */   nop
  .L8005FA18:
    /* 50218 8005FA18 04000292 */  lbu        $v0, 0x4($s0)
    /* 5021C 8005FA1C 0980013C */  lui        $at, %hi(D_8008DAF4)
    /* 50220 8005FA20 21082200 */  addu       $at, $at, $v0
    /* 50224 8005FA24 F4DA2490 */  lbu        $a0, %lo(D_8008DAF4)($at)
    /* 50228 8005FA28 9676000C */  jal        Sce_flag_test
    /* 5022C 8005FA2C 20058424 */   addiu     $a0, $a0, 0x520
    /* 50230 8005FA30 17004010 */  beqz       $v0, .L8005FA90
    /* 50234 8005FA34 01000524 */   addiu     $a1, $zero, 0x1
    /* 50238 8005FA38 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* 5023C 8005FA3C 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* 50240 8005FA40 00000000 */  nop
    /* 50244 8005FA44 02004230 */  andi       $v0, $v0, 0x2
    /* 50248 8005FA48 05004010 */  beqz       $v0, .L8005FA60
    /* 5024C 8005FA4C 21200000 */   addu      $a0, $zero, $zero
    /* 50250 8005FA50 1F80053C */  lui        $a1, (0x801F0000 >> 16)
.size func_8005FA0C, . - func_8005FA0C
