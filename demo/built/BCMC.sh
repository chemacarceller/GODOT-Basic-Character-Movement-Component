#!/bin/sh
echo -ne '\033c\033]0;BCMC-Demo\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/BCMC.run" "$@"
