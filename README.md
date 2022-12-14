# GitHub Action for SwiftLint

This Action executes [SwiftLint](https://github.com/realm/SwiftLint) and generates annotations from SwiftLint Violations.

## Usage

An example workflow(`.github/workflows/swiftlint.yml`) to executing SwiftLint follows:

```yaml
name: SwiftLint

on:
  pull_request:
    paths:
      - '.github/workflows/swiftlint.yml'
      - '.swiftlint.yml'
      - '**/*.swift'

jobs:
  SwiftLint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: sinoru/actions-setup-swift@v2
        with:
          swift-version: '5.6.1'
      - name: GitHub Actions for SwiftLint
        uses: sinoru/actions-swiftlint@v6
      - name: GitHub Actions for SwiftLint with --strict
        uses: sinoru/actions-swiftlint@v6
        with:
          swiftlint-args: --strict
      - name: GitHub Actions for SwiftLint (Only files changed in the PR)
        uses: sinoru/actions-swiftlint@v6
        env:
          DIFF_BASE: ${{ github.base_ref }}
      - name: GitHub Actions for SwiftLint (Different working directory)
        uses: sinoru/actions-swiftlint@v6
        with:
          working-directory: Sources
```
