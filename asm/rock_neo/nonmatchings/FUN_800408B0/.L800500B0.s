.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800500B0
    /* 408B0 800500B0 801F023C */  lui        $v0, (0x1F8000FA >> 16)
    /* 408B4 800500B4 FA004294 */  lhu        $v0, (0x1F8000FA & 0xFFFF)($v0)
  .L800500B8:
    /* 408B8 800500B8 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 408BC 800500BC C2006394 */  lhu        $v1, (0x1F8000C2 & 0xFFFF)($v1)
.size .L800500B0, . - .L800500B0
