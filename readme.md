# Assortment of handy commands

> Uses the amazing command line parser generator for bash: <https://github.com/ko1nksm/getoptions>.

| Category  | Command                                     | Description                                           |
| --------- | ------------------------------------------- | ----------------------------------------------------- |
| Git       | [git-clone-open](#clone-and-open-in-editor) | Clone a repo and open it in an editor                 |
| Utilities | [ff-probe](#ffprobe-wrapper)                | Wrapper around `ffprobe` for inspecting video streams |
| MacOS     | [mac-pkg-uninstall](#uninstall-packages)    | Uninstall packages matching a search string           |

## Utilities

### `ffprobe` wrapper

The `ff-probe` command is a wrapper around `ffprobe` for inspecting video streams.

> See [ff-probe](ff-probe) for the particulars.

```bash
Usage: ff-probe [global options...] [command] [options...] [arguments...]
Options:
  -v, --verbose               takes no arguments
  -c, --command NUMBER        takes one argument
  -c, --camera[=CAMERA]       takes one optional argument
  -h, --help
      --version
```

## Git

- [git-clone-open](#clone-and-open-in-editor)

### Clone and open in editor

Clones a repo into a given path and passes the path to the given command such as `cursor` or `vscode`.

```bash
git-clone-open https://github.com/username/repo.git ~/code/repo vim
```

Example:

```bash
➜  .bin git:(main) ✗ git-clone-open git@github.com:mateothegreat/transfer.sh.git ~/workspace/transfer.sh cursor
Cloning git@github.com:mateothegreat/transfer.sh.git into /Users/matthewdavis/workspace/transfer.sh
Cloning into '/Users/matthewdavis/workspace/transfer.sh'...
remote: Enumerating objects: 14099, done.
remote: Counting objects: 100% (89/89), done.
remote: Compressing objects: 100% (45/45), done.
remote: Total 14099 (delta 72), reused 44 (delta 44), pack-reused 14010 (from 3)
Receiving objects: 100% (14099/14099), 34.02 MiB | 31.02 MiB/s, done.
Resolving deltas: 100% (6193/6193), done.

Press Enter to open /Users/matthewdavis/workspace/transfer.sh in cursor...
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
