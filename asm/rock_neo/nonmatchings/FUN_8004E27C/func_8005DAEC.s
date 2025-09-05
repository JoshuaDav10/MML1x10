.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DAEC
    /* 4E2EC 8005DAEC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4E2F0 8005DAF0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4E2F4 8005DAF4 21888000 */  addu       $s1, $a0, $zero
    /* 4E2F8 8005DAF8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4E2FC 8005DAFC 0B80103C */  lui        $s0, %hi(Player_work)
    /* 4E300 8005DB00 B0511026 */  addiu      $s0, $s0, %lo(Player_work)
    /* 4E304 8005DB04 0B80053C */  lui        $a1, %hi(Player_work + 0x172)
    /* 4E308 8005DB08 2253A580 */  lb         $a1, %lo(Player_work + 0x172)($a1)
    /* 4E30C 8005DB0C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4E310 8005DB10 81DD000C */  jal        func_80037604
    /* 4E314 8005DB14 21200002 */   addu      $a0, $s0, $zero
    /* 4E318 8005DB18 21284000 */  addu       $a1, $v0, $zero
    /* 4E31C 8005DB1C FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 4E320 8005DB20 1E00A210 */  beq        $a1, $v0, .L8005DB9C
    /* 4E324 8005DB24 01000224 */   addiu     $v0, $zero, 0x1
    /* 4E328 8005DB28 13002012 */  beqz       $s1, .L8005DB78
    /* 4E32C 8005DB2C 00000000 */   nop
    /* 4E330 8005DB30 0B80023C */  lui        $v0, %hi(Player_work + 0x172)
    /* 4E334 8005DB34 22534280 */  lb         $v0, %lo(Player_work + 0x172)($v0)
.size func_8005DAEC, . - func_8005DAEC
