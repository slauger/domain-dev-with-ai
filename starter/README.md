# Starter: Projektgerüst zum Kopieren

Dieser Ordner ist ein leeres Projektgerüst für neue Projekte, die so arbeiten wollen, wie es die Schulung beschreibt. Er ist unabhängig von der Programmiersprache. Er enthält Regeln für Agenten, Vorlagen für Issues und Pull Requests, eine Dokumentationsstruktur, eine CI-Vorlage, Renovate und ein Makefile. Was die einzelnen Bausteine sollen, steht in [Ein Projekt vorbereiten](../docs/neues-projekt.md). Wann im Projekt das Gerüst zum Einsatz kommt, steht in [Modul 15](../docs/15-projekt-lebenszyklus.md#phase-3-basis-durch-den-it-experten): in Phase 3, wenn der IT-Experte die Basis legt.

## Was drin ist

| Datei oder Ordner | Wofür |
| --- | --- |
| `AGENTS.md` | Regeln für Coding-Agenten, mit Platzhaltern für die Befehle |
| `CONTRIBUTING.md` | Kurze Anleitung für Menschen, verweist auf `docs/mitarbeit/` |
| `SECURITY.md` | Nicht-öffentlicher Meldeweg für Sicherheitslücken |
| `Makefile` | `make help`, `make docs`, `make docs-serve`, Platzhalter für `lint` und `test` |
| `mkdocs.yml` | Dokumentationsseite mit MkDocs Material, Deutsch, strenger Build, Mermaid |
| `docs/` | Gliederung der Dokumentation: Einstieg, Scope, Mitarbeit, Architektur, ADRs, Datenmodell, Betrieb, Entwicklung, Workboard |
| `.github/pull_request_template.md` | Vorlage für jede Pull-Request-Beschreibung |
| `.github/copilot-instructions.md` | Anweisungen für das automatische Review |
| `.github/ISSUE_TEMPLATE/` | Formulare für Fehler, Wunsch und Antwort, Kopie aus [docs/vorlagen/github/](../docs/vorlagen/github/README.md) |
| `.github/workflows/ci.yaml` | CI-Vorlage mit Lint, Test und Dokumentation |
| `renovate.json` | Grundeinstellung für automatische Updates |
| `.gitignore` | Grundlegende Einträge |

## So benutzt du das Gerüst

1. Neues, leeres Repository anlegen, z. B. auf GitHub.
2. Den **Inhalt** dieses Ordners hineinkopieren, auch die versteckten Dateien: `cp -R starter/. ../mein-projekt/`.
3. Diese `README.md` durch eine echte Projekt-README ersetzen: Was ist das, für wen, wie probiere ich es aus, wo geht es weiter.
4. Platzhalter ersetzen (siehe unten). Danach darf keiner mehr übrig sein: `grep -rn '\[PROJEKT\]\|\[ORG\]\|\[MAINTAINER\]' .`
5. Anpassen: Befehle in `AGENTS.md` und `Makefile`, Sprache und Werkzeuge in `.github/workflows/ci.yaml`, Bereiche in `.github/ISSUE_TEMPLATE/fehler.yml`.
6. Löschen, was nicht gebraucht wird, z. B. `.github/copilot-instructions.md` ohne automatisches Review.
7. Optional für Claude Code: `ln -s AGENTS.md CLAUDE.md`, damit beide Werkzeuge dieselben Regeln lesen.
8. Prüfen, ob die Dokumentation baut: `make docs` (braucht Docker).
9. Alles als ersten Pull Request einreichen, nicht direkt auf `main`.

Wer das Aufsetzen einem Coding-Agenten überlassen will, nimmt den Auftrag aus [docs/vorlagen/prompt-projekt-aufsetzen.md](../docs/vorlagen/prompt-projekt-aufsetzen.md).

## Platzhalter

| Platzhalter | Ersetzen durch | Beispiel |
| --- | --- | --- |
| `[PROJEKT]` | Name des Projekts bzw. Repositories | `wachbuch` |
| `[ORG]` | GitHub-Organisation oder Benutzer | `ff-musterstadt` |
| `[MAINTAINER]` | Name und Rolle des Maintainers | `Peter (Architekt)` |
| `[SECURITY]` | Wer Sicherheitsthemen prüft, sonst "übernimmt der Maintainer" | `Sabine` |
| `[DOMAENENEXPERTE]` | Fachliche Ansprechpartner | `Karl (Atemschutz)` |
| `[SCHULUNG-URL]` | Adresse, unter der diese Schulung für das Team erreichbar ist | `https://example.org/schulung/` |

Hinweise in HTML-Kommentaren (`<!-- ... -->`) erklären, was in einen Abschnitt gehört. Sie werden beim Ausfüllen gelöscht.

## Hinweise zu einzelnen Dateien

- **Makefile:** `lint`, `test` und `install` brechen absichtlich mit "TODO" ab, bis echte Befehle eingetragen sind. So fällt in der CI auf, wenn das vergessen wurde.
- **renovate.json:** JSON erlaubt keine Kommentare, deshalb hier die Erklärung. `config:recommended` ist die empfohlene Grundeinstellung, `schedule` sammelt Updates auf Montagfrüh, `minimumReleaseAge` wartet einige Tage, bevor eine neue Version vorgeschlagen wird. Der Eintrag `customManagers` lässt Renovate die Version von MkDocs Material im Makefile aktualisieren. Automatisches Mergen von Patch-Updates ist ausgeschaltet (`"automerge": false`). Wer der CI vertraut und Branch-Schutz mit Pflichtprüfungen hat, kann es auf `true` setzen. Renovate mergt dann nur bei grüner CI ([Quelle](https://docs.renovatebot.com/configuration-options/#automerge), Stand: 2026-11-12).
- **ci.yaml:** Eine Vorlage. Pull Requests bekommen die schnellen Prüfungen, `main` und der Start von Hand alle. Die Einrichtung der Sprache ist auskommentiert und wird vom Maintainer passend zum ADR zum Technik-Stack ergänzt.
- **ISSUE_TEMPLATE:** Kopie aus [docs/vorlagen/github/](../docs/vorlagen/github/README.md), nur `config.yml` hat Platzhalter-Adressen. Ändern sich die Vorlagen der Schulung, hier mitziehen.

## Nach dem ersten Merge

- Branch-Schutz für `main` einrichten: Merge nur mit grüner CI und Freigabe.
- Die CI-Jobs als Pflichtprüfungen eintragen.
- Labels anlegen, siehe [docs/vorlagen/github/README.md](../docs/vorlagen/github/README.md).
- Renovate für das Repository freischalten ([Quelle](https://docs.renovatebot.com/getting-started/installing-onboarding/), Stand: 2026-11-12).
- Geheimnis-Scan und Prüfung der Abhängigkeiten aktivieren ([Modul 08](../docs/08-sicherheit.md)).

Die Checklisten in [Ein Projekt vorbereiten](../docs/neues-projekt.md#checkliste) und [Modul 15](../docs/15-projekt-lebenszyklus.md#checkliste-basis-fertig-übergabe-möglich) zeigen, was danach noch fehlt.
