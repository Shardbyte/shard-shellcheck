#!/bin/bash
set -euo pipefail

# Excluded by the glob pattern **/ignore_some/ignore.bash in ignore_paths
ignored_glob() {
    printf 'This file should not be checked\n'
}

ignored_glob
