# XA file format

## Code example 

https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_xa  
https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_multi_xa  

## Needed tools

### Mkpsxiso

You need [mkpsxiso](https://github.com/Lameguy64/mkpsxiso) in your $PATH to generate a PSX disk image.

### Candy SDK tools

You also need [`psxavenc` and `xainterleave`](https://github.com/ABelliqueux/candyk-psx/tree/master/toolsrc/).  

Windows 32bits pre-built binaries are available here :  [http://psx.arthus.net/sdk/candyk-psx-tools-win.zip](http://psx.arthus.net/sdk/candyk-psx-tools-win.zip)  

## WAV creation

Use ffmpeg to create a 16-bit ADPCM mono WAV file - change `-ac` and `-ar` to reduce filesize (and quality)

```bash
$ ffmpeg -i input.mp3 -acodec pcm_s16le -ac 2 -ar 44100 output.wav
```

You can use Audacity to edit sound, but as mentionned in [xatut.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/XATUT.pdf), p17 :

> At this point it is worth mentioning that certain sound editing packages add some custom information at
> the end of a .WAV file such as author and package used to create the file. This is normally not a
> problem as the .WAV header contains details of the length of the data. However MovConv and
> MovPack do not use the header information in this way, and so will convert .WAV files to .XA using
> all the data after the .WAV header up to the end of the file. This can lead too .XA files with audible
> noise such as clicks or pops where the custom information has been converted to sound data at the end
> of the sample.

### Generate interleaved XA file

```bash
psxavenc -f 37800 -t xa -b 4 -c 2 -F 1 -C 0 "../hello_cdda/audio/beach.wav" "xa/beach.xa"
psxavenc -f 37800 -t xa -b 4 -c 2 -F 1 -C 0 "../hello_cdda/audiofunk.wav" "xa/funk.xa"
xainterleave 1 xa/interleave4.txt xa/inter4.xa
xainterleave 1 xa/interleave8.txt xa/inter8.xa
```

Alternatively, you can use the windows tool [`MC32.EXE`](https://psx.arthus.net/tools/pimp-psx.zip) to interleave several PSX media files. See [here](https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/STR#via-the-graphic-interface) for more detail on its usage.

## Encoding to XA 

You can use a modified version of [`psxavenc`](https://github.com/ABelliqueux/candyk-psx/tree/master/toolsrc/psxavenc) to convert your audio file to a 2336 bytes XA file :

```bash
./psxavenc -f 37800 -t xa -b 4 -c 2 -F 1 -C 1 "input.wav" "output.xa"
```

You can read it back with `XAPLAY.EXE`, that's in `psyq/bin/XAplay`.

### PSXavenc usage

```
./psxavenc 
Usage: psxavenc [-f freq] [-b bitdepth] [-c channels] [-F num] [-C num] [-t xa|xacd|spu|str2] <in> <out>

    -f freq          Use specified frequency
    -t format        Use specified output type:
                       xa     [A.] .xa 2336-byte sectors
                       xacd   [A.] .xa 2352-byte sectors
                       spu    [A.] raw SPU-ADPCM data
                       str2   [AV] v2 .str video 2352-byte sectors
    -b bitdepth      Use specified bit depth (only 4 bits supported)
    -c channels      Use specified channel count (1 or 2)
    -F num           [.xa] Set the file number to num (0-255)
    -C num           [.xa] Set the channel number to num (0-31)
```

## Interleaving XA files

You can use [`MC32.EXE`](https://psx.arthus.net/tools/pimp-psx.zip) or [`xainterleave`](https://github.com/ABelliqueux/candyk-psx/tree/master/toolsrc/xainterleave) to interleave several PSX media files.  

See here for more details : https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_multi_xa  

## Interleaving and cd-rom speed

The PSX CD-rom speed for XA playbakc is dependent on the number of interleavde channels in the XA file.

If using 4 channels, you need to use cd rom speed x1.  

If using 8 channels, you need to use cd rom speed x2.  

Setting the CD-rom speed in PsyQ is accomplished with `CDcontrol()` :

```c
// Set 1x speed
param[0] = CdlModeRT|CdlModeSF|CdlModeSize1;
CdControlB(CdlSetmode, param, 0);
// Set 2x speed using CdlModeSpeed flag
param[0] = CdlModeSpeed|CdlModeRT|CdlModeSF|CdlModeSize1;
CdControlB(CdlSetmode, param, 0);
```

See [http://psx.arthus.net/sdk/Psy-Q/DOCS/LibRef47.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/LibRef47.pdf), p.677 for `CDcontrol()` 's documentation.

## MC32 usage

You can read the full manual here : [http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf), p.14 to 58  

`mc32.exe` can also be used from the command line with scripts. See here for more details ; [https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/STR#via-the-command-line](https://github.com/ABelliqueux/nolibgs_hello_worlds/wiki/STR#via-the-command-line)  

## xainterleave usage

`xainterleave <mode> <in.txt> <out.raw>`

`mode` can be 0 for full raw sectors or 1 for just XA (divisible by 2336)

`in.txt` is a manifest txt file as seen [here](https://github.com/ABelliqueux/nolibgs_hello_worlds/blob/main/hello_xa/xa/interleave4.txt)

Example for 1 music file, to be played at 1x CD speed (4 channels):

```
1 xa test.xa 1 0
1 null
1 null
1 null
```

Add 4 more lines for 2x cd speed (8 channels), i.e :

```
1 xa test.xa 1 0
1 null
1 null
1 null
1 null
1 null
1 null
1 null
```

where the content of each line is :

```
   1     xa  menu.xa        1                          0  
sectors type file    xa_file number (0-255) xa_channel number (0-31)
```

The format seems to correspond to the [entry_t struct](https://github.com/ABelliqueux/candyk-psx/blob/db71929903cc09398f5efc23973f9e136d123bbb/toolsrc/xainterleave/xainterleave.c#L35).

## Empty manifest ?

The [laconic error](https://github.com/ABelliqueux/candyk-psx/blob/master/toolsrc/xainterleave/xainterleave.c#L107) message you can get if something is amiss in your manifest file is not very helpful.  
**If you encounter it, check the path to your xa files in the manifest file is correct** e.g :
Using :  
```
1 xa bar/foo.xa 1 0
```  
instead of :  
```
1 xa foo.xa 1 0
```  
can result in an `Empty manifest ?` error message.  

## mkpsxiso

You can use the following syntax to include your XA file in the CD image :

```xml
<file name="mymusic1.xa" type="xa" source="mymusic1.xa"/>
```

See here for more details : https://github.com/Lameguy64/mkpsxiso/blob/c44b78e37bbc115591717ac4dd534af6db499ea4/examples/example.xml#L85

## PsyQ XA Tools

[XAPLAY.EXE](https://docs.google.com/uc?export=download&confirm=G9cM&id=0B_GAaDjR83rLZGVaZ2pvV2tjSVE) : Single channel XA playback  
[XATOOL.EXE](http://psx.arthus.net/code/XA/xatut.zip) : XA structure inspector  
[MC32.EXE](https://psx.arthus.net/tools/pimp-psx.zip)   : Converts WAV > XA > Interleaved XA  

## More

MC32 manual has lots of information about the various encoding/interleaving settings : [http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf), p.14 to 58

XA tutorial : http://psx.arthus.net/code/XA/XATUT.pdf  

Full XAtut archive : http://psx.arthus.net/code/XA/xatut.zip  - https://web.archive.org/web/20060316213726/http://dev.paradogs.com/bin/docs/xatut.zip

XA ADPCM documentation : http://psx.arthus.net/code/XA/XA%20ADPCM%20documentation.txt  

https://psx-spx.consoledev.net/cdromdrive/#cdrom-xa-audio-adpcm-compression  

PsyQ XA player example : `psyq/addons/scee/CD/XAPLAYER`

XA SCEE Technical note - July 1998 : http://psx.arthus.net/sdk/Psy-Q/DOCS/CONF/SCEE/98July/xa_sound.pdf

PSX audio tools : https://forum.xentax.com/viewtopic.php?t=10136

PIMP tools : https://psx.arthus.net/tools/pimp-psx.zip

Source : https://discord.com/channels/642647820683444236/663664210525290507/843211084609617930

## Music credits

Track 1 :
Beach Party by Kevin MacLeod
Link: https://incompetech.filmmusic.io/song/3429-beach-party
License: https://filmmusic.io/standard-license  

Track 2:
Funk Game Loop by Kevin MacLeod
Link: https://incompetech.filmmusic.io/song/3787-funk-game-loop
License: https://filmmusic.io/standard-license
