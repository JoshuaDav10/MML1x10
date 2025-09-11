# STR file format

## Code example 

https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_str  

https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_strplay  

## STR playback library

This example will play a fullscreen STR file and is as straightforward as possible.  
If you need more advanced control other the display size and position, see the [STR playback library](https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_str#str-playback-library) section.

@Lameguy64 has spent some time making a STR playback library that's easily included in a project :

> One thing that I find somewhat missing here is a decent piece of code for playing STR video files easily. So, what I did was take the old and messy PsyQ STR player example, clean it up entirely, and finally make it into a cute little c library for easy implementation.

Original post : http://www.psxdev.net/forum/viewtopic.php?t=507  
Original download link : https://www.mediafire.com/download/s61u86sxd1djncy/strplay.7z  
Mirror : http://psx.arthus.net/code/strplay.7z  

## Converting to AVI

### Video dimensions

Note that your video's width and height must be multiples of 16, as the size of a MDEC decoded macroblock is 16x16.

You need `AVI file 320x240, 15 fps, 24-bit color, Stereo 16-bit sound @ 44100 Hz`.  

```
Stream #0:0: Video: rawvideo, bgr24, 320x240, 27763 kb/s, 15 fps, 15 tbr, 15 tbn, 15 tbc
Stream #0:1: Audio: pcm_u8 ([1][0][0][0] / 0x0001), 44100 Hz, 2 channels, u8, 705 kb/s
```

### Video to AVI

Use Virtualdub or ffmpeg+mencoder :  

```bash
ffmpeg -i $INPUT.MKV -vcodec rawvideo -pix_fmt bgr24 -vf scale=320:240,setsar=1:1 -acodec pcm_u8 -ar 44100 -r 15 tmp.avi
mencoder tmp.avi -ovc copy -o $OUTPUT.avi 
```

**If your video is upside down after using these commands, add the `vflip` filter to the ffmpeg's '-vf' section; i.e : `-vf scale=320:240,setsar=1:1,vflip`**

### AVI to STR

#### Via the Graphic interface

Use [`MC32.EXE`](http://psx.arthus.net/tools/pimp-psx.zip) to convert the AVI file to STR using these settings :  

```
Format : Input : Avi (Uncompressed), Output : str (MDEC)
Sound: 37.8 KHz, Stereo;
Easy: Double Speed, 15 fps, 1ch, Leap Sector;
MDEC: version 2
```

![MC32-avi-str](https://wiki.arthus.net/assets/MC32-avi-str.png)

You should now have a new STR file and a new XA file in your folder. You have to interleave them in `MC32` also:

```
Format : Input : str (MDEC), Output: str (MDEC)
Sound: Input: XA , 37.8 KHz, Stereo;
Frame rate: 15 fps, # Channels : 1(150sectors/s), Leap Sector;
CD-ROM speed : Double Speed;
```

![MC32-avi-str-interleave](https://wiki.arthus.net/assets/MC32-avi-str-interleaved.png)

#### Via the command line

`MC32` can be used with a script to avoid using a graphical interface. The script syntax is described in PsyQ's documentation file ['Datavconv.pdf', p.34](http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf).    

Here is an example script to convert a video + audio AVI file to STR+XA, then interleave them;  

```
Avi2strMdecAv(
    path/to/input.avi,     # Input file name
    path/to/output.str,    # Output file name
    x2,                    # CD-ROM speed
    15fps,                 # Frame rate
    1,                     # Number of channels
    2,                     # MDEC version
    FALSE,                 # LeapSector (TRUE if source is video capture (59.94fps), FALSE if CG video (60FPS))
    37.8KHz,               # Frequency of Sound
    Stereo                 # Stereo or Mono
);

MakeAv(
    path/to/input.str,    # Video file name
    strMDEC,              # Video format name
    path/to/input.xa,     # Sound file name
    path/to/output.str,   # Output file name (Sound & video)
    x2,                   # CD-ROM speed
    15fps,                # Frame rate
    1,                    # Number of channels
    FALSE,                # LeapSector (TRUE if source is video capture (59.94fps), FALSE if CG video (60FPS))
    FALSE,                # ver1.98 compatible leap sector
    37.8KHz,              # Frequency of Sound
    Stereo                # Stereo or Mono
);                        
```

Create a file with that content and save it with the `scr` extension; e.g : myscript.scr  

You can then run this script with the following command :

```bash
mc32.exe -s myscript.scr
```

See here for a full reference of the scripting language : [https://psx.arthus.net/sdk/Psy-Q/DOCS/MC32.SCR](https://psx.arthus.net/sdk/Psy-Q/DOCS/MC32.SCR)  

MC32 manual has lots of information about the various encoding/interleaving settings : [http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf), p.14 to 58  

#### MC32.EXE crashes

MC32 doesn't seem to like ffmpeg's AVI files and often crashes when hitting the 'Go' button. In order to prevent crashing, you should re-save the avi file with `mencoder` :

```bash
mencoder file.avi -ovc copy -o file_clean.avi 
```

You can also use `virtualdub` ; open the ffmpeg AVI file in virtualdub, then save it again ; `File > Save as AVI...` or `F7` key, then retry.

### Finding a video's frame count

With `ffmpeg` :

```bash
ffprobe -v error -select_streams v:0 -count_packets -show_entries stream=nb_read_packets -of csv=p=0 VIDEOFILE.AVI
```

Alternatively, open the STR file in `MC32.exe` and look at the bottom left of the window.

### Tools & Refs

MC32 manual: [http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf](http://psx.arthus.net/sdk/Psy-Q/DOCS/Devrefs/Dataconv.pdf), p.14 to 58

MC32 : http://psx.arthus.net/tools/pimp-psx.zip  
STR converter : http://psx.arthus.net/tools/str_converter.rar  

Original PsyQ sample code : 
```
/psyq/psx/sample/scee/CD/MOVIE2
/psyq/addons/cd/MOVIE (same as /psx/sample/cd/MOVIE )
/addons/sound/STREAM/TUTO2.C
```  
Original post : http://www.psxdev.net/forum/viewtopic.php?t=507  
Video to STR conversion tutorial : http://www.psxdev.net/forum/viewtopic.php?f=51&t=277  
MDEC notes : http://psx.arthus.net/sdk/Psy-Q/DOCS/TECHNOTE/mdecnote.pdf  

## Video credits 

The video and song used in this example are by Nina Paley : https://archive.org/details/CopyingIsNotTheft-ScratchTrack1280X720Hdv  
