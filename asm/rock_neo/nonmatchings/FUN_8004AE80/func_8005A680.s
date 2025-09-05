.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A680
    /* 4AE80 8005A680 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 4AE84 8005A684 BFFF023C */  lui        $v0, (0xFFBFFFFF >> 16)
  .L8005A688:
    /* 4AE88 8005A688 FFFF4234 */  ori        $v0, $v0, (0xFFBFFFFF & 0xFFFF)
    /* 4AE8C 8005A68C 0000038E */  lw         $v1, 0x0($s0)
    /* 4AE90 8005A690 04000486 */  lh         $a0, 0x4($s0)
    /* 4AE94 8005A694 24186200 */  and        $v1, $v1, $v0
    /* 4AE98 8005A698 21108000 */  addu       $v0, $a0, $zero
    /* 4AE9C 8005A69C 6600801C */  bgtz       $a0, .L8005A838
    /* 4AEA0 8005A6A0 000003AE */   sw        $v1, 0x0($s0)
    /* 4AEA4 8005A6A4 CA8F010C */  jal        Game_logo_kill
    /* 4AEA8 8005A6A8 21200000 */   addu      $a0, $zero, $zero
    /* 4AEAC 8005A6AC CA8F010C */  jal        Game_logo_kill
    /* 4AEB0 8005A6B0 01000424 */   addiu     $a0, $zero, 0x1
    /* 4AEB4 8005A6B4 B800028E */  lw         $v0, 0xB8($s0)
    /* 4AEB8 8005A6B8 0810033C */  lui        $v1, (0x10080000 >> 16)
    /* 4AEBC 8005A6BC 24104300 */  and        $v0, $v0, $v1
    /* 4AEC0 8005A6C0 13004010 */  beqz       $v0, .L8005A710
    /* 4AEC4 8005A6C4 83000424 */   addiu     $a0, $zero, 0x83
    /* 4AEC8 8005A6C8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4AECC 8005A6CC 0268000C */  jal        Sound_call
    /* 4AED0 8005A6D0 21300000 */   addu      $a2, $zero, $zero
    /* 4AED4 8005A6D4 FFFE043C */  lui        $a0, (0xFEFFFFFF >> 16)
    /* 4AED8 8005A6D8 4400058E */  lw         $a1, 0x44($s0)
    /* 4AEDC 8005A6DC 71000292 */  lbu        $v0, 0x71($s0)
    /* 4AEE0 8005A6E0 FFFF8434 */  ori        $a0, $a0, (0xFEFFFFFF & 0xFFFF)
    /* 4AEE4 8005A6E4 790002A2 */  sb         $v0, 0x79($s0)
    /* 4AEE8 8005A6E8 0000028E */  lw         $v0, 0x0($s0)
    /* 4AEEC 8005A6EC 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4AEF0 8005A6F0 24104400 */  and        $v0, $v0, $a0
    /* 4AEF4 8005A6F4 000002AE */  sw         $v0, 0x0($s0)
    /* 4AEF8 8005A6F8 01006490 */  lbu        $a0, 0x1($v1)
    /* 4AEFC 8005A6FC 02006690 */  lbu        $a2, 0x2($v1)
.size func_8005A680, . - func_8005A680
