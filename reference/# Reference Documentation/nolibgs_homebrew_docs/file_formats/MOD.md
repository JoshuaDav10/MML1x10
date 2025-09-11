# MOD playback

## Code example 

https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_mod

## Preparing sound samples

Samples should be 11025Hz mono wavs :

```bash
ffmpeg -i input.wav -ar 11025 -ac 1 output.wav
```

## Adding sound effects (samples) to a mod file

Use [OpenMpt](https://openmpt.org/) to edit an existing mod file or create a new one.  

1. Select 'MOD (ProTracker) 4 channels' as file format.
2. In the left panel, double click the sample of your choice to open it.
3. In the right panel, navigate to the 'Samples' tab, then click the folder icon to import a mono, 11025Hz WAV file.
4. After importing your samples, you can save the MOD file and proceed to convert it to HIT.

![OpenMPT Add sample](https://wiki.arthus.net/assets/openmpt_add_samples.gif)

## MOD > HIT conversion

Use `MODCONV.EXE`, available in hitmen's [hit-hitmod15.zip](http://hitmen.c02.at/files/releases/psx/hit-hitmod15.zip), with dosbox.

```cmd
MODCONV.EXE FILE.MOD
```

![Dosbox MODCONV](https://wiki.arthus.net/assets/modconv-dosbox.png)

### One-liner

You can run a DOS command through dosbox from the CLI with :

```bash
dosbox -c "C:\PATH\TO\MODCONV.EXE INPUT.MOD" -c "EXIT"
```

The generated HIT file will be in the same directory as the MOD file.

## Playing a sample

Using NicolasNoble's [modplayer](https://github.com/grumpycoders/pcsx-redux/tree/main/src/mips/modplayer), you can use the [`MOD_PlayNote()`](https://github.com/grumpycoders/pcsx-redux/blob/main/src/mips/modplayer/modplayer.h#L147) function.

```c
MOD_PlayNote( voiceID, sampleID, note, volume);
```
  * *voiceID* is the PSX spu voice to use for playback; Range 0-23
  * *sampleID* is the MOD's sample ID. That's the sample number in openMPT minus 1 as counting starts from 0. 
  * *note* or pitch. That's the note you want to play your sample on. Range 0-35
  * *volume* is the playback volume of your sample. Range min-max 0-63

### PSX spu voices

MODs use 4 channels, which are mapped to the four first voices of the SPU by default. When calling `MOD_PlayNote()`, you should use voices > 4.
  
See [here](https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_mod) for a complete example.

## Sources & Docs

Nicolas Noble's modplayer : [https://github.com/grumpycoders/pcsx-redux/tree/main/src/mips/modplayer](https://github.com/grumpycoders/pcsx-redux/tree/main/src/mips/modplayer)  
MOD format specification : [http://www.aes.id.au/modformat.html](http://www.aes.id.au/modformat.html)  
Hitmen's original modplayer : [http://hitmen.c02.at/files/releases/psx/hit-asm-mod.zip](http://hitmen.c02.at/files/releases/psx/hit-asm-mod.zip)  
Hitmen's MODCONV utility : [http://hitmen.c02.at/files/releases/psx/hit-hitmod15.zip](http://hitmen.c02.at/files/releases/psx/hit-hitmod15.zip)