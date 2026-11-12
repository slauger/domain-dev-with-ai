# Entscheidungen (ADRs)

Ein **ADR** (Architecture Decision Record) hält eine wichtige Entscheidung fest: Was war die Frage, welche Möglichkeiten gab es, wofür haben wir uns entschieden und warum. So muss später niemand raten, auch kein Agent.

## Wann ein ADR nötig ist

Bei Änderungen an Struktur, Datenmodell, Rechten, Sicherheit, Betrieb oder Abhängigkeiten, z. B. eine neue Datenbank, ein neuer externer Dienst oder ein neues Rollenkonzept.

## Regeln

- Nummeriert, vierstellig: `0001-kurzer-titel.md`.
- Mit der [Vorlage](vorlage.md) anlegen und im selben Pull Request wie die Änderung einreichen.
- Nie löschen. Wird eine Entscheidung geändert, entsteht ein neuer ADR, der den alten ablöst. Der alte bekommt den Status "abgelöst durch ADR <Nummer>".
- Regeln, die Agenten kennen müssen, zusätzlich als ein Satz in `AGENTS.md` eintragen.

## Übersicht

| Nr. | Titel | Status |
| --- | --- | --- |
| 0001 | [Architekturentscheidungen festhalten](0001-architekturentscheidungen-festhalten.md) | angenommen |
