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

## Mac

- [mac-pkg-uninstall](#uninstall-packages)
- [mac-cleanup](mac-cleanup)

### Uninstall Package(s)

```bash
~ ➜ mac-pkg-uninstall --help
Usage: mac-pkg-uninstall [options...] search-string

Options:
  -a, --all                   uninstall all matching pkgs
  -h, --help
      --version
```

#### Examples

Uninstall a single package named "ngc":

```bash
~ ➜ mac-pkg-uninstall ngc
Found 1 matching pkgs...
Uninstall ngc (installed: Tue Jan  7 19:21:07 CST 2025)}? [y/n]: y
~ 1m18s ➜
```

Uninstall all packages matching "node":

```bash
~ 1m18s ➜ mac-pkg-uninstall ".*teamviewer.*" --all
Uninstalling com.teamviewer.AuthorizationResources (installed: Wed Dec 31 18:00:00 CST 1969
Uninstalling com.teamviewer.teamviewerUninstallerHelper (installed: Wed Dec 31 18:00:00 CST 1969
Uninstalling com.teamviewer.teamviewerUninstallerApp (installed: Wed Dec 31 18:00:00 CST 1969
Uninstalling com.teamviewer.teamviewer (installed: Wed Dec 31 18:00:00 CST 1969
Uninstalling com.teamviewer.teamviewerPriviledgedHelper (installed: Wed Dec 31 18:00:00 CST 1969
Uninstalling com.teamviewer.remoteaudiodriver (installed: Wed Dec 31 18:00:00 CST 1969
Uninstalling com.teamviewer.AuthorizationPlugin (installed: Wed Dec 31 18:00:00 CST 1969

Uninstall all matching pkgs? [y/n]: y

Uninstalling com.teamviewer.AuthorizationResources (installed: Fri Jan 31 21:23:40 CST 2025
Uninstalling com.teamviewer.teamviewerUninstallerHelper (installed: Fri Jan 31 21:23:40 CST 2025
Uninstalling com.teamviewer.teamviewerUninstallerApp (installed: Fri Jan 31 21:23:40 CST 2025
Uninstalling com.teamviewer.teamviewer (installed: Fri Jan 31 21:23:40 CST 2025
Uninstalling com.teamviewer.teamviewerPriviledgedHelper (installed: Fri Jan 31 21:23:40 CST 2025
Uninstalling com.teamviewer.remoteaudiodriver (installed: Fri Jan 31 21:23:40 CST 2025
Uninstalling com.teamviewer.AuthorizationPlugin (installed: Fri Jan 31 21:23:40 CST 2025
```
