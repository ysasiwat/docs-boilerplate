# Changelog

All notable changes to this template. Versions follow [Semantic Versioning](https://semver.org/):
a major version changes the page set or a token name, so a manual made from an older version
needs work to follow it.

## [Unreleased]

### Added

- `scripts/version.sh` to bump and check the version in `VERSION`, the `index.md` markers and
  `CHANGELOG.md`, and a release job that makes the GitHub release from this file when a
  `vX.Y.Z` tag is pushed.

### Changed

- The version check and the release run from the reusable workflows in
  [ysasiwat/github-workflows](https://github.com/ysasiwat/github-workflows) (`@v1`), called by
  `.github/workflows/version.yml`; the marker files are set in `scripts/version.conf`.
- `CHANGELOG.md` follows Keep a Changelog: write changes under `[Unreleased]`, and
  `scripts/version.sh bump` moves them under the new version and adds the compare links.

## [1.0.1] - 2026-11-10

### Added

- `VERSION` file with the current template version.

### Changed

- README restyled in the readme-boilerplate layout.
- Version marker in `index.md` set to `v1.0.1`.

## [1.0.0] - 2026-11-10

### Added

- `template/docs/user-manual/`: index, installation, quickstart, end-to-end example, how-to,
  concept, CLI, API and configuration reference, troubleshooting, FAQ, glossary.
- `example/docs/user-manual/`: the same pages filled in for a fictional CLI, `tilecut`.
- `WRITING_GUIDE.md`, condensed from The Good Docs Project templates v1.6.0.
- Optional `mkdocs.yml` with `docs_dir: docs/user-manual`.
- Pull request template with a user manual checklist, and an offline link check workflow.

[Unreleased]: https://github.com/ysasiwat/user-manual-boilerplate/compare/v1.0.1...HEAD
[1.0.1]: https://github.com/ysasiwat/user-manual-boilerplate/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/ysasiwat/user-manual-boilerplate/releases/tag/v1.0.0
