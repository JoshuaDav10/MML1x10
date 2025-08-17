.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sound_call
    /* A808 8001A008 0A80033C */  lui        $v1, %hi(D_80098938)
    /* A80C 8001A00C 3889638C */  lw         $v1, %lo(D_80098938)($v1)
    /* A810 8001A010 0C80023C */  lui        $v0, %hi(D_800BE6D8)
    /* A814 8001A014 D8E64224 */  addiu      $v0, $v0, %lo(D_800BE6D8)
    /* A818 8001A018 0B006210 */  beq        $v1, $v0, .L8001A048
    /* A81C 8001A01C 00000000 */   nop
    /* A820 8001A020 000060A0 */  sb         $zero, 0x0($v1)
    /* A824 8001A024 0A80023C */  lui        $v0, %hi(D_80098938)
    /* A828 8001A028 3889428C */  lw         $v0, %lo(D_80098938)($v0)
    /* A82C 8001A02C 00000000 */  nop
    /* A830 8001A030 020044A4 */  sh         $a0, 0x2($v0)
    /* A834 8001A034 040045AC */  sw         $a1, 0x4($v0)
    /* A838 8001A038 080046AC */  sw         $a2, 0x8($v0)
    /* A83C 8001A03C 14004224 */  addiu      $v0, $v0, 0x14
    /* A840 8001A040 0A80013C */  lui        $at, %hi(D_80098938)
    /* A844 8001A044 388922AC */  sw         $v0, %lo(D_80098938)($at)
  .L8001A048:
    /* A848 8001A048 0800E003 */  jr         $ra
    /* A84C 8001A04C 00000000 */   nop
.size Sound_call, . - Sound_call
