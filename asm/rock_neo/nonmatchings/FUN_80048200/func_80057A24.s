.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057A24
    /* 48224 80057A24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 48228 80057A28 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4822C 80057A2C 21808000 */  addu       $s0, $a0, $zero
    /* 48230 80057A30 1400BFAF */  sw         $ra, 0x14($sp)
    /* 48234 80057A34 C0000396 */  lhu        $v1, 0xC0($s0)
    /* 48238 80057A38 CC0F8493 */  lbu        $a0, %gp_rel(D_80098830)($gp)
    /* 4823C 80057A3C 01006224 */  addiu      $v0, $v1, 0x1
    /* 48240 80057A40 80180300 */  sll        $v1, $v1, 2
    /* 48244 80057A44 21187000 */  addu       $v1, $v1, $s0
    /* 48248 80057A48 C00002A6 */  sh         $v0, 0xC0($s0)
    /* 4824C 80057A4C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 48250 80057A50 00058434 */  ori        $a0, $a0, 0x500
    /* 48254 80057A54 01004224 */  addiu      $v0, $v0, 0x1
    /* 48258 80057A58 A376000C */  jal        Sce_flag_on
    /* 4825C 80057A5C 4C0062AC */   sw        $v0, 0x4C($v1)
    /* 48260 80057A60 CC0F8293 */  lbu        $v0, %gp_rel(D_80098830)($gp)
    /* 48264 80057A64 00000000 */  nop
    /* 48268 80057A68 80100200 */  sll        $v0, $v0, 2
.size func_80057A24, . - func_80057A24
