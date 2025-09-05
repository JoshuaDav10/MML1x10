.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058EA0
    /* 496A0 80058EA0 4000063C */  lui        $a2, (0x402800 >> 16)
    /* 496A4 80058EA4 1F1A033C */  lui        $v1, (0x1A1F58D1 >> 16)
    /* 496A8 80058EA8 D1586334 */  ori        $v1, $v1, (0x1A1F58D1 & 0xFFFF)
    /* 496AC 80058EAC 0C80023C */  lui        $v0, %hi(Moji_work)
    /* 496B0 80058EB0 B8B64224 */  addiu      $v0, $v0, %lo(Moji_work)
    /* 496B4 80058EB4 23108200 */  subu       $v0, $a0, $v0
    /* 496B8 80058EB8 18004300 */  mult       $v0, $v1
    /* 496BC 80058EBC 72008590 */  lbu        $a1, 0x72($a0)
    /* 496C0 80058EC0 0000828C */  lw         $v0, 0x0($a0)
    /* 496C4 80058EC4 6C00838C */  lw         $v1, 0x6C($a0)
    /* 496C8 80058EC8 0028C634 */  ori        $a2, $a2, (0x402800 & 0xFFFF)
    /* 496CC 80058ECC BC0080A4 */  sh         $zero, 0xBC($a0)
    /* 496D0 80058ED0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 496D4 80058ED4 25104600 */  or         $v0, $v0, $a2
    /* 496D8 80058ED8 05006324 */  addiu      $v1, $v1, 0x5
    /* 496DC 80058EDC 000082AC */  sw         $v0, 0x0($a0)
    /* 496E0 80058EE0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 496E4 80058EE4 720085A0 */  sb         $a1, 0x72($a0)
    /* 496E8 80058EE8 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 496EC 80058EEC 0200023C */  lui        $v0, (0x20000 >> 16)
    /* 496F0 80058EF0 6C0083AC */  sw         $v1, 0x6C($a0)
    /* 496F4 80058EF4 12380000 */  mflo       $a3
    /* 496F8 80058EF8 83180700 */  sra        $v1, $a3, 2
    /* 496FC 80058EFC 04106200 */  sllv       $v0, $v0, $v1
    /* 49700 80058F00 CC12838F */  lw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 49704 80058F04 27100200 */  nor        $v0, $zero, $v0
    /* 49708 80058F08 24186200 */  and        $v1, $v1, $v0
    /* 4970C 80058F0C CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 49710 80058F10 0800E003 */  jr         $ra
    /* 49714 80058F14 01000224 */   addiu     $v0, $zero, 0x1
.size func_80058EA0, . - func_80058EA0
