# mediatools

## Processes

Default media files permissions: `$ chmod 644 *`

Default media files: ownership: `$ sudo chown $USER:$USER *`

1. Use **reset-and-rename** to give a consistent and unique name to your files.
2. Use **media-check** to detect corrupted files.
3. Use **video-reencode** to attempt to fix corrupted video files.
4. Use **jpg-resize** to resize jpg files.

## Tools

List each type of file in the current directory: `$ find . -type f | sed -n 's/.*\.\([^./]*\)$/\1/p' | sort -u`
