# mediatools

## Processes

Default media files permissions: `$ chmod 644 *`

Default media files: ownership: `$ sudo chown $USER:$USER *`

1. Use **media_rename** to give a consistent and unique name to your files.
2. Use **media_check** to detect corrupted files.
3. Use **video_reencode** to attempt to fix corrupted video files.
4. Use **jpg_resize** to resize jpg files.

## Tools

List each type of file in the current directory: `$ find . -type f | sed -n 's/.*\.\([^./]*\)$/\1/p' | sort -u`
