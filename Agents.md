# Repository Guide

## Overview

`homebrew-playwright` is a Homebrew tap containing a formula for installing the upstream [Playwright](https://playwright.dev/) npm package on macOS and Linux.

This repository is intentionally small: the formula is the source of truth, while `README.md` documents end-user installation and upgrade commands.

## Repository layout

- `Formula/playwright.rb` — Homebrew formula for Playwright.
- `README.md` — installation, upgrade, and license documentation.

## Development workflow

1. Make formula or documentation changes on a feature branch.
2. Keep the formula version, npm tarball URL, and SHA-256 checksum in sync.
3. Run the formula checks locally before submitting a change.
4. Review the diff for unintended changes and update `README.md` when user-facing installation behavior changes.

Useful commands:

```bash
# Check formula style and metadata.
brew audit --formula Formula/playwright.rb

# Check Ruby formatting/style.
brew style Formula/playwright.rb

# Run the formula's test block.
brew test Formula/playwright.rb
```

If Homebrew is not installed locally, inspect the formula with the equivalent Ruby/tooling available in the environment and clearly report any checks that could not be run.

## Formula conventions

- Keep the formula class name as `Playwright` and the file at `Formula/playwright.rb`.
- Preserve the upstream npm package URL format and update the version consistently in the URL and checksum.
- Use the declared `node@22` dependency when building or testing the formula.
- Keep the formula's `test do` block focused on verifying that the installed `playwright` executable is present and responds to `--help`.
- Do not commit generated bottles, build directories, or local Homebrew state unless a maintainer explicitly requests them.

## Updating Playwright

When upgrading:

1. Confirm the intended version on the upstream npm registry.
2. Update the tarball URL in `Formula/playwright.rb`.
3. Recalculate and replace the tarball's SHA-256 checksum.
4. Check whether the Node dependency or install behavior needs to change.
5. Run `brew audit --formula`, `brew style`, and `brew test` for the formula.
6. Update the README only if installation or upgrade instructions change.

Do not guess checksums or claim an upgrade is complete without verifying the upstream artifact.

## Documentation and change style

- Use concise Markdown and fenced shell examples.
- Match the existing formula's two-space Ruby indentation and simple Homebrew idioms.
- Keep changes narrowly scoped; avoid unrelated refactors.
- Preserve the Apache-2.0 license references unless the upstream package's licensing changes.

## Pull request checklist

- [ ] Formula URL and SHA-256 checksum refer to the same upstream version.
- [ ] `brew audit --formula Formula/playwright.rb` passes.
- [ ] `brew style Formula/playwright.rb` passes.
- [ ] `brew test Formula/playwright.rb` passes.
- [ ] README and formula documentation are consistent.
- [ ] No generated or local-only files are included.
