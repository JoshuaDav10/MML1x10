#ifndef ROCK_NEO_H
#define ROCK_NEO_H

#include "common.h"

#include "psxsdk/libapi.h"
#include "psxsdk/libc.h"
#include "psxsdk/libgpu.h"

/* Symbols with unknown compile units */
unknown_t func_80063FC0(unknown_t, unknown_t);
void func_8001D7AC(u32);
void func_8001CC08(u32);
void func_8001D254(u32, u32, void*);
unknown_t func_80012E98(unknown_t);
unknown_t func_80031AA4();
unknown_t func_80016D64();
unknown_t Sce_flag_on(unknown_t);
unknown_t func_8001F23C();
extern unknown_t D_8008CB94; // may be in sub_scrn.c
extern s32 D_80098B2C;
unknown_t func_8001F3C8();
unknown_t func_80038648();
extern u8 D_800C356F;
unknown_t func_80017C30(unknown_t);
unknown_t func_8001B2F0(unknown_t);
unknown_t func_8005DF3C();
unknown_t func_8005DF4C();
unknown_t func_80063EF0();
unknown_t func_8001B314();
unknown_t func_8001B33C();
unknown_t func_8001D494(unknown_t, unknown_t, unknown_t);
unknown_t Sce_flag_off(unknown_t);
unknown_t func_80063BA8();
unknown_t func_800665E8();
extern u16 D_80098910;
extern DR_MODE D_80098A10[];
extern s16 D_80098A70;
extern s16 D_80098A72;
extern u8 D_80098788;

#define GET_PARTS_NO(x) ((u8*)&Moji_flag3)[x]
#define GET_SELECT_NO(x) ((u8*)&D_80098B2C)[x]

#define PRIM_PTR(t) (*(t** )0x1F800070)
#define PRIM_PTR_INC(t) PRIM_PTR(t); PRIM_PTR(t) = PRIM_PTR(t) + 1

typedef struct unkst_80098A28 {
    s8 xe0[3]; // tag?
    s8 unk3; // tag? (4th byte?)
    s8 unk4[3];
    s8 unk7; // code?
    s16 unk8, unkA;
    s16 unkC, unkE; // unkC is being set to 320 and unkE to 240, looks like the resolution
} unkst_80098A28; // may be a GTE primitive
extern unkst_80098A28 D_80098A28;

extern void (*D_80080894[])(s8*);

extern s8 D_80098B1C;
extern s8 D_80098B1D;

/* CD-ROM related global variables */
extern u8 D_8009896C;
extern u8 D_80098964;
extern u8 D_800988EC;
extern u32 D_800989C8;
extern u32 D_800989C4;
extern u8 D_800988D0;
extern u8 D_80098A98;
extern u8 D_80098AB8;
extern u32 D_800989D8;
extern u32 D_800989B0;
extern u32 D_800989BC;
extern u32 D_800989C0;
extern u32 D_800989B8;
extern u32 D_80098A84;
extern u32 D_80087680[];
extern u32 D_80087670[];
extern u32 D_80082CD0[];
extern u32 D_80088F9C[];
extern u32 D_80088EF8[];
extern u8 D_800988DC;
extern u32 D_80098998;
extern u16 D_80098994;
extern u8 D_800988C0;
extern u8 D_80098B42;
extern u8 D_80098B41;
extern u8 D_80098AA0;
extern u32 D_80098828;
extern u32 D_80098814;
extern u32 D_8009881C;
extern u32 D_80098968;
extern u32 D_80098A7C;
extern u32 D_800987A4;
extern u32 D_800A3A40[];
extern u16 D_800AD142;
extern u16 D_800AD146;
extern u16 D_800AD14E;
extern u32 D_800AD140;
extern u8 D_800AD154;
extern u8 D_800AD155;
extern u8 D_800AD156;
extern u8 D_800AD157;
extern void* unknown_Cd_strucptr;

/* Game work and input variables */
extern u16 D_800C0C2A;  // Joystick input
extern s16 D_80098A70;  // Game work field
extern s16 D_80098A72;  // Game work field

#endif
