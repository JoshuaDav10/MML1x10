.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D7AC
    /* DFAC 8001D7AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DFB0 8001D7B0 40100400 */  sll        $v0, $a0, 1
    /* DFB4 8001D7B4 21104400 */  addu       $v0, $v0, $a0
    /* DFB8 8001D7B8 80100200 */  sll        $v0, $v0, 2
    /* DFBC 8001D7BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* DFC0 8001D7C0 0880013C */  lui        $at, %hi(D_80082CD0)
    /* DFC4 8001D7C4 21082200 */  addu       $at, $at, $v0
    /* DFC8 8001D7C8 D02C248C */  lw         $a0, %lo(D_80082CD0)($at)
    /* DFCC 8001D7CC B675000C */  jal        func_8001D6D8
    /* DFD0 8001D7D0 00000000 */   nop
    /* DFD4 8001D7D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* DFD8 8001D7D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* DFDC 8001D7DC 0800E003 */  jr         $ra
    /* DFE0 8001D7E0 00000000 */   nop
.size func_8001D7AC, . - func_8001D7AC
