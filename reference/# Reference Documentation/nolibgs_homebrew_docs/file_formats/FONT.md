# Change the debug font appearance and color

![Funky!](https://wiki.arthus.net/assets/debug_font.gif)

Changing the debug font face and color can be useful if you don't want or don't have time to implement a full-fledged font atlas solution, but still want to be able to customize the default font a bit.

## Basics

According to PsyQ's doc, the `FntLoad()` function is in charge of loading the texture and [CLUT](https://www.computerhope.com/jargon/c/clut.htm) in the PSX vram.  
By default it will load a 128x32 image to xy coordinates `960, 0`, and its clut will be loaded at `960,0+128`.

Using a custom debug font is then a simple matter of loading an image into vram at those coordinates, and/or altering the clut.

## Color

![A custom debug font color](https://wiki.arthus.net/assets/debug_font_color.png)

The CLUT is loaded at `x,y+128` ( 960,128 by default ) and consists of two horizontal pixels for the default font; the first is black (RGB 0,0,0) and is the background colour.  
The second one is white (RGB 255,255,255) and is the foreground (or text) colour.
You can use the `ClearImage()` function to draw a colored rectangle anywhere in vram, so why not draw a 1x1 pixel at 961,128 and see the result ?  

**Note that setting the pixel at 960x128 to a different color overides `FntOpen()`'s `isbg` value.**

```c
// Used for font texture position in vram
#define FONTX   960
#define FONTY   0

// Two color vectors R,G,B
CVECTOR fntColor = { 255, 0, 0 };
CVECTOR fntColorBG = { 0, 0, 0 };

void FntColor(CVECTOR fgcol, CVECTOR bgcol )
{
    // The debug font clut is at tx, ty + 128
    // tx = bg color
    // tx + 1 = fg color
    // We can override the color by drawing a rect at these coordinates
    // 
    // Define 1 pixel at 960,128 (background color) and 1 pixel at 961, 128 (foreground color)
    RECT fg = { FONTX+1, FONTY + 128, 1, 1 };
    RECT bg = { FONTX, FONTY + 128, 1, 1 };
    // Set colors
    ClearImage(&fg, fgcol.r, fgcol.g, fgcol.b);
    ClearImage(&bg, bgcol.r, bgcol.g, bgcol.b);
}
```

All you have to do after that is calling `FntColor()` after `FntLoad()` and `FntOpen()` :

```c
FntLoad(FONTX, FONTY);                // Load font to vram at FONTX,FONTY
FntOpen(100, 100, 48, 20, 0, 12 );    // FntOpen(x, y, width, height,  black_bg, max. nbr. chars)
FntColor(fntColor, fntColorBG);
```

You can check in a vram viewer that the pixels at those coordinates have the new colors ;

![the debug font texture in VRAM](https://wiki.arthus.net/assets/debug_font_vram.png)

## Fontface

Changing the font face allows you to use customized 7x7 pixels glyph and a full 4bpp CLUT, that's quite nice !
The latin aphabet debug font has 64 glyphs ; 4 lines, 16 glyphs per line in this order : 

**Notice that the first glyph on the first line is empty**

```
 !"#$%&'()*+,-./
0123456789:;<=^?
@ABCDEFGHIJKLMNO
PQRSTUVWXYZ[\]>
``` 

The fontface should be a 128x32, 16 colors palettized image with each glyphs taking 7x7 pixels :

![template](https://wiki.arthus.net/assets/debug_font_tpl.png)

For reference, here is an example :  

![template](https://wiki.arthus.net/assets/debug_font_spr.png)

Gimp or Aseprite are tools that would do the trick.

### Converting the image to TIM

Using Lameguy64's `img2tim` utility, convert the image to [tim](https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/TIM) :

```
img2tim -b -usealpha -org 960 0 -plt 960 128 -bpp 4 -o output.tim input.png
```

### Including the tim file

If using nugget+psyq, as described [here](https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/(Archived)--Embedding-binary-data-in-your-psx-executable), you have to add the tim file to your `SRCS`, 
then add these conversion instructions in your makefile :
```mk
%.o: %.tim
  $(PREFIX)-objcopy -I binary --set-section-alignment .data=4 --rename-section .data=.rodata,alloc,load,readonly,data,contents -O elf32-tradlittlemips -B mips $< $@
```

To access the data in code, use the following declarations :

```
extern unsigned long _binary_output_tim_start[];
extern unsigned long _binary_output_tim_end[];
extern unsigned long _binary_output_tim_length;
```

### Loading the image to vram

Using a nice function written by Lameguy64 ;

```c
extern unsigned long _binary_fnt_tim_start[];
extern unsigned long _binary_fnt_tim_end[];
extern unsigned long _binary_fnt_tim_length;

// Loading an image to vram. See https://github.com/ABelliqueux/nolibgs_hello_worlds/blob/main/hello_sprt/hello_sprt.c#L42
TIM_IMAGE fontface;
void LoadTexture(u_long * tim, TIM_IMAGE * tparam){     
        OpenTIM(tim);                                   
        ReadTIM(tparam);                                
        LoadImage(tparam->prect, tparam->paddr);        
        DrawSync(0);                                    
        if (tparam->mode & 0x8){ // check 4th bit       
            LoadImage(tparam->crect, tparam->caddr);    
            DrawSync(0);                                
    }
}
```

Then in `main()`, call it once after init:

```c
LoadTexture(_binary_fnt_tim_start, &fontface);
```

## Full code 

A full example is available here : [https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_font](https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_font)  

## Doc & Sources

- `FntLoad()` ref : [http://psx.arthus.net/sdk/Psy-Q/DOCS/FileFormat47.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/LibRef47.pdf), p.292  
- Nolibgs wiki TIM page : [https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/TIM](https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/TIM)  