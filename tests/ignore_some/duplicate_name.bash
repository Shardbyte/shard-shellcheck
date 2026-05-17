#!/bin/bash
set -euo pipefail

# Excluded by ignore_paths: ./tests/ignore_some/duplicate_name.bash
# Verifies that a specific file path can be excluded without affecting
# the same-named file at tests/duplicate_name.bash

ignored_duplicate() {
    printf 'This file should not be checked\n'
}

ignored_duplicate
