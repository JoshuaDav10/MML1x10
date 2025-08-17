.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001C7F0
    /* CFF0 8001C7F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CFF4 8001C7F4 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* CFF8 8001C7F8 C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* CFFC 8001C7FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* D000 8001C800 01004224 */  addiu      $v0, $v0, 0x1
    /* D004 8001C804 0A80013C */  lui        $at, %hi(D_800989C4)
    /* D008 8001C808 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
    /* D00C 8001C80C 83DE010C */  jal        CdSyncCallback
    /* D010 8001C810 21200000 */   addu      $a0, $zero, $zero
    /* D014 8001C814 1000BF8F */  lw         $ra, 0x10($sp)
    /* D018 8001C818 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D01C 8001C81C 0800E003 */  jr         $ra
    /* D020 8001C820 00000000 */   nop
.size func_8001C7F0, . - func_8001C7F0
