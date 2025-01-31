#!/bin/bash
# List all git paths under a directory.
#
# Usage:
#   list_git_paths <directory>
#
# Returns:
#   A list of git paths under the directory.
#
# Example:
#   list_git_paths ~/workspace
#
list_git_paths() {
  find -L "$1" -maxdepth 5 -not -empty -type d -name '.git' -prune -exec dirname {} \;
}
