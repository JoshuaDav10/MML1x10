.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056164
    /* 46964 80056164 3E0083A0 */  sb         $v1, 0x3E($a0)
    /* 46968 80056168 12008394 */  lhu        $v1, 0x12($a0)
    /* 4696C 8005616C 02004224 */  addiu      $v0, $v0, 0x2
    /* 46970 80056170 21186500 */  addu       $v1, $v1, $a1
.size func_80056164, . - func_80056164
