.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel func_80022298
    /* 12A98 80022298 00408434 */  ori        $a0, $a0, 0x4000
    /* 12A9C 8002229C 1800A227 */  addiu      $v0, $sp, 0x18
    /* 12AA0 800222A0 1800848C */  lw         $a0, 0x18($a0)
    /* 12AA4 800222A4 000059E8 */  swc2       $25, 0x0($v0)
    /* 12AA8 800222A8 04005AE8 */  swc2       $26, 0x4($v0) /* handwritten instruction */
    /* 12AAC 800222AC 08005BE8 */  swc2       $27, 0x8($v0) /* handwritten instruction */
    /* 12AB0 800222B0 2000A28F */  lw         $v0, 0x20($sp)
    /* 12AB4 800222B4 00000000 */  nop
    /* 12AB8 800222B8 02004104 */  bgez       $v0, .L800222C4
    /* 12ABC 800222BC 00000000 */   nop
    /* 12AC0 800222C0 FF014224 */  addiu      $v0, $v0, 0x1FF
  .L800222C4:
    /* 12AC4 800222C4 43120200 */  sra        $v0, $v0, 9
    /* 12AC8 800222C8 1F004230 */  andi       $v0, $v0, 0x1F
    /* 12ACC 800222CC 0C80013C */  lui        $at, (0x800C0000 >> 16)
.size func_80022298, . - func_80022298
