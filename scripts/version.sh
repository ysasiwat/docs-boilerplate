#!/usr/bin/env bash
# Keep the template version in step across VERSION, the index.md markers and CHANGELOG.md.
#   scripts/version.sh bump X.Y.Z   set the version everywhere and add a CHANGELOG heading
#   scripts/version.sh check        fail if any place disagrees with VERSION
#   scripts/version.sh notes [X.Y.Z] print that version's CHANGELOG section (default: VERSION)
set -euo pipefail
cd "$(dirname "$0")/.."

MARKER_FILES=(README.md template/docs/user-manual/index.md example/docs/user-manual/index.md)
SEMVER='^[0-9]+\.[0-9]+\.[0-9]+$'

current() { tr -d '[:space:]' < VERSION; }

notes() {
  # Lines after "## [v] ..." up to the next "## [" heading, with blank lines trimmed at both ends.
  awk -v v="$1" '
    index($0, "## [" v "]") == 1 { on = 1; next }
    on && /^## \[/ { exit }
    on { buf[n++] = $0 }
    END {
      s = 0; while (s < n && buf[s] ~ /^[[:space:]]*$/) s++
      e = n - 1; while (e >= s && buf[e] ~ /^[[:space:]]*$/) e--
      for (i = s; i <= e; i++) print buf[i]
    }' CHANGELOG.md
}

check() {
  local v bad=0
  v=$(current)
  [[ $v =~ $SEMVER ]] || { echo "VERSION is not X.Y.Z: '$v'" >&2; exit 1; }
  for f in "${MARKER_FILES[@]}"; do
    grep -q "user-manual-boilerplate v$v" "$f" || { echo "$f: marker is not v$v" >&2; bad=1; }
  done
  grep -q "^## \[$v\]" CHANGELOG.md || { echo "CHANGELOG.md: no '## [$v]' section" >&2; bad=1; }
  [[ $bad -eq 1 || -n $(notes "$v") ]] || { echo "CHANGELOG.md: '## [$v]' section is empty" >&2; bad=1; }
  [[ $bad -eq 0 ]] || exit 1
  echo "version $v is consistent"
}

bump() {
  local v=$1
  [[ $v =~ $SEMVER ]] || { echo "usage: scripts/version.sh bump X.Y.Z" >&2; exit 1; }
  printf '%s\n' "$v" > VERSION
  sed -i -E "s/user-manual-boilerplate v[0-9]+\.[0-9]+\.[0-9]+/user-manual-boilerplate v$v/" "${MARKER_FILES[@]}"
  if ! grep -q "^## \[$v\]" CHANGELOG.md; then
    awk -v h="## [$v] - $(date +%F)" '!done && /^## \[/ { print h; print ""; done = 1 } { print }' \
      CHANGELOG.md > CHANGELOG.md.tmp && mv CHANGELOG.md.tmp CHANGELOG.md
  fi
  echo "set version $v. Now write the '## [$v]' section in CHANGELOG.md, then run: scripts/version.sh check"
}

case "${1:-}" in
  bump)  bump "${2:-}" ;;
  check) check ;;
  notes) notes "${2:-$(current)}" ;;
  *) sed -n '2,5p' "$0" >&2; exit 1 ;;
esac
