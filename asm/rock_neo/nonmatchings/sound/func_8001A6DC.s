.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A6DC
    /* AEDC 8001A6DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AEE0 8001A6E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* AEE4 8001A6E4 21808000 */  addu       $s0, $a0, $zero
    /* AEE8 8001A6E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* AEEC 8001A6EC 2188A000 */  addu       $s1, $a1, $zero
    /* AEF0 8001A6F0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* AEF4 8001A6F4 8F69000C */  jal        func_8001A63C
    /* AEF8 8001A6F8 1800B2AF */   sw        $s2, 0x18($sp)
    /* AEFC 8001A6FC 21904000 */  addu       $s2, $v0, $zero
    /* AF00 8001A700 8F69000C */  jal        func_8001A63C
    /* AF04 8001A704 01000426 */   addiu     $a0, $s0, 0x1
    /* AF08 8001A708 23105200 */  subu       $v0, $v0, $s2
    /* AF0C 8001A70C 18005100 */  mult       $v0, $s1
    /* AF10 8001A710 12100000 */  mflo       $v0
    /* AF14 8001A714 02004104 */  bgez       $v0, .L8001A720
    /* AF18 8001A718 00000000 */   nop
    /* AF1C 8001A71C 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A720:
    /* AF20 8001A720 C3110200 */  sra        $v0, $v0, 7
    /* AF24 8001A724 21104202 */  addu       $v0, $s2, $v0
    /* AF28 8001A728 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AF2C 8001A72C 1800B28F */  lw         $s2, 0x18($sp)
    /* AF30 8001A730 1400B18F */  lw         $s1, 0x14($sp)
    /* AF34 8001A734 1000B08F */  lw         $s0, 0x10($sp)
    /* AF38 8001A738 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AF3C 8001A73C 0800E003 */  jr         $ra
    /* AF40 8001A740 00000000 */   nop
.size func_8001A6DC, . - func_8001A6DC
