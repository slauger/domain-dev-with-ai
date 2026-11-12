# Tutor: die Schulung mit einem KI-Assistenten durcharbeiten

Die Schulung ist so geschrieben, dass ein KI-Assistent (ChatGPT, Claude oder ähnlich) sie lesen und daraus interaktiv erklären kann. So beantwortet der Assistent die ersten Grundlagenfragen ("First Level"), und der Maintainer kann sich auf Konzepte und Reviews konzentrieren.

## Empfohlener Ablauf

1. Folien ansehen (Ordner `slides/`) oder Modul 00 und 01 lesen, um das Gesamtbild zu haben.
2. Dem Assistenten die Schulungsinhalte geben (siehe unten).
3. Den [Tutor-Prompt](prompt.md) kopieren und als erste Nachricht einfügen.
4. Mit dem Assistenten sprechen oder schreiben: Fragen stellen, Übungen machen, eine eigene Idee durchdenken. Das geht auch im Sprachmodus, z. B. unterwegs (Sicherheitsregeln in [Modul 02](../docs/02-ideen-per-sprache.md) beachten).
5. Was der Assistent nicht klären kann oder darf, als Frage im Issue an den Maintainer stellen.

## Dem Assistenten die Inhalte geben

| Weg | Wann | Wie |
| --- | --- | --- |
| Datei hochladen | immer möglich, auch solange das Repository privat ist | [`wissen.md`](wissen.md) enthält alle Inhalte in einer Datei. Diese Datei herunterladen und im Chat hochladen oder in einem Projekt als Wissen hinterlegen. Sie wird mit `scripts/bundle.sh` aus den Unterlagen erzeugt. |
| Projekt im Assistenten | für wiederholte Nutzung | In ChatGPT ein Projekt bzw. in Claude ein Projekt anlegen, `wissen.md` als Datei hinzufügen und den Tutor-Prompt als Projektanweisung eintragen. Dann muss man beides nur einmal einrichten. |
| Link auf das Repository | sobald das Repository öffentlich ist | Im Tutor-Prompt die URL eintragen. Der Assistent liest `llms.txt` und folgt den Links. Das funktioniert nur, wenn der Assistent Webseiten abrufen darf. |

Den Funktionsumfang der Assistenten (Projekte, Datei-Upload, Websuche, Sprachmodus) vor der Schulung prüfen, er ändert sich häufig. Stand: 2026-11-12.

## Für ein bestimmtes Projekt

Die Schulung ist allgemein. Jedes Projekt ergänzt seine eigenen Regeln (`AGENTS.md`, `CONTRIBUTING.md`, Dokumentation). Im Tutor-Prompt die Projekt-URL eintragen oder die Projektdokumentation zusätzlich hochladen. Projektregeln gehen vor.

## Grenzen

Der Tutor ersetzt kein Review. Er erklärt, übt und hilft beim Formulieren. Entscheidungen zu Datenmodell, Rechten, Sicherheit, Datenschutz und Architektur trifft der Maintainer. Niemals echte personenbezogene Daten, Passwörter oder Schlüssel in den Chat geben.
