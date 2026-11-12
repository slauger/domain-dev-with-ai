# Workboard

<!-- Hier steht, wie das Projekt seine Arbeit plant und verfolgt. Eine der beiden Möglichkeiten wählen, die andere löschen. Für kleine Teams ist Möglichkeit A die Empfehlung. -->

Das Workboard zeigt, woran gerade gearbeitet wird, was als Nächstes kommt und was auf eine Entscheidung wartet. Offene Fragen mit Kontext und Optionen stehen unter [Offene Entscheidungen](entscheidungen.md).

## Möglichkeit A: GitHub Issues und GitHub Projects (Empfehlung)

Jede Aufgabe ist ein Issue. Ein **GitHub Projects**-Board zeigt die Issues als Spalten, z. B. "Neu", "Bereit", "In Arbeit", "Im Review", "Erledigt" ([Quelle](https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/about-projects), Stand: 2026-11-12).

- **Labels** ordnen ein: `bug`, `enhancement`, `question`, `aus-der-praxis`, `entscheidung-vorschlag`, `security`.
- **Milestones** bündeln, was in eine Version gehören soll, z. B. "1.0 Prüffristen".
- **Prioritäten** setzt <Rolle, z. B. Vorstand oder Leitung>, der Maintainer schneidet daraus kleine Issues.
- **Startbereit** ist ein Issue erst, wenn es keine offene Frage und keine fehlende Freigabe mehr hat.

Vorteile: Alle kennen es, Issue-Formulare und Pull Requests hängen direkt daran, kein zusätzlicher Pflegeaufwand. Nachteil: Agenten brauchen Zugriff auf GitHub, um das Board zu lesen.

Board: <Link zum GitHub-Projects-Board>

## Möglichkeit B: Markdown-Board in `docs/work/`

Für Projekte, in denen ein Coding-Agent in wiederkehrenden Läufen selbstständig Aufgaben abarbeitet. Das Board ist dann eine Markdown-Datei im Repository, die der Agent liest und nach jedem Lauf aktualisiert.

- Pro Aufgabe eine Datei, z. B. `docs/work/items/WORK-0001-<titel>.md`, mit Ziel, Abnahmekriterien und Stand.
- Diese Seite enthält nur Tabellen mit Verweisen: "Nächste Einheit", "In Arbeit", "Wartet auf Entscheidung", "Erledigt".
- Ein Lauf-Journal (`docs/work/journal.md`) hält fest, was jeder Lauf getan hat.

Vorteile: Der Agent hat alles im Repository, auch ohne Zugriff auf GitHub. Nachteile: Das Board wächst schnell und muss aktiv klein gehalten werden. Abschnitte wie "Nächste Einheit" werden bei jedem Lauf **ersetzt**, nicht ergänzt, sonst führt alter Text spätere Läufe in die Irre. Für kleine Teams ist das meist zu viel Aufwand.

## Nächste Schritte

<!-- Bei Möglichkeit A: Link aufs Board genügt, diesen Abschnitt löschen. Bei Möglichkeit B: Tabellen hier pflegen. -->

| Was | Issue | Wer | Stand |
| --- | --- | --- | --- |
| <z. B. Technik-Stack festlegen (ADR 0002)> | <#1> | [MAINTAINER] | <offen> |
