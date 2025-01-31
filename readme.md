# Assortment of handy commands

> Uses the amazing command line parser generator for bash: <https://github.com/ko1nksm/getoptions>.

## Example

The `ff` command is a wrapper around `ffprobe` and `ffmpeg` to slice and dice video streams.

> See [ff](ff) for the particulars.

```bash
Usage: ff [global options...] [command] [options...] [arguments...]
Options:
  -v, --verbose               takes no arguments
  -c, --command NUMBER        takes one argument
  -c, --camera[=CAMERA]       takes one optional argument
  -h, --help
      --version
```
