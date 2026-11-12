# Prompt für den Coding-Agenten

<!-- Vorlage zu Modul 03 und 06. Den Block unten kopieren, die Platzhalter in spitzen Klammern ersetzen und dem Agenten (z. B. Claude Code oder Codex) geben. Niemals echte Personendaten, Passwörter oder Schlüssel einfügen. -->

## Schritt 1: Planen lassen

```text
Bitte setze Issue #<Nummer> um: "<Titel des Issues>".
Lies das Issue und das verlinkte Konzept vollständig.

Bevor du anfängst:
1. Lies AGENTS.md und halte dich an alle Regeln darin.
2. Lies die Dokumentation zu <Datenmodell / Rechten / betroffenem Bereich>.
3. Lies diese Architekturentscheidungen (ADRs): <Liste oder "alle, die das Thema betreffen">.

Erstelle zuerst nur einen Plan und ändere noch nichts:
- welche Dateien du ändern oder anlegen willst und warum,
- ob und wie sich das Datenmodell ändert,
- wie die Rechte geprüft werden (auf dem Server),
- welche Tests du für jedes Abnahmekriterium schreibst,
- ob du neue Abhängigkeiten (Pakete) brauchst und warum. Bevorzugt keine.

Wenn etwas fachlich unklar ist, frag mich. Rate nicht.
Warte auf mein OK, bevor du Code schreibst.
```

## Schritt 2: Plan hinterfragen

Stelle vor dem OK mindestens diese Fragen:

```text
Warum hast du diesen Weg gewählt? Welche Alternativen gibt es, mit Vor- und Nachteilen?
Was könnte durch die Änderung kaputtgehen? Was passiert mit vorhandenen Daten?
Wer darf die neue Funktion nutzen, und wo genau wird das geprüft?
Geht es einfacher, mit weniger Änderungen?
```

## Schritt 3: Bauen lassen

```text
Der Plan passt <mit folgenden Änderungen: ...>. Bitte setze ihn jetzt um.

Regeln:
- Arbeite in kleinen Schritten und sag nach jedem Schritt kurz, was du gemacht hast.
- Ändere nur, was für dieses Issue nötig ist. Was dir sonst auffällt, notierst du als Vorschlag für ein neues Issue.
- Schreibe für jedes Abnahmekriterium mindestens einen Test.
- Verwende nur erfundene Testdaten.
- Keine Passwörter, Schlüssel oder Tokens im Code.
- Keine neuen externen Dienste oder Verbindungen nach außen.
- Führe alle Prüfungen aus AGENTS.md aus. Alle müssen grün sein.
- Schalte keine Prüfung ab, lösche keine Tests und unterdrücke keine Warnungen.

Grenzen (nicht ändern):
- <Bereich 1>
- <Bereich 2>
```

## Schritt 4: Erklären und Pull Request

```text
Erkläre mir in einfachen Worten:
1. Was ändert sich für die Nutzer?
2. Welche Dateien hast du geändert und warum?
3. Welche Daten sind betroffen?
4. Wer darf was, und wo wird das geprüft?
5. Welche Prüfungen hast du ausgeführt, mit welchem Ergebnis?

Öffne dann einen Pull Request mit der PR-Vorlage des Projekts.
Titel im Stil der Conventional Commits, z. B. "feat: <kurze beschreibung>".
Verlinke Issue #<Nummer> und beschreibe, wie ich die Änderung in der Testumgebung ausprobieren kann.
```

## Wenn der Agent sich im Kreis dreht

```text
Stopp. Fasse zusammen, was du versucht hast, was nicht funktioniert hat und warum du glaubst, dass es nicht funktioniert. Ändere nichts mehr.
```

Danach: neue Sitzung mit kleinerem Auftrag starten oder den Architekten fragen.
