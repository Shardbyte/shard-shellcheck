#!/usr/bin/sh
set -eu

# Excluded when ignore_names: ignore_single_file.sh is set
greet() {
    printf 'Hello, %s\n' "${1:-world}"
}

greet "$@"
