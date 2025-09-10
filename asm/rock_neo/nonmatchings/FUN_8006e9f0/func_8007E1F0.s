.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E1F0
    /* 6E9F0 8007E1F0 03240400 */  sra        $a0, $a0, 16
    /* 6E9F4 8007E1F4 2128A200 */  addu       $a1, $a1, $v0
    /* 6E9F8 8007E1F8 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 6E9FC 8007E1FC 002C0500 */  sll        $a1, $a1, 16
    /* 6EA00 8007E200 57F9010C */  jal        get_ce
    /* 6EA04 8007E204 032C0500 */   sra       $a1, $a1, 16
    /* 6EA08 8007E208 080022AE */  sw         $v0, 0x8($s1)
    /* 6EA0C 8007E20C 08000486 */  lh         $a0, 0x8($s0)
    /* 6EA10 8007E210 0A000586 */  lh         $a1, 0xA($s0)
    /* 6EA14 8007E214 8AF9010C */  jal        get_ofs
    /* 6EA18 8007E218 00000000 */   nop
    /* 6EA1C 8007E21C 0C0022AE */  sw         $v0, 0xC($s1)
    /* 6EA20 8007E220 17000492 */  lbu        $a0, 0x17($s0)
    /* 6EA24 8007E224 16000592 */  lbu        $a1, 0x16($s0)
    /* 6EA28 8007E228 14000696 */  lhu        $a2, 0x14($s0)
    /* 6EA2C 8007E22C 0EF9010C */  jal        get_mode
    /* 6EA30 8007E230 00000000 */   nop
    /* 6EA34 8007E234 0C000426 */  addiu      $a0, $s0, 0xC
    /* 6EA38 8007E238 9BF9010C */  jal        get_tw
    /* 6EA3C 8007E23C 100022AE */   sw        $v0, 0x10($s1)
    /* 6EA40 8007E240 140022AE */  sw         $v0, 0x14($s1)
    /* 6EA44 8007E244 00E6023C */  lui        $v0, (0xE6000000 >> 16)
.size func_8007E1F0, . - func_8007E1F0
