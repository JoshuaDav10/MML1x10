.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019F94
    /* A794 80019F94 80200400 */  sll        $a0, $a0, 2
    /* A798 80019F98 0880023C */  lui        $v0, %hi(D_800821F8)
    /* A79C 80019F9C F8214224 */  addiu      $v0, $v0, %lo(D_800821F8)
    /* A7A0 80019FA0 21208200 */  addu       $a0, $a0, $v0
    /* A7A4 80019FA4 0B80013C */  lui        $at, %hi(D_800AD15C)
    /* A7A8 80019FA8 5CD124AC */  sw         $a0, %lo(D_800AD15C)($at)
    /* A7AC 80019FAC 0800E003 */  jr         $ra
    /* A7B0 80019FB0 00000000 */   nop
.size func_80019F94, . - func_80019F94
