Made a directory using `mkdir \tmp\y` to store the output files. Copied `data.txt` file to `\tmp\y` .

`data.txt` contains hex-dump, so used `xxd -r data.txt d1` to get the reverted output and stored it in `d1` . Got the type of file of `d1` using `file d1` . It was GNUzip file. Renamed it `d1.gz` using `mv` .

Used `gzip -d d1.gz` to decompress the file. Used `file d1` to know the type of file produced. It is a bzip2 file. Renamed it `d1.bz2`.

Used `bzip2 -d d1.bz2` to decompress the file. Used `file d1` to know the type of file produced. It is a gzip file. Renamed it `d1.gz`.

Used `gzip -d d1.gz` to decompress the file. Used `file d1` to know the type of file produced. It is a tar archive. Renamed it `d1.tar`.

Used `tar -x -f d1.tar` to extract the files. `data5.bin` is the file generated from extraction. Used `file data5.bin` to know the type of file. It is a tar archive. Renamed it `data5.tar`.

Used `tar -x -f data5.tar` to extract the files. `data6.bin` is the file generated from extraction. Used `file data6.bin` to know the type of file. It is a bzip2 file. Renamed it `data6.bz2`.

Used `bzip2 -d data6.bz2` to decompress the file. Used `file data6` to know the type of file produced. It is a tar achive. Renamed it `data6.tar` .

Used `tar -x -f data6.tar` to extract the files. `data8.bin` is the file generated from extraction. Used `file data8.bin` to know the type of file. It is a gzip file. Renamed it `data8.gz`.

Used `gzip -d data8.gz` to decompress the file. Used `file data8` to know the type of file produced. It is an ASCII text file. Used `cat data8` to read the file. The output is:
```
The password is wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw
```

`xxd` is used the encode or decode hex-dump files.
`gzip` is used the encode or decode gzip files that is files in .gz format.
`bzip2` is used the encode or decode bzip2 files that is files in .bz2 format.
`tar` is used to archive or extract single files in .tar format.

Flag: `wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw`
