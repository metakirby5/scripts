#!/usr/bin/env bash

usage() {
  echo "Usage:"
  echo "  pb [-h] [-o] [-u] [-p] [-s SECONDS] [-v VANITY] [FILE]"
  echo
  echo "If FILE is not provided, stdin is used."
  echo
  echo "Options:"
  echo "  -h  help"
  echo "  -o  output url only"
  echo "  -u  shorten url"
  echo "  -p  private"
  echo "  -s  seconds to expire"
  echo "  -v  vanity"
  echo
  exit 1
}

o=
u=
p=
s=
v=
extra=
while getopts 'houps:v:' opt; do
  case $opt in
    o)
      o="?r=1"
      extra="$extra -w %{redirect_url} -o /dev/null"
      ;;
    u)
      u="u"
      ;;
    p)
      extra="$extra -F p=1"
      ;;
    s)
      extra="$extra -F s=$OPTARG"
      ;;
    v)
      v="~$OPTARG"
      ;;
    h|?)
      usage
      ;;
  esac
done

if [ "$u" -a "$v" ]; then
  echo "ERROR: Vanity shortened urls not supported."
  echo
  usage
fi

shift $((OPTIND-1))
curl -sF "c=@${1:--}" "https://ptpb.pw/$u$v$o"$extra
