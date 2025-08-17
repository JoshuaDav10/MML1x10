.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001EB98
    /* F398 8001EB98 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* F39C 8001EB9C 1800B0AF */  sw         $s0, 0x18($sp)
    /* F3A0 8001EBA0 21808000 */  addu       $s0, $a0, $zero
    /* F3A4 8001EBA4 2000BFAF */  sw         $ra, 0x20($sp)
    /* F3A8 8001EBA8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* F3AC 8001EBAC 00000292 */  lbu        $v0, 0x0($s0)
    /* F3B0 8001EBB0 00000000 */  nop
    /* F3B4 8001EBB4 80100200 */  sll        $v0, $v0, 2
    /* F3B8 8001EBB8 0C80013C */  lui        $at, %hi(Scene_work + 0x24)
    /* F3BC 8001EBBC 21082200 */  addu       $at, $at, $v0
    /* F3C0 8001EBC0 6C4C318C */  lw         $s1, %lo(Scene_work + 0x24)($at)
    /* F3C4 8001EBC4 BA7A000C */  jal        func_8001EAE8
    /* F3C8 8001EBC8 00000000 */   nop
    /* F3CC 8001EBCC 06004390 */  lbu        $v1, 0x6($v0)
    /* F3D0 8001EBD0 00000000 */  nop
    /* F3D4 8001EBD4 DF006330 */  andi       $v1, $v1, 0xDF
    /* F3D8 8001EBD8 060043A0 */  sb         $v1, 0x6($v0)
    /* F3DC 8001EBDC 00000392 */  lbu        $v1, 0x0($s0)
    /* F3E0 8001EBE0 00000000 */  nop
    /* F3E4 8001EBE4 80180300 */  sll        $v1, $v1, 2
    /* F3E8 8001EBE8 0C80013C */  lui        $at, %hi(Scene_work + 0x24)
    /* F3EC 8001EBEC 21082300 */  addu       $at, $at, $v1
    /* F3F0 8001EBF0 6C4C31AC */  sw         $s1, %lo(Scene_work + 0x24)($at)
    /* F3F4 8001EBF4 2000BF8F */  lw         $ra, 0x20($sp)
    /* F3F8 8001EBF8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* F3FC 8001EBFC 1800B08F */  lw         $s0, 0x18($sp)
    /* F400 8001EC00 2800BD27 */  addiu      $sp, $sp, 0x28
    /* F404 8001EC04 0800E003 */  jr         $ra
    /* F408 8001EC08 00000000 */   nop
.size func_8001EB98, . - func_8001EB98
