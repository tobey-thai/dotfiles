#! /bin/bash

link() {  # usage: link <target> <dest>
  if [ -L "$2" ] && [ "$(readlink "$2")" = "$1" ]; then
    return 0
  elif [ -e "$2" ] || [ -L "$2" ]; then
    echo "ERROR: $2 exists and is not the expected link" >&2
    return 1
  fi
  ln -s "$1" "$2"
}

# Prepend an [include] of <path> to <gitconfig>; no-op if already included.
gitconfig_prepend_include() {  # usage: gitconfig_prepend_include <gitconfig> <path>
  local f="$1" p="$2" tmp
  git config --file "$f" --get-all include.path 2>/dev/null | grep -qxF "$p" && return 0
  tmp="$(mktemp)" || return 1
  printf '[include]\n\tpath = %s\n' "$p" > "$tmp"
  if [ -f "$f" ]; then cat "$f" >> "$tmp"; fi
  cat "$tmp" > "$f"; rm -f "$tmp"
}

if [ "${BASH_SOURCE[0]}" = "$0" ]; then
  set -e
  here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  link "$here/git/gitconfig"       ~/.gitconfig.common
  link "$here/vim/vimrc"           ~/.vimrc
  link "$here/tmux/tmux.conf"      ~/.tmux.conf
  gitconfig_prepend_include ~/.gitconfig ./.gitconfig.common
fi
