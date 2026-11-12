# GitHub-Vorlagen: Issue-Formulare

Dieser Ordner enthält Issue-Formulare für GitHub. Ein Issue-Formular ist ein Formular mit Feldern, das erscheint, wenn jemand im Projekt auf "New issue" klickt. So können auch Menschen ohne Technikwissen Fehler melden, Wünsche beschreiben und offene Fragen beantworten (siehe [Mitwirken ohne Code](../../mitwirken-ohne-code.md)).

| Datei | Formular | Labels |
| --- | --- | --- |
| `ISSUE_TEMPLATE/fehler.yml` | Fehler melden | `bug`, `aus-der-praxis` |
| `ISSUE_TEMPLATE/wunsch.yml` | Idee oder Wunsch | `enhancement`, `aus-der-praxis` |
| `ISSUE_TEMPLATE/antwort.yml` | Antwort auf eine offene Frage | `question`, `entscheidung-vorschlag`, `aus-der-praxis` |
| `ISSUE_TEMPLATE/config.yml` | Einstellungen und Links (Mitarbeit, offene Fragen, Sicherheitslücke melden) | |

## So übernimmst du die Vorlagen in ein Projekt

1. Im Projekt-Repository den Ordner `.github/ISSUE_TEMPLATE/` anlegen (falls noch nicht vorhanden).
2. Die vier Dateien aus `ISSUE_TEMPLATE/` dorthin kopieren. Die Reihenfolge im Auswahlmenü richtet sich nach dem Dateinamen. Wer eine feste Reihenfolge will, stellt eine Nummer voran, z. B. `01-fehler.yml`, `02-wunsch.yml`, `03-antwort.yml`.
3. In `fehler.yml` die Auswahlliste "Wo in der Software?" an die Bereiche des Projekts anpassen. Beispiel Wachbuch: "Mitglieder", "Dienstzeiten", "Fahrzeuge", "Geräteprüfungen", "Weiß ich nicht".
4. In `config.yml` die Beispiel-Adressen (`example.org`) durch die echten Seiten des Projekts ersetzen: Anleitung zur Mitarbeit, Entscheidungsseite, Sicherheitsrichtlinie (z. B. `SECURITY.md`).
5. Die Labels `aus-der-praxis` und `entscheidung-vorschlag` im Repository anlegen (Issues, Labels, New label), falls es sie noch nicht gibt. Ob GitHub fehlende Labels automatisch anlegt, ist nicht garantiert, deshalb vorher anlegen. Mit der GitHub CLI geht das so:

```bash
gh label create aus-der-praxis --description "Meldung aus der Praxis" --color 0E8A16
gh label create entscheidung-vorschlag --description "Antwort auf eine offene Frage, wird vom Maintainer geprüft" --color FBCA04
```

6. Änderung als Pull Request einreichen, wie jede andere Änderung auch.
7. Nach dem Merge einmal selbst "New issue" klicken und prüfen, ob die Formulare erscheinen.

## Hinweise

- Die Formulare funktionieren nur auf dem Standard-Branch des Repositories.
- Felder mit `required: true` müssen ausgefüllt werden. Bewusst sind nur wenige Felder Pflicht, damit niemand an einem Formular scheitert.
- Die Formulare weisen ausdrücklich darauf hin, keine persönlichen Daten zu melden. Diesen Hinweis nicht entfernen.
- Für Sicherheitslücken gibt es bewusst **kein** Formular. Sie gehören nicht in ein öffentliches Issue, sondern auf den Weg aus `SECURITY.md`.
- Ein Nachschlagewerk-Agent (siehe [Nachschlagewerk einrichten](../../nachschlagewerk-einrichten.md)) liest diese Formulare und stellt dieselben Fragen. Wer die Formulare ändert, ändert damit auch, was der Agent fragt.

Quelle zur Syntax der Formulare: [GitHub Docs, Syntax for issue forms](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms), Stand: 2026-11-12.
