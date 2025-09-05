.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055C30
    /* 46430 80055C30 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 46434 80055C34 24104300 */  and        $v0, $v0, $v1
    /* 46438 80055C38 08004010 */  beqz       $v0, .L80055C5C
    /* 4643C 80055C3C 00000000 */   nop
    /* 46440 80055C40 86E7000C */  jal        func_80039E18
    /* 46444 80055C44 00000000 */   nop
    /* 46448 80055C48 FEFF033C */  lui        $v1, (0xFFFEFFFF >> 16)
    /* 4644C 80055C4C 0000028E */  lw         $v0, 0x0($s0)
    /* 46450 80055C50 FFFF6334 */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
    /* 46454 80055C54 24104300 */  and        $v0, $v0, $v1
    /* 46458 80055C58 000002AE */  sw         $v0, 0x0($s0)
  .L80055C5C:
    /* 4645C 80055C5C 6C00038E */  lw         $v1, 0x6C($s0)
    /* 46460 80055C60 01000224 */  addiu      $v0, $zero, 0x1
    /* 46464 80055C64 01006324 */  addiu      $v1, $v1, 0x1
    /* 46468 80055C68 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 4646C 80055C6C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 46470 80055C70 1000B08F */  lw         $s0, 0x10($sp)
    /* 46474 80055C74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46478 80055C78 0800E003 */  jr         $ra
    /* 4647C 80055C7C 00000000 */   nop
.size func_80055C30, . - func_80055C30
