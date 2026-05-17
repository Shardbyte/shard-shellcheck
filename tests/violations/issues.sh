#!/usr/bin/sh
# Intentional ShellCheck violations - used by violations.yml to verify the
# action correctly exits non-zero when issues are found.

# SC2086: word splitting and globbing on unquoted variable
greet() {
    name=$1
    echo Hello $name
}

# SC2181: indirect $? check instead of direct command test
check_file() {
    ls "$1" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "not found"
    fi
}

greet "${1:-world}"
check_file "${2:-/tmp}"
