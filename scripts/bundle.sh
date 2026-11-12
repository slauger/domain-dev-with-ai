#!/usr/bin/env bash
# Writes all training content into one file (docs/tutor/wissen.md) for upload to an AI assistant.
# The order and the file list come from llms.txt, so both stay in sync; a missing file fails.
# With --check it only verifies that tutor/wissen.md is up to date (for CI).
set -euo pipefail

cd "$(dirname "$0")/.."
target=docs/tutor/wissen.md
out=$(mktemp)
trap 'rm -f "$out"' EXIT

files=$(grep -oE '\]\([^)]+\.md\)' llms.txt | sed -E 's/^\]\((.*)\)$/\1/')

{
  echo "# Schulungsunterlagen: Software gemeinsam entwickeln, mit Fachwissen und KI-Agenten"
  echo
  echo "Alle Inhalte in einer Datei. Jeder Abschnitt beginnt mit dem Pfad der Quelldatei im Repository."
  for f in $files; do
    if [[ ! -f "$f" ]]; then
      echo "fehlt: $f" >&2
      exit 1
    fi
    echo
    echo "---"
    echo
    echo "<!-- Datei: $f -->"
    echo
    cat "$f"
  done
} > "$out"

if [[ "${1:-}" == "--check" ]]; then
  if ! cmp -s "$out" "$target"; then
    echo "$target ist veraltet, bitte scripts/bundle.sh ausführen" >&2
    exit 1
  fi
  echo "$target ist aktuell"
  exit 0
fi
cp "$out" "$target"
echo "$target: $(wc -l < "$target") Zeilen aus $(echo "$files" | wc -w | tr -d ' ') Dateien"
