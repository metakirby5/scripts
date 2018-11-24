#!/usr/bin/env bash
# Scrapes images from a 4chan thread.
#
# Author: metakirby5

wget -nd -nc -q --show-progress -e robots=off \
  -rHD i.4cdn.org -A '*.*' -R '*s.*,*.tmp' "$@"
