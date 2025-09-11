# CD file loading

## Code example 

https://github.com/ABelliqueux/nolibgs_hello_worlds/tree/main/hello_cd  

##  Creating the disk image

```bash
mkpsxiso -y isoconfig.xml
```

### Adding data to the CD

In `isoconfig.xml`, in the data track's `directory_tree` section, use this syntax :

```xml
<file name="HELO.DAT"   type="data" source="theFile.dat"/>
```

See https://github.com/Lameguy64/mkpsxiso/blob/master/examples/example.xml for more details.
