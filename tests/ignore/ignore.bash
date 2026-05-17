#!/bin/bash
set -euo pipefail

# Lives under tests/ignore/ - excluded by ignore_paths: ignore
ignored_fn() {
    printf 'This file should never be checked\n'
}

ignored_fn
