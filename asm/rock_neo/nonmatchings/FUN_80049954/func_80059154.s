.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059154
    /* 49954 80059154 25104700 */  or         $v0, $v0, $a3
    /* 49958 80059158 CC1282AF */  sw         $v0, %gp_rel(Moji_flag3)($gp)
    /* 4995C 8005915C 0268000C */  jal        Sound_call
    /* 49960 80059160 21300000 */   addu      $a2, $zero, $zero
    /* 49964 80059164 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 49968 80059168 00000000 */  nop
    /* 4996C 8005916C 02004224 */  addiu      $v0, $v0, 0x2
    /* 49970 80059170 381182A3 */  sb         $v0, %gp_rel(D_8009899C)($gp)
    /* 49974 80059174 8F640108 */  j          .L8005923C
    /* 49978 80059178 00000000 */   nop
  .L8005917C:
    /* 4997C 8005917C 06004010 */  beqz       $v0, .L80059198
.size func_80059154, . - func_80059154
