# OVL : PSX overlays

## What is an overlay

From the [wikipedia](https://en.wikipedia.org/wiki/Overlay_(programming)) article :

>  overlaying means "the process of transferring a block of program code or other data into main memory, replacing what is already stored"

Overlays allow you to separate your code into "blocks of program" that are part of your application, but that you don't necessarily need at all time.  
You can use a setup that will load these "blocks" as they are needed. This means your main executable is smaller, and you have more memory available since unneeded data is not bloating it.  
These "blocks" are binary files that you store as any other file on the medium available to you, in our case, the PSX CD-rom (or a [computer connected to the PSX](https://github.com/JonathanDotCel/pcdrv_testapp_psyq)).  
Therefore, you'd load an overlay file from CD as [any other file](https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_cd), making sure to load it to an address that is known to be the load address of all overlays.  

## Example study

Let's study the ['hello_overlay_exec'](https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_ovl_exec) example structure.

This example uses overlays that each contains a specific routine. The main program allows you to load an overlay, and call that routine.  
In this setup, each overlay acts as an executable that you would launch as a child process.

Let's look at the files in the repo that are related to the overlay setup (ommitting irrelevant files):

```
nolibgs_hello_worlds/hello_ovl_exec
.
├── common.h
├── hello_ovl_exec.c
├── hello_ovl_world
│   └── ...
├── hello_poly
│   └── ...
├── hello_tile
│   └── ...
├── isoconfig.xml 
├── Makefile
├── overlay.ld
├── README.md
└── system.cnf
```

The important files here are :

  * isoconfig.xml ; this is the config file for the psx iso generation. We have to include the overlay files in the CD's filesystem so that we can load them.
  * overlay.ld ; this is the linker escript that will specify which source files should be put in overlay files.
  * Makefile ; the makefile has to make mention of the linker script, and the various source files.

### mkpsxiso configuration file : isoconfig.xml

L.87 to 91 are the lines to check here :

```xml
    <file name="system.cnf" type="data" source="system.cnf"/>
    <file name="SCES_313.37"   type="data" source="hello_ovl_exec.ps-exe"/>
    <file name="POLY.OVL"   type="data" source="Overlay.ovly0"/>
    <file name="TILE.OVL"   type="data" source="Overlay.ovly1"/>
    <file name="HELLO.OVL"   type="data" source="Overlay.ovly2"/>
```

If you have used [`mkpsxiso`](https://github.com/Lameguy64/mkpsxiso) before, you'll notice the regular files every PSX disc should have ; 'system.cnf' and a PSX executable. Check [LibOver47.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/LibOver47.pdf), p.23 if you want more informations on the `system.cnf` file.   

You can also notice 3 files, the name of which end with `.ovlyX`. These are overlays ! They are defined in the linker script, so let's look at that now.  

### linker script : overlay.ld

In this file that can seem a bit complicated at first, we're able to specify which binary files should be included in which overlay file.  

We're first defining the heap's base address `__heap_base` in memory as the end of the largest overlay file end address, as we don't want the PSX to write stuff at a memory address we could overwrite when loading a file.  

![You wouldn't overwrite the heap with an overlay](https://wiki.arthus.net/assets/wou.gif)  

We're also defining the memory address `load_all_overlays_here` where every overlay file should be loaded at runtime.  

Then, defining an overlay file, its extension and its content is done using the `KEEP()` [directive](https://home.cs.colorado.edu/~main/cs1300/doc/gnu/ld_3.html#SEC25) in an 'Input section'.  

```ld
__heap_base = MAX(__ovly0_end, __ovly2_end); /* Define heap starting adress as largest overlay end address. */

SECTIONS {		
	OVERLAY __bss_end : NOCROSSREFS SUBALIGN(4)
	{
		.ovlyload
        {
            load_all_overlays_here = .;     /* Define load adress for every overlay. */
        }
        .ovly0                                  /* Define what goes into the overlay file 'Overlay.ovly0'. */
		{			                            /* Here, all *.o files generated in 'hello_poly/' will end in 'Overlay.ovly0' */
			KEEP(hello_poly/*.o(.text))
			__ovly0_ctor = .;
			KEEP(hello_poly/*.o(.text.startup._GLOBAL__*))
			KEEP(hello_poly/*.o(.text.*))
			KEEP(hello_poly/*.o(.rodata*))
			KEEP(hello_poly/*.o(.sdata*))
			KEEP(hello_poly/*.o(.data*))
			KEEP(hello_poly/*.o(.sbss*))
			KEEP(hello_poly/*.o(.bss*))
			KEEP(hello_poly/*.o(.ctors))
			
			. = ALIGN(4);
			__ovly0_end = .;			        /* Define this address as '__ovly0_end' for determining '__heap_base' above. */
		}

        .ovly1                                  /* The same happens for .ovly1 and .ovly2 */
		{
            [...]
		}
	.ovly2
		{
            [...]
		}
	}
}
```

## Makefile

Finally, we have to reference those files in the Makefile and define them as overlays :

```mk
# Set linker script, and sections defined in the script.
OVERLAYSCRIPT  ?= overlay.ld
OVERLAYSECTION ?= .ovly0 .ovly1 .ovly2

# Add the overlay source files to SRCS as we would normally do in a non-overlayed setup.
SRCS = hello_ovl_exec.c \
hello_ovl_world/hello_ovl_world.c \
hello_tile/hello_ovl_tile.c \
hello_poly/hello_ovl_poly.c \
```

## At runtime

In order to access the symbols defined in the linker script, you have to declare them as `extern`s. You should only need `load_all_overlays_here`, but you can also declare `__heap_base` and `__ovlyX_end` if you need them.

```c
extern u_long load_all_overlays_here;
extern u_long __heap_base;
extern u_long __ovly0_end;
```

You can then use `load_all_overlays_here`'s address to load and overlay file to from the cd with [`CdReadFile()`](https://github.com/ABelliqueux/nolibgs_hello_worlds/blob/main/hello_ovl_exec/hello_ovl_exec.c#L118) or [`CdRead()`](https://github.com/ABelliqueux/nolibgs_hello_worlds/blob/main/hello_cd/hello_cd.c#L98) ;  

```c
CdReadFile("\\HELLO.OVL;1", &load_all_overlays_here, 0);
```

## Example code

[https://github.com/JaberwockySeamonstah/PSXOverlayExample](https://github.com/JaberwockySeamonstah/PSXOverlayExample)
[https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_ovl_exec](https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_ovl_exec)
[https://github.com/ABelliqueux/ovl-upload](https://github.com/ABelliqueux/ovl-upload)
