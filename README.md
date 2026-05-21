# mediatools

Small local scripts for media archive maintenance.

## Process

Default media file permissions:

```bash
chmod 644 *
```

Default media file ownership:

```bash
sudo chown "$USER:$USER" *
```

Recommended workflow:

1. Use **media-normalize** to normalize media metadata and give files consistent unique names.
2. Use **media-sanity-check** to check whether media files are still readable/decodable.
3. Use **video-reencode** to attempt to recover or normalize problematic video files.
4. Use **jpg-resize** to resize JPEG files proportionally.
5. Use **diff-files-by-name** to compare two directories by filename and copy files that exist only on one side.

## Tools

### `media-normalize`

Normalize supported media files in the current directory.

It reads the best available creation date, normalizes useful metadata, and renames files using:

```text
PREFIXyy_mmdd_HHMMSS_size.EXT
```

Example:

```bash
media-normalize PHONE_CV
```

### `media-sanity-check`

Check whether media files in the current directory are readable/decodable.

Modes:

```bash
media-sanity-check fast
media-sanity-check normal
media-sanity-check deep
```

`fast` is quick.
`normal` is the recommended archive check.
`deep` is stricter but can be slow, especially with videos.

### `video-reencode`

Attempt to re-encode problematic video files into fresh playable files.

Example:

```bash
video-reencode broken.mov another.mp4
```

Outputs are written to `/tmp/reencode`.

### `jpg-resize`

Resize one or more JPEG files proportionally.

Examples:

```bash
jpg-resize longest 1080 image.jpg
jpg-resize width 2000 *.jpg
jpg-resize height 1200 image1.jpg image2.jpg
```

Output example:

```text
longest1080_image.jpg
```

### `diff-files-by-name`

Compare two directories by filename only and copy files that exist only in one directory.

Example:

```bash
diff-files-by-name dir1 dir2
```

This does not compare file contents or hashes.

## Useful commands

List each type of file in the current directory:

```bash
find . -type f | sed -n 's/.*\.\([^./]*\)$/\1/p' | sort -u
```
