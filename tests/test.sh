#!/usr/bin/sh
set -eu

# Resolve the canonical path of a file without relying on readlink -f
realpath_portable() {
    _rp_dir="$(cd "$(dirname "$1")" && pwd)"
    _rp_base="$(basename "$1")"
    printf '%s/%s\n' "$_rp_dir" "$_rp_base"
}

realpath_portable "$@"
