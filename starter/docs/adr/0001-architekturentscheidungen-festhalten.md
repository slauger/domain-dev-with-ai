# ADR 0001: Architekturentscheidungen festhalten

- **Status:** angenommen
- **Datum:** <JJJJ-MM-TT>
- **Entschieden von:** [MAINTAINER]
- **Beteiligt:** [DOMAENENEXPERTE], [SECURITY]
- **Bezug:** erster Pull Request des Projekts

## Kontext

An [PROJEKT] arbeiten mehrere Menschen mit unterschiedlichem Hintergrund, viele davon mit Coding-Agenten. Der Maintainer hat wenig Zeit und betreut eventuell weitere Projekte. Ohne schriftliche Begründung weiß nach einiger Zeit niemand mehr, warum etwas so gebaut wurde. Agenten drehen bewusste Entscheidungen dann aus Unwissen wieder um.

## Möglichkeiten

### Möglichkeit A: Entscheidungen als ADR im Repository

- Vorteile: liegt neben dem Code, wird mit dem Pull Request geprüft, Agenten lesen es automatisch.
- Nachteile: etwas Schreibaufwand bei jeder wichtigen Entscheidung.

### Möglichkeit B: Entscheidungen in Issues oder Chats

- Vorteile: kein zusätzlicher Aufwand.
- Nachteile: schwer zu finden, nicht versioniert, Agenten sehen es nicht.

### Möglichkeit C: Nichts festhalten

- Vorteile: kein Aufwand.
- Nachteile: Wissen geht verloren, Übergabe an einen neuen Maintainer kaum möglich.

## Entscheidung

Wir halten wichtige Entscheidungen als ADR in `docs/adr/` fest.

## Begründung

ADRs sind der günstigste Weg, Wissen dauerhaft im Projekt zu halten, für Menschen und für Agenten.

## Folgen

- Änderungen an Struktur, Datenmodell, Rechten, Sicherheit, Betrieb oder Abhängigkeiten brauchen einen ADR im selben Pull Request.
- ADRs werden nie gelöscht, sondern durch neue abgelöst.
- Die Wahl des Technik-Stacks ist der nächste ADR und wird vom Maintainer geschrieben.

## Regel für Agenten

Wichtige Entscheidungen brauchen einen ADR in `docs/adr/` im selben Pull Request, Vorlage `docs/adr/vorlage.md`.
