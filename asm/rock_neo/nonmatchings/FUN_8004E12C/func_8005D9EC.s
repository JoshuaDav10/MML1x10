.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D9EC
    /* 4E1EC 8005D9EC 0B80023C */  lui        $v0, %hi(Player_work + 0xB0)
    /* 4E1F0 8005D9F0 60524294 */  lhu        $v0, %lo(Player_work + 0xB0)($v0)
    /* 4E1F4 8005D9F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E1F8 8005D9F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E1FC 8005D9FC 0B80013C */  lui        $at, %hi(Player_work + 0x6E)
    /* 4E200 8005DA00 1E5222A4 */  sh         $v0, %lo(Player_work + 0x6E)($at)
    /* 4E204 8005DA04 7176010C */  jal        func_8005D9C4
    /* 4E208 8005DA08 00000000 */   nop
    /* 4E20C 8005DA0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E210 8005DA10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E214 8005DA14 0800E003 */  jr         $ra
    /* 4E218 8005DA18 00000000 */   nop
.size func_8005D9EC, . - func_8005D9EC
