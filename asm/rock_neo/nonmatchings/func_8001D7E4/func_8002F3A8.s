.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F3A8
    /* 1FBA8 8002F3A8 0100A230 */  andi       $v0, $a1, 0x1
    /* 1FBAC 8002F3AC 06004010 */  beqz       $v0, .L8002F3C8
    /* 1FBB0 8002F3B0 0400A230 */   andi      $v0, $a1, 0x4
    /* 1FBB4 8002F3B4 06008290 */  lbu        $v0, 0x6($a0)
    /* 1FBB8 8002F3B8 00000000 */  nop
    /* 1FBBC 8002F3BC 01004238 */  xori       $v0, $v0, 0x1
    /* 1FBC0 8002F3C0 060082A0 */  sb         $v0, 0x6($a0)
    /* 1FBC4 8002F3C4 0400A230 */  andi       $v0, $a1, 0x4
  .L8002F3C8:
    /* 1FBC8 8002F3C8 06004010 */  beqz       $v0, .L8002F3E4
    /* 1FBCC 8002F3CC 0200A230 */   andi      $v0, $a1, 0x2
    /* 1FBD0 8002F3D0 06008290 */  lbu        $v0, 0x6($a0)
    /* 1FBD4 8002F3D4 00000000 */  nop
    /* 1FBD8 8002F3D8 02004238 */  xori       $v0, $v0, 0x2
    /* 1FBDC 8002F3DC 060082A0 */  sb         $v0, 0x6($a0)
    /* 1FBE0 8002F3E0 0200A230 */  andi       $v0, $a1, 0x2
  .L8002F3E4:
    /* 1FBE4 8002F3E4 06004010 */  beqz       $v0, .L8002F400
    /* 1FBE8 8002F3E8 0800A230 */   andi      $v0, $a1, 0x8
    /* 1FBEC 8002F3EC 06008290 */  lbu        $v0, 0x6($a0)
    /* 1FBF0 8002F3F0 00000000 */  nop
    /* 1FBF4 8002F3F4 01004234 */  ori        $v0, $v0, 0x1
    /* 1FBF8 8002F3F8 060082A0 */  sb         $v0, 0x6($a0)
    /* 1FBFC 8002F3FC 0800A230 */  andi       $v0, $a1, 0x8
  .L8002F400:
    /* 1FC00 8002F400 05004010 */  beqz       $v0, .L8002F418
    /* 1FC04 8002F404 00000000 */   nop
    /* 1FC08 8002F408 06008290 */  lbu        $v0, 0x6($a0)
    /* 1FC0C 8002F40C 00000000 */  nop
    /* 1FC10 8002F410 02004234 */  ori        $v0, $v0, 0x2
    /* 1FC14 8002F414 060082A0 */  sb         $v0, 0x6($a0)
  .L8002F418:
    /* 1FC18 8002F418 0800E003 */  jr         $ra
    /* 1FC1C 8002F41C 00000000 */   nop
.size func_8002F3A8, . - func_8002F3A8
