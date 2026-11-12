# Vorlagen

Vorlagen zum Kopieren und Ausfüllen. Platzhalter stehen in spitzen Klammern, z. B. `<Titel>`. Hinweise in HTML-Kommentaren (`<!-- ... -->`) sind beim Ausfüllen zu löschen. Für alle Vorlagen gilt: nur erfundene Daten, keine Passwörter oder Schlüssel.

| Vorlage | Wofür | Modul |
| --- | --- | --- |
| [konzept.md](konzept.md) | Eine Idee strukturiert beschreiben: Problem, Ziel, Nutzer, Ablauf, Daten, Rechte, Datenschutz, Grenzen, Abnahmekriterien | [03](../03-konzept-und-prompt.md) |
| [issue.md](issue.md) | Eine Aufgabe oder einen Fehler im Projekt erfassen | [03](../03-konzept-und-prompt.md) |
| [prompt-coding-agent.md](prompt-coding-agent.md) | Den Coding-Agenten beauftragen: planen, hinterfragen, bauen, erklären, Pull Request | [03](../03-konzept-und-prompt.md), [06](../06-coding-agent.md) |
| [pull-request.md](pull-request.md) | Beschreibung eines Pull Requests | [07](../07-pull-request-und-review.md) |
| [adr.md](adr.md) | Eine Architekturentscheidung festhalten | [07](../07-pull-request-und-review.md), [10](../10-standards.md) |
| [review-checkliste.md](review-checkliste.md) | Checkliste für das Review durch Architekt und Security | [07](../07-pull-request-und-review.md), [08](../08-sicherheit.md) |
| [prompt-projekt-aufsetzen.md](prompt-projekt-aufsetzen.md) | Den Coding-Agenten ein neues Projekt-Repository aus [starter/](https://github.com/slauger/domain-dev-with-ai/blob/main/starter/README.md) aufsetzen lassen, ohne dass er den Technik-Stack wählt | [15](../15-projekt-lebenszyklus.md) |

## In ein Projekt übernehmen

- `pull-request.md` kann als `.github/pull_request_template.md` ins Projekt kopiert werden. GitHub zeigt den Inhalt dann automatisch beim Anlegen eines Pull Requests an.
- `issue.md` kann als Vorlage unter `.github/ISSUE_TEMPLATE/` abgelegt werden. Dafür braucht die Datei am Anfang einen kurzen Kopf mit Name und Beschreibung ([GitHub Docs, Stand: 2026-11-12](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository)).
- `adr.md` wird pro Entscheidung kopiert, z. B. nach `docs/adr/0001-<titel>.md`.
- Projektspezifische Punkte (Prüfbefehle, Ordner, wichtige ADRs) in den Vorlagen ergänzen.
