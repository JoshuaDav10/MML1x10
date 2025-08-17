.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800629F0
    /* 531F0 800629F0 0C80033C */  lui        $v1, %hi(D_800C0C2A)
    /* 531F4 800629F4 2A0C6394 */  lhu        $v1, %lo(D_800C0C2A)($v1)
    /* 531F8 800629F8 0C80043C */  lui        $a0, %hi(D_800C0C26)
    /* 531FC 800629FC 260C8494 */  lhu        $a0, %lo(D_800C0C26)($a0)
    /* 53200 80062A00 0C80023C */  lui        $v0, %hi(Debug_work + 0x8)
    /* 53204 80062A04 184C4280 */  lb         $v0, %lo(Debug_work + 0x8)($v0)
    /* 53208 80062A08 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5320C 80062A0C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 53210 80062A10 80100200 */  sll        $v0, $v0, 2
    /* 53214 80062A14 0C80013C */  lui        $at, %hi(Debug_work + 0x4)
    /* 53218 80062A18 144C23A4 */  sh         $v1, %lo(Debug_work + 0x4)($at)
    /* 5321C 80062A1C 0C80013C */  lui        $at, %hi(Debug_work + 0x6)
    /* 53220 80062A20 164C24A4 */  sh         $a0, %lo(Debug_work + 0x6)($at)
    /* 53224 80062A24 0980013C */  lui        $at, %hi(D_8008DBD4)
    /* 53228 80062A28 21082200 */  addu       $at, $at, $v0
    /* 5322C 80062A2C D4DB228C */  lw         $v0, %lo(D_8008DBD4)($at)
    /* 53230 80062A30 0C80043C */  lui        $a0, %hi(Debug_work)
    /* 53234 80062A34 104C8424 */  addiu      $a0, $a0, %lo(Debug_work)
    /* 53238 80062A38 09F84000 */  jalr       $v0
    /* 5323C 80062A3C 00000000 */   nop
    /* 53240 80062A40 1000BF8F */  lw         $ra, 0x10($sp)
    /* 53244 80062A44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 53248 80062A48 0800E003 */  jr         $ra
    /* 5324C 80062A4C 00000000 */   nop
.size func_800629F0, . - func_800629F0
