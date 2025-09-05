.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048A40
    /* 39240 80048A40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39244 80048A44 1000B0AF */  sw         $s0, 0x10($sp)
    /* 39248 80048A48 21808000 */  addu       $s0, $a0, $zero
    /* 3924C 80048A4C 0B80043C */  lui        $a0, %hi(Player_work)
    /* 39250 80048A50 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 39254 80048A54 1400BFAF */  sw         $ra, 0x14($sp)
    /* 39258 80048A58 C508010C */  jal        func_80042314
    /* 3925C 80048A5C 00000000 */   nop
    /* 39260 80048A60 01000224 */  addiu      $v0, $zero, 0x1
    /* 39264 80048A64 0B80013C */  lui        $at, %hi(Player_work + 0x8)
    /* 39268 80048A68 B85120AC */  sw         $zero, %lo(Player_work + 0x8)($at)
    /* 3926C 80048A6C 0A80013C */  lui        $at, %hi(D_800A395C)
    /* 39270 80048A70 5C3922A0 */  sb         $v0, %lo(D_800A395C)($at)
    /* 39274 80048A74 08E6000C */  jal        func_80039820
    /* 39278 80048A78 00000000 */   nop
    /* 3927C 80048A7C 3477000C */  jal        Sce_flag_off
    /* 39280 80048A80 B3070424 */   addiu     $a0, $zero, 0x7B3
    /* 39284 80048A84 000000A2 */  sb         $zero, 0x0($s0)
    /* 39288 80048A88 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3928C 80048A8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 39290 80048A90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 39294 80048A94 0800E003 */  jr         $ra
    /* 39298 80048A98 00000000 */   nop
.size func_80048A40, . - func_80048A40
