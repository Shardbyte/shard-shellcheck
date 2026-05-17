<!--
###########################
#                         #
#  Saint @ Shardbyte.com  #
#                         #
###########################
# Author: Shardbyte (Saint)
-->

<div align="center">
  <img src="https://raw.githubusercontent.com/Shardbyte/Shardbyte/main/img/logo-shardbyte-master-light.webp" alt="Shardbyte Logo" width="100"/>

  # ShellCheck Action

  **GitHub Action for [ShellCheck](https://www.shellcheck.net/). Supports Linux and macOS on x86_64 and ARM64.**

  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/Shardbyte/shard-shellcheck/graphs/commit-activity)
</div>

---

## Basic Usage

```yaml
on:
  push:
    branches:
      - main
  pull_request:

permissions:
  contents: read

jobs:
  shellcheck:
    name: ShellCheck
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
      - uses: Shardbyte/shard-shellcheck@v1.0.0
```

---

## Inputs

| Input              | Default  | Description                                                       |
|--------------------|----------|-------------------------------------------------------------------|
| `version`          | `stable` | ShellCheck version to download. Any tag from the [ShellCheck releases](https://github.com/koalaman/shellcheck/tags). |
| `severity`         | _(all)_  | Minimum severity to fail on: `error`, `warning`, `info`, `style` |
| `format`           | `gcc`    | Output format: `checkstyle`, `diff`, `gcc`, `json`, `json1`, `quiet`, `tty` |
| `scandir`          | `.`      | Directory to search for shell scripts                             |
| `check_together`   | _(off)_  | Run ShellCheck on all found files in a single invocation          |
| `ignore_paths`     | _(none)_ | Space-separated paths to exclude                                  |
| `ignore_names`     | _(none)_ | Space-separated filenames to exclude                              |
| `additional_files` | _(none)_ | Space-separated extra filenames to include (e.g. `run finish`)    |

## Outputs

| Output    | Description                        |
|-----------|------------------------------------|
| `files`   | Newline-separated list of shell scripts found and checked |
| `options` | The ShellCheck options used        |

---

## Examples

### Pass ShellCheck flags via environment variable

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        env:
          SHELLCHECK_OPTS: -e SC2059 -e SC2034 -e SC1090
```

### Fail only on errors (ignore warnings and style)

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          severity: error
```

### Ignore specific paths and filenames

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          ignore_paths: >-
            vendor
            third_party
          ignore_names: legacy.sh
```

### Scan a specific directory only

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          scandir: ./scripts
```

### Check all files in a single invocation (resolves SC1090/SC1091 source errors)

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          check_together: 'yes'
```

### Scan for additional non-standard filenames

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          additional_files: 'run finish'
```

### Pin a specific ShellCheck version

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          version: v0.10.0
```

### Use tty output format for richer log output

```yaml
      - uses: Shardbyte/shard-shellcheck@v1.0.0
        with:
          format: tty
```

---

## Platform Support

| OS      | x86_64 | ARM64 |
|---------|--------|-------|
| Linux   | ✅     | ✅    |
| macOS   | ✅     | ✅    |

---

<div align="center">
  <sub>Built with ❤️ by <a href="https://github.com/Shardbyte">Shardbyte</a></sub>
</div>
