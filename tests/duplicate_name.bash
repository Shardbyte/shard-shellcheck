#!/bin/bash
set -euo pipefail

# Root-level fixture - distinct from tests/ignore_some/duplicate_name.bash
# Verifies per-path exclusion works without excluding same-named files elsewhere

log() {
    printf '[%s] %s\n' "$(date -u +%H:%M:%S)" "$*"
}

log "root duplicate_name fixture"
