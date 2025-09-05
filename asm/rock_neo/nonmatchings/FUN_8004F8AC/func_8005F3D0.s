.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F3D0
    /* 4FBD0 8005F3D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4FBD4 8005F3D4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4FBD8 8005F3D8 21808000 */  addu       $s0, $a0, $zero
    /* 4FBDC 8005F3DC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4FBE0 8005F3E0 02000382 */  lb         $v1, 0x2($s0)
    /* 4FBE4 8005F3E4 01000224 */  addiu      $v0, $zero, 0x1
    /* 4FBE8 8005F3E8 3E006210 */  beq        $v1, $v0, .L8005F4E4
    /* 4FBEC 8005F3EC 02006228 */   slti      $v0, $v1, 0x2
    /* 4FBF0 8005F3F0 05004010 */  beqz       $v0, .L8005F408
    /* 4FBF4 8005F3F4 00000000 */   nop
    /* 4FBF8 8005F3F8 08006010 */  beqz       $v1, .L8005F41C
    /* 4FBFC 8005F3FC 00000000 */   nop
    /* 4FC00 8005F400 7D7D0108 */  j          .L8005F5F4
    /* 4FC04 8005F404 00000000 */   nop
  .L8005F408:
    /* 4FC08 8005F408 02000224 */  addiu      $v0, $zero, 0x2
    /* 4FC0C 8005F40C 71006210 */  beq        $v1, $v0, .L8005F5D4
    /* 4FC10 8005F410 0008033C */   lui       $v1, (0x8000000 >> 16)
    /* 4FC14 8005F414 7D7D0108 */  j          .L8005F5F4
    /* 4FC18 8005F418 00000000 */   nop
  .L8005F41C:
    /* 4FC1C 8005F41C 9676000C */  jal        Sce_flag_test
    /* 4FC20 8005F420 24050424 */   addiu     $a0, $zero, 0x524
    /* 4FC24 8005F424 06004014 */  bnez       $v0, .L8005F440
    /* 4FC28 8005F428 83000424 */   addiu     $a0, $zero, 0x83
    /* 4FC2C 8005F42C 01000524 */  addiu      $a1, $zero, 0x1
    /* 4FC30 8005F430 0268000C */  jal        Sound_call
    /* 4FC34 8005F434 21300000 */   addu      $a2, $zero, $zero
    /* 4FC38 8005F438 2E7D0108 */  j          .L8005F4B8
    /* 4FC3C 8005F43C 00000000 */   nop
  .L8005F440:
    /* 4FC40 8005F440 0B80033C */  lui        $v1, %hi(Player_work + 0x6E)
    /* 4FC44 8005F444 1E526384 */  lh         $v1, %lo(Player_work + 0x6E)($v1)
.size func_8005F3D0, . - func_8005F3D0
