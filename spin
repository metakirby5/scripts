#!/usr/bin/env bash
# Pipe through this to keep output to one line and add a spinner.

# Loading spinner: https://unix.stackexchange.com/a/225183
i=1
sp="/-\|"

# https://stackoverflow.com/a/42284788
while IFS= read -r line; do
  cols="$(tput cols)"
  trimmed="${line:0:$(( cols - 2 ))}"

  # LF, whitespace, LF, content
  printf '\r%s\r%s%s' "  ${prev//?/ }" "${sp:i++%${#sp}:1} " "$trimmed"
  prev="$trimmed"
done
echo
