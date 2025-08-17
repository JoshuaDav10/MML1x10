.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F3C8
    /* FBC8 8001F3C8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* FBCC 8001F3CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* FBD0 8001F3D0 0C80123C */  lui        $s2, %hi(Game_work + 0x50)
    /* FBD4 8001F3D4 601B5282 */  lb         $s2, %lo(Game_work + 0x50)($s2)
    /* FBD8 8001F3D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* FBDC 8001F3DC 0C80103C */  lui        $s0, %hi(Game_work + 0x51)
    /* FBE0 8001F3E0 611B1082 */  lb         $s0, %lo(Game_work + 0x51)($s0)
    /* FBE4 8001F3E4 2000BFAF */  sw         $ra, 0x20($sp)
    /* FBE8 8001F3E8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* FBEC 8001F3EC D07D000C */  jal        func_8001F740
    /* FBF0 8001F3F0 1400B1AF */   sw        $s1, 0x14($sp)
    /* FBF4 8001F3F4 0C80133C */  lui        $s3, %hi(Game_work)
    /* FBF8 8001F3F8 101B7326 */  addiu      $s3, $s3, %lo(Game_work)
    /* FBFC 8001F3FC 0B80113C */  lui        $s1, %hi(Player_work)
    /* FC00 8001F400 B0513126 */  addiu      $s1, $s1, %lo(Player_work)
    /* FC04 8001F404 0C80033C */  lui        $v1, %hi(D_800C356C)
    /* FC08 8001F408 6C356380 */  lb         $v1, %lo(D_800C356C)($v1)
    /* FC0C 8001F40C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* FC10 8001F410 1C006210 */  beq        $v1, $v0, .L8001F484
    /* FC14 8001F414 80101200 */   sll       $v0, $s2, 2
    /* FC18 8001F418 0980013C */  lui        $at, %hi(D_800893BC)
    /* FC1C 8001F41C 21082200 */  addu       $at, $at, $v0
    /* FC20 8001F420 BC93238C */  lw         $v1, %lo(D_800893BC)($at)
    /* FC24 8001F424 40101000 */  sll        $v0, $s0, 1
    /* FC28 8001F428 21104300 */  addu       $v0, $v0, $v1
    /* FC2C 8001F42C 02005084 */  lh         $s0, 0x2($v0)
    /* FC30 8001F430 00000000 */  nop
    /* FC34 8001F434 0A000006 */  bltz       $s0, .L8001F460
    /* FC38 8001F438 00000000 */   nop
    /* FC3C 8001F43C 0C80023C */  lui        $v0, %hi(Game_work + 0x6A)
    /* FC40 8001F440 7A1B4284 */  lh         $v0, %lo(Game_work + 0x6A)($v0)
    /* FC44 8001F444 00000000 */  nop
    /* FC48 8001F448 05005010 */  beq        $v0, $s0, .L8001F460
    /* FC4C 8001F44C 00000000 */   nop
    /* FC50 8001F450 1075000C */  jal        Cd_read_comb
    /* FC54 8001F454 21200002 */   addu      $a0, $s0, $zero
    /* FC58 8001F458 0C80013C */  lui        $at, %hi(Game_work + 0x6A)
    /* FC5C 8001F45C 7A1B30A4 */  sh         $s0, %lo(Game_work + 0x6A)($at)
  .L8001F460:
    /* FC60 8001F460 797D000C */  jal        func_8001F5E4
    /* FC64 8001F464 00000000 */   nop
    /* FC68 8001F468 2276000C */  jal        func_8001D888
    /* FC6C 8001F46C 21200000 */   addu      $a0, $zero, $zero
    /* FC70 8001F470 FE030424 */  addiu      $a0, $zero, 0x3FE
    /* FC74 8001F474 A4BB000C */  jal        Obj_work_flag_change
    /* FC78 8001F478 80000524 */   addiu     $a1, $zero, 0x80
    /* FC7C 8001F47C A9C6000C */  jal        func_80031AA4
    /* FC80 8001F480 00000000 */   nop
  .L8001F484:
    /* FC84 8001F484 80101200 */  sll        $v0, $s2, 2
    /* FC88 8001F488 0980013C */  lui        $at, %hi(D_80089790)
    /* FC8C 8001F48C 21082200 */  addu       $at, $at, $v0
    /* FC90 8001F490 9097228C */  lw         $v0, %lo(D_80089790)($at)
    /* FC94 8001F494 00000000 */  nop
    /* FC98 8001F498 09F84000 */  jalr       $v0
    /* FC9C 8001F49C 00000000 */   nop
    /* FCA0 8001F4A0 0C80023C */  lui        $v0, %hi(Scene_work)
    /* FCA4 8001F4A4 484C4290 */  lbu        $v0, %lo(Scene_work)($v0)
    /* FCA8 8001F4A8 00000000 */  nop
    /* FCAC 8001F4AC 0B004014 */  bnez       $v0, .L8001F4DC
    /* FCB0 8001F4B0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* FCB4 8001F4B4 0C80033C */  lui        $v1, %hi(D_800C356C)
    /* FCB8 8001F4B8 6C356380 */  lb         $v1, %lo(D_800C356C)($v1)
    /* FCBC 8001F4BC 801F013C */  lui        $at, (0x1F800074 >> 16)
    /* FCC0 8001F4C0 740020A0 */  sb         $zero, (0x1F800074 & 0xFFFF)($at)
    /* FCC4 8001F4C4 05006210 */  beq        $v1, $v0, .L8001F4DC
    /* FCC8 8001F4C8 00000000 */   nop
    /* FCCC 8001F4CC BD002292 */  lbu        $v0, 0xBD($s1)
    /* FCD0 8001F4D0 080020AE */  sw         $zero, 0x8($s1)
    /* FCD4 8001F4D4 BF004230 */  andi       $v0, $v0, 0xBF
    /* FCD8 8001F4D8 BD0022A2 */  sb         $v0, 0xBD($s1)
  .L8001F4DC:
    /* FCDC 8001F4DC 4E042282 */  lb         $v0, 0x44E($s1)
    /* FCE0 8001F4E0 00000000 */  nop
    /* FCE4 8001F4E4 10004004 */  bltz       $v0, .L8001F528
    /* FCE8 8001F4E8 00000000 */   nop
    /* FCEC 8001F4EC 0C004010 */  beqz       $v0, .L8001F520
    /* FCF0 8001F4F0 00000000 */   nop
    /* FCF4 8001F4F4 4F042282 */  lb         $v0, 0x44F($s1)
    /* FCF8 8001F4F8 00000000 */  nop
    /* FCFC 8001F4FC 04004010 */  beqz       $v0, .L8001F510
    /* FD00 8001F500 00000000 */   nop
    /* FD04 8001F504 72012292 */  lbu        $v0, 0x172($s1)
    /* FD08 8001F508 457D0008 */  j          .L8001F514
    /* FD0C 8001F50C 700122A2 */   sb        $v0, 0x170($s1)
  .L8001F510:
    /* FD10 8001F510 700120A2 */  sb         $zero, 0x170($s1)
  .L8001F514:
    /* FD14 8001F514 73012292 */  lbu        $v0, 0x173($s1)
    /* FD18 8001F518 4A7D0008 */  j          .L8001F528
    /* FD1C 8001F51C 710122A2 */   sb        $v0, 0x171($s1)
  .L8001F520:
    /* FD20 8001F520 700120A2 */  sb         $zero, 0x170($s1)
    /* FD24 8001F524 710120A2 */  sb         $zero, 0x171($s1)
  .L8001F528:
    /* FD28 8001F528 E9B3000C */  jal        func_8002CFA4
    /* FD2C 8001F52C 00000000 */   nop
    /* FD30 8001F530 D046010C */  jal        func_80051B40
    /* FD34 8001F534 00000000 */   nop
    /* FD38 8001F538 AFCF000C */  jal        func_80033EBC
    /* FD3C 8001F53C 00000000 */   nop
    /* FD40 8001F540 788A010C */  jal        func_800629E0
    /* FD44 8001F544 00000000 */   nop
    /* FD48 8001F548 7F5E000C */  jal        func_800179FC
    /* FD4C 8001F54C 00000000 */   nop
    /* FD50 8001F550 7E0060A2 */  sb         $zero, 0x7E($s3)
    /* FD54 8001F554 3477000C */  jal        Sce_flag_off
    /* FD58 8001F558 FF010424 */   addiu     $a0, $zero, 0x1FF
    /* FD5C 8001F55C 21100000 */  addu       $v0, $zero, $zero
    /* FD60 8001F560 2000BF8F */  lw         $ra, 0x20($sp)
    /* FD64 8001F564 1C00B38F */  lw         $s3, 0x1C($sp)
    /* FD68 8001F568 1800B28F */  lw         $s2, 0x18($sp)
    /* FD6C 8001F56C 1400B18F */  lw         $s1, 0x14($sp)
    /* FD70 8001F570 1000B08F */  lw         $s0, 0x10($sp)
    /* FD74 8001F574 2800BD27 */  addiu      $sp, $sp, 0x28
    /* FD78 8001F578 0800E003 */  jr         $ra
    /* FD7C 8001F57C 00000000 */   nop
.size func_8001F3C8, . - func_8001F3C8
