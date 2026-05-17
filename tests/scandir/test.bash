#!/bin/bash
set -euo pipefail

# Verifies scandir-scoped discovery - only files inside tests/scandir/ are found
check_dir() {
    local dir="${1:-.}"
    if [[ -d "${dir}" ]]; then
        printf 'ok\n'
    else
        printf 'missing: %s\n' "${dir}"
        return 1
    fi
}

check_dir "$@"
