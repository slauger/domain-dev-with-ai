#!/usr/bin/env bash
# Checks the content rules from AGENTS.md: ASCII punctuation only, no transliterated umlauts
# in common words, and optionally no names from LINT_NAMES (regex). Uses perl for portability.
set -euo pipefail

cd "$(dirname "$0")/.."
status=0

list() { git ls-files -z -- '*.md' '*.yml' '*.yaml' '*.txt'; }

# Em dash, en dash, typographic quotes, ellipsis, soft hyphen.
# shellcheck disable=SC2016 # perl code, not shell
if list | xargs -0 perl -CSD -ne 'if (/[\x{2013}\x{2014}\x{201A}\x{201C}\x{201D}\x{201E}\x{2018}\x{2019}\x{2026}\x{00AD}]/) { print "$ARGV:$.: $_"; $f = 1 } close ARGV if eof; END { exit($f ? 0 : 1) }'; then
  echo "Typografische Satzzeichen gefunden (nur ASCII-Interpunktion erlaubt)" >&2
  status=1
fi
# shellcheck disable=SC2016 # perl code, not shell
if list | xargs -0 perl -ne 'if (/\b(fuer|ueber|koennen|muessen|waehrend|pruefen|Aenderungen?)\b/) { print "$ARGV:$.: $_"; $f = 1 } close ARGV if eof; END { exit($f ? 0 : 1) }'; then
  echo "Umlaute als ae/oe/ue geschrieben" >&2
  status=1
fi
if [[ -n "${LINT_NAMES:-}" ]] && list | xargs -0 grep -niE "$LINT_NAMES"; then
  echo "Projekt- oder Personennamen gefunden" >&2
  status=1
fi
exit "$status"
