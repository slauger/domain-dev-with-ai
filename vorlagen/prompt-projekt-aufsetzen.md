# Auftrag an den Coding-Agenten: Neues Projekt aufsetzen

<!-- Vorlage zu Modul 15. Gedacht für den IT-Experten in Phase 3 (Basis legen). Den Text ab "Auftrag" kopieren und dem Coding-Agenten im neuen, leeren Repository geben. Der Agent braucht Lesezugriff auf das Schulungs-Repository mit dem Ordner starter/. Die Wahl des Technik-Stacks trifft der IT-Experte, nicht der Agent. -->

## Auftrag

Du setzt ein neues Projekt-Repository nach einem festen Gerüst auf. Das Gerüst liegt im Schulungs-Repository unter `starter/`. Lies zuerst `starter/README.md`.

### 1. Frag nach, bevor du anfängst

Stelle mir diese Fragen und warte auf die Antworten. Rate nichts.

1. Wie heißt das Projekt bzw. Repository (`[PROJEKT]`), und unter welcher GitHub-Organisation liegt es (`[ORG]`)?
2. Worum geht es fachlich, in zwei, drei Sätzen? Für wen ist die Software?
3. Wer ist Maintainer (`[MAINTAINER]`), wer Vertretung, wer Security (`[SECURITY]`), wer fachlicher Ansprechpartner (`[DOMAENENEXPERTE]`), wer setzt Prioritäten?
4. Gibt es schon ein Konzept, einen Prototyp oder Notizen aus dem Requirements Engineering? Wenn ja, wo?
5. Gibt es schon einen ADR zum Technik-Stack (Sprache, Framework, Datenbank)? Wenn nein, lass die Sprach-Teile der CI als Platzhalter stehen.
6. Unter welcher Adresse ist die Schulung für das Team erreichbar (`[SCHULUNG-URL]`)?

### 2. Gerüst übernehmen

- Erstelle einen Branch, z. B. `chore/projekt-aufsetzen`.
- Kopiere den **Inhalt** von `starter/` in das Repository, auch die versteckten Dateien (`.github/`, `.gitignore`).
- Ersetze `starter/README.md` durch eine kurze Projekt-README: was, für wen, wie ausprobieren, wo geht es weiter, Links auf `docs/` und `CONTRIBUTING.md`.
- Ersetze alle Platzhalter. Prüfe danach mit `grep -rn '\[PROJEKT\]\|\[ORG\]\|\[MAINTAINER\]\|\[SECURITY\]\|\[DOMAENENEXPERTE\]\|\[SCHULUNG-URL\]' .`, dass keiner übrig ist.
- Lege `CLAUDE.md` als Verweis auf `AGENTS.md` an, wenn das Team Claude Code nutzt.

### 3. Erste Inhalte schreiben

- `docs/index.md`: Beschreibung und Ansprechpartner aus meinen Antworten.
- `docs/scope.md`: erster Scope aus Konzept und Notizen, aufgeteilt in umgesetzt (zu Beginn leer), geplant, zurückgestellt, ausgeschlossen. Was unklar ist, kommt als offene Frage nach `docs/work/entscheidungen.md`, nicht in den Scope.
- `docs/adr/0001-architekturentscheidungen-festhalten.md`: Datum und Namen eintragen, Inhalt sonst übernehmen.
- `docs/work/index.md`: die Möglichkeit wählen, die ich nenne (Standard: GitHub Issues und GitHub Projects), die andere löschen.
- Hinweise in HTML-Kommentaren dort löschen, wo du den Abschnitt ausgefüllt hast. Wo du nichts weißt, lass Kommentar und Platzhalter stehen.

### 4. CI nach dem gewählten Stack

- Gibt es einen ADR zum Technik-Stack, richte in `.github/workflows/ci.yaml` und im `Makefile` die Befehle für Lint und Test genau nach diesem ADR ein.
- Gibt es keinen, lass die Platzhalter stehen und schreib in den Pull Request, dass der ADR zum Technik-Stack fehlt.
- **Wähle selbst keine Programmiersprache, kein Framework, keine Datenbank und keinen externen Dienst.** Das entscheidet der IT-Experte in einem eigenen ADR. Wenn du einen Vorschlag hast, schreib ihn als Kommentar in den Pull Request.

### 5. Prüfen

- Führe `make docs` aus und behebe alle Warnungen. Zeig mir die Ausgabe.
- Prüfe, dass keine echten Personendaten, Passwörter oder Schlüssel im Repository sind.

### 6. Pull Request

- Commit im Stil von Conventional Commits, z. B. `chore: projekt aus starter aufsetzen`.
- Öffne einen Pull Request mit der Vorlage aus `.github/pull_request_template.md`. Nicht selbst mergen.
- Liste im Pull Request auf: was übernommen wurde, welche Platzhalter und Kommentare noch offen sind, welche offenen Fragen du in `docs/work/entscheidungen.md` eingetragen hast und was nach dem Merge von Hand zu tun ist (Branch-Schutz, Pflichtprüfungen, Labels, Renovate, Geheimnis-Scan).
