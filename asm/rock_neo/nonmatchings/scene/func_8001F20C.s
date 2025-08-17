.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F20C
    /* FA0C 8001F20C 0C80013C */  lui        $at, %hi(D_800BC7F0)
    /* FA10 8001F210 F0C725AC */  sw         $a1, %lo(D_800BC7F0)($at)
    /* FA14 8001F214 0C80013C */  lui        $at, %hi(Scene_work + 0xA4)
    /* FA18 8001F218 EC4C24AC */  sw         $a0, %lo(Scene_work + 0xA4)($at)
    /* FA1C 8001F21C 00008290 */  lbu        $v0, 0x0($a0)
    /* FA20 8001F220 0C80013C */  lui        $at, %hi(Scene_work + 0x8)
    /* FA24 8001F224 504C22A0 */  sb         $v0, %lo(Scene_work + 0x8)($at)
    /* FA28 8001F228 01008290 */  lbu        $v0, 0x1($a0)
    /* FA2C 8001F22C 0C80013C */  lui        $at, %hi(Scene_work + 0x9)
    /* FA30 8001F230 514C22A0 */  sb         $v0, %lo(Scene_work + 0x9)($at)
    /* FA34 8001F234 0800E003 */  jr         $ra
    /* FA38 8001F238 00000000 */   nop
.size func_8001F20C, . - func_8001F20C
