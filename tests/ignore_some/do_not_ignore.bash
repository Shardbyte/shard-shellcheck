#!/bin/bash
set -euo pipefail

# Lives in ignore_some/ but is NOT listed in ignore_paths - must be checked
active_fn() {
    local value="${1:-default}"
    printf '%s\n' "${value}"
}

active_fn "$@"
