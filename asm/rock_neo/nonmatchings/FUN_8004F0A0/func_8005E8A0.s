.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005E8A0
    /* 4F0A0 8005E8A0 4F894234 */  ori        $v0, $v0, 0x894F
    /* 4F0A4 8005E8A4 140002AD */  sw         $v0, 0x14($t0)
    /* 4F0A8 8005E8A8 498F0234 */  ori        $v0, $zero, 0x8F49
    /* 4F0AC 8005E8AC 1C0002AD */  sw         $v0, 0x1C($t0)
    /* 4F0B0 8005E8B0 4F8F0234 */  ori        $v0, $zero, 0x8F4F
  .L8005E8B4:
    /* 4F0B4 8005E8B4 0C0003AD */  sw         $v1, 0xC($t0)
    /* 4F0B8 8005E8B8 240002AD */  sw         $v0, 0x24($t0)
    /* 4F0BC 8005E8BC 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4F0C0 8005E8C0 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4F0C4 8005E8C4 0000028D */  lw         $v0, 0x0($t0)
    /* 4F0C8 8005E8C8 7800838C */  lw         $v1, 0x78($a0)
    /* 4F0CC 8005E8CC 24104C00 */  and        $v0, $v0, $t4
.size func_8005E8A0, . - func_8005E8A0
