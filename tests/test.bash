#!/bin/bash
set -euo pipefail

# Return 0 only if every argument is a non-empty string
all_set() {
    local arg
    for arg in "$@"; do
        [[ -n "${arg}" ]] || return 1
    done
    return 0
}

all_set "$@"
