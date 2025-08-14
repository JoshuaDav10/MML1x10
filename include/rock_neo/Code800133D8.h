#ifndef CODE_800133D8_TMP_H
#define CODE_800133D8_TMP_H

#include "rock_neo.h"

s32 func_80012F78(void (*)());

typedef struct CODE_800133D8_WORK {
    s16 x0;    // Current state
    s16 x1;    // State flag
    s16 x2;    // Unused
    s16 x3;    // Unused
    s16 x4;    // Unused
    s16 x5;    // Unused
    s16 x6;    // Unused
    s16 x7;    // Unused
} CODE_800133D8_WORK;

extern CODE_800133D8_WORK Code800133D8_work;
extern void (*Code800133D8_main_tbl[])(CODE_800133D8_WORK*);

void func_80013420();

#endif
