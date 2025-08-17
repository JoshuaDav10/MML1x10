.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DD88
    /* E588 8001DD88 0A80023C */  lui        $v0, %hi(D_80098B60)
    /* E58C 8001DD8C 608B428C */  lw         $v0, %lo(D_80098B60)($v0)
    /* E590 8001DD90 00000000 */  nop
    /* E594 8001DD94 00004390 */  lbu        $v1, 0x0($v0)
    /* E598 8001DD98 00000000 */  nop
    /* E59C 8001DD9C 340983A3 */  sb         $v1, %gp_rel(D_80098198)($gp)
    /* E5A0 8001DDA0 01004390 */  lbu        $v1, 0x1($v0)
    /* E5A4 8001DDA4 02004224 */  addiu      $v0, $v0, 0x2
    /* E5A8 8001DDA8 0A80013C */  lui        $at, %hi(D_80098B60)
    /* E5AC 8001DDAC 608B22AC */  sw         $v0, %lo(D_80098B60)($at)
    /* E5B0 8001DDB0 350983A3 */  sb         $v1, %gp_rel(D_80098199)($gp)
    /* E5B4 8001DDB4 34098287 */  lh         $v0, %gp_rel(D_80098198)($gp)
    /* E5B8 8001DDB8 0800E003 */  jr         $ra
    /* E5BC 8001DDBC 00000000 */   nop
.size func_8001DD88, . - func_8001DD88
