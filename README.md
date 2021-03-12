# minidocks-ghostscript-compres-pdf

The following example tries to compress a pdf file with the tool [ghostscript](https://www.ghostscript.com/).

The example does not require to install [ghostscript](https://www.ghostscript.com/), instead uses [docker](https://www.docker.com/) with the image [minidocks/ghostscript](https://hub.docker.com/r/minidocks/ghostscript).


## Command
You can modify the command on `run.sh`
```
docker run --rm -v $(pwd):/app \
-w /app minidocks/ghostscript \
-sDEVICE=pdfwrite \
-dCompatibilityLevel=1.4 \
-dPDFSETTINGS=/ebook -dNOPAUSE \
-dQUIET -dBATCH \
-sOutputFile=Computer_science_compressed.pdf Computer_science.pdf
```

Please take note on the last line, you can modify to change input/output file.

- output file: `-sOutputFile=Computer_science_compressed.pdf`

- input file: `Computer_science.pdf` (included in the repository)

## Execute 
- On console: `./run.sh`
- ..Or Copy the command from `./run.sh` and paste it in the terminal

## Results
|Size|File|
|-|-|
|1.2M | Computer_science.pdf|
|655K | Computer_science_compressed.pdf|


## Docker commands
```
docker run --rm -v $(pwd):/app \
-w /app minidocks/ghostscript \
```
- `--rm ` deletes the images after the execution
- `-v $(pwd):/app` mount the current directory on the app folder (container), this command only works in MacOs/Linux operative systems, for windows you can check [stackoverflow/mount-docker-on-windows-10](https://stackoverflow.com/questions/41485217/mount-current-directory-as-a-volume-in-docker-on-windows-10)
- `-w /app` uses the `app` folder as workdirectory


## Credits
- [documentsnap/reduce-pdf-file-size-ghostscript](https://www.documentsnap.com/reduce-pdf-file-size-ghostscript/)
- [ghostscript](https://hub.docker.com/r/minidocks/ghostscript)