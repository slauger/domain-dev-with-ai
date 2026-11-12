#!/usr/bin/env bash
# Writes all training content into one file (build/wissen.md) for upload to an AI assistant.
# The order and the file list come from llms.txt, so both stay in sync; a missing file fails.
set -euo pipefail

cd "$(dirname "$0")/.."
out=build/wissen.md
mkdir -p build

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

echo "$out: $(wc -l < "$out") Zeilen aus $(echo "$files" | wc -w | tr -d ' ') Dateien"
