#!/usr/bin/env bash

get_tmux_option() {
  local option="$1"
  local default_value="$2"
  local option_value="$(tmux show-option -gqv "$option")"
  if [ -z "$option_value" ]; then
    echo "$default_value"
  else
    echo "$option_value"
  fi
}

is_osx() {
  [ "$(uname)" == "Darwin" ]
}

is_linux() {
  [ "$(uname)" == "Linux" ]
}

command_exists() {
  local command="$1"
  type "$command" >/dev/null 2>&1
}

print_current_property() {
  if is_linux; then
    spotifycli "$@"
  else
    echo "tmux-plugin-spotify works only on Linux"
  fi
}
