## DOSBOX configuration file 

Some PsyQ utilities will only work with dosbox.  
In order to make things easy, let's add some commands that will autoexec on startup :

In 'dosbox.conf' :

```bash
[autoexec]
# Lines in this section will be run at startup.
# You can put your MOUNT lines here.

# Set PATH to Psyq executables 
SET PATH=Z:\;C:\PSYQ\BIN;C:\PSYQ\PSX\BIN
# Mount some folders as drives
MOUNT C ~/.wine/drive_c
MOUNT D ~/build/PSYQ_Examples
# Change to the PsyQ folder
C:
cd psyq\bin
# Clear screen
CLS
```

## Executing a DOS program from the CLI

We shouldn't even need to see that black DOS window anymore as we can execute any program that's in the PATH from CLI with :

```bash
dosbox -c "PROGRAM.EXE some arguments" -c "EXIT"
``` 

and be done with it !

