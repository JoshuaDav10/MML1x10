.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DDE4
    /* E5E4 8001DDE4 0B80023C */  lui        $v0, %hi(Player_work + 0x6E)
    /* E5E8 8001DDE8 1E524284 */  lh         $v0, %lo(Player_work + 0x6E)($v0)
    /* E5EC 8001DDEC 00000000 */  nop
    /* E5F0 8001DDF0 22004004 */  bltz       $v0, .L8001DE7C
    /* E5F4 8001DDF4 01000224 */   addiu     $v0, $zero, 0x1
    /* E5F8 8001DDF8 0F000624 */  addiu      $a2, $zero, 0xF
    /* E5FC 8001DDFC 0C80033C */  lui        $v1, %hi(Scene_work)
    /* E600 8001DE00 484C6324 */  addiu      $v1, $v1, %lo(Scene_work)
    /* E604 8001DE04 3C006524 */  addiu      $a1, $v1, 0x3C
    /* E608 8001DE08 000062A0 */  sb         $v0, 0x0($v1)
    /* E60C 8001DE0C 0C80013C */  lui        $at, %hi(Scene_work + 0x9)
    /* E610 8001DE10 514C20A0 */  sb         $zero, %lo(Scene_work + 0x9)($at)
    /* E614 8001DE14 0C80013C */  lui        $at, %hi(Scene_work + 0x8)
    /* E618 8001DE18 504C20A0 */  sb         $zero, %lo(Scene_work + 0x8)($at)
    /* E61C 8001DE1C 0C80013C */  lui        $at, %hi(Scene_work + 0x1)
    /* E620 8001DE20 494C24A0 */  sb         $a0, %lo(Scene_work + 0x1)($at)
    /* E624 8001DE24 0C80013C */  lui        $at, %hi(Scene_work + 0x10)
    /* E628 8001DE28 584C20AC */  sw         $zero, %lo(Scene_work + 0x10)($at)
    /* E62C 8001DE2C 0C80013C */  lui        $at, %hi(Scene_work + 0xC)
    /* E630 8001DE30 544C20AC */  sw         $zero, %lo(Scene_work + 0xC)($at)
    /* E634 8001DE34 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* E638 8001DE38 644C20AC */  sw         $zero, %lo(Scene_work + 0x1C)($at)
    /* E63C 8001DE3C 0C80013C */  lui        $at, %hi(Scene_work + 0x18)
    /* E640 8001DE40 604C20AC */  sw         $zero, %lo(Scene_work + 0x18)($at)
    /* E644 8001DE44 0C80013C */  lui        $at, %hi(Scene_work + 0x14)
    /* E648 8001DE48 5C4C20AC */  sw         $zero, %lo(Scene_work + 0x14)($at)
    /* E64C 8001DE4C 0C80013C */  lui        $at, %hi(Scene_work + 0x4)
    /* E650 8001DE50 4C4C20AC */  sw         $zero, %lo(Scene_work + 0x4)($at)
    /* E654 8001DE54 0C80013C */  lui        $at, %hi(Scene_work + 0xB)
    /* E658 8001DE58 534C20A0 */  sb         $zero, %lo(Scene_work + 0xB)($at)
    /* E65C 8001DE5C 0C80013C */  lui        $at, %hi(Scene_work + 0xA)
    /* E660 8001DE60 524C20A0 */  sb         $zero, %lo(Scene_work + 0xA)($at)
    /* E664 8001DE64 0C80013C */  lui        $at, %hi(Scene_work + 0xA4)
    /* E668 8001DE68 EC4C20AC */  sw         $zero, %lo(Scene_work + 0xA4)($at)
  .L8001DE6C:
    /* E66C 8001DE6C 2400A0AC */  sw         $zero, 0x24($a1)
    /* E670 8001DE70 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* E674 8001DE74 FDFFC104 */  bgez       $a2, .L8001DE6C
    /* E678 8001DE78 FCFFA524 */   addiu     $a1, $a1, -0x4
  .L8001DE7C:
    /* E67C 8001DE7C 0800E003 */  jr         $ra
    /* E680 8001DE80 00000000 */   nop
.size func_8001DDE4, . - func_8001DDE4
