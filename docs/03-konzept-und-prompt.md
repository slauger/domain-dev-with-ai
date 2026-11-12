# Modul 03: Vom Gespräch zum Konzept und Prompt

Nach dem Gespräch (Modul 02) hast du eine Zusammenfassung mit Ideen und offenen Fragen. In diesem Modul machst du daraus drei Dinge:

1. ein **Konzept**, das der Architekt prüft
2. ein **Issue**, also einen Eintrag in der Aufgabenliste des Projekts
3. einen **Prompt**, also den Arbeitsauftrag für den Coding-Agenten

Die Vorlagen dafür liegen im Ordner [vorlagen](vorlagen/README.md): [konzept.md](vorlagen/konzept.md), [issue.md](vorlagen/issue.md) und [prompt-coding-agent.md](vorlagen/prompt-coding-agent.md).

## Warum erst ein Konzept und nicht gleich programmieren?

Mit einem Coding-Agenten ist Code schnell geschrieben. Gerade deshalb ist die Versuchung groß, sofort loszulegen. Das Problem: Der Agent baut genau das, was du ihm sagst, auch wenn es eine schlechte Idee ist.

Das Konzept ist der **billigste Punkt, um Fehler zu beheben**. Stell dir vor, du baust ein Gerätehaus:

- Fehler im Plan: Radiergummi, fünf Minuten.
- Fehler nach dem Fundament: Bagger, eine Woche.
- Fehler nach dem Einzug: Umbau im laufenden Betrieb, Monate.

Bei Software ist es genauso. Peter, der Architekt, hat wenig Zeit. Ein Konzept von einer Seite liest er in zehn Minuten. Einen Pull Request mit 40 geänderten Dateien zu prüfen und dann festzustellen, dass der Ansatz falsch war, kostet ihn eine Stunde und dich die ganze Arbeit.

Deshalb gilt: **Erst Konzept, dann Review durch den Architekten, dann Code.**

## Teil A: Das Konzept

Ein Konzept beschreibt, **was** gebaut werden soll und **warum**, nicht **wie** es programmiert wird. Es hat immer dieselben Abschnitte:

| Abschnitt | Frage, die er beantwortet |
| --- | --- |
| Problem | Was läuft heute schlecht? |
| Ziel | Was soll danach besser sein? |
| Nutzer | Wer benutzt die Funktion? |
| Ablauf | Wie läuft es Schritt für Schritt ab? |
| Daten | Welche Daten werden gebraucht, woher kommen sie, was ist die Quelle der Wahrheit? |
| Rechte | Wer darf was sehen und ändern? |
| Datenschutz | Sind persönliche oder sensible Daten betroffen? |
| Grenzen | Was gehört ausdrücklich nicht dazu? |
| Offene Fragen | Was muss noch entschieden werden, und von wem? |
| Abnahmekriterien | Woran erkennt man, dass es fertig ist und funktioniert? |

Tipp: Lass den Assistenten aus dem Gespräch einen ersten Entwurf in genau dieser Struktur schreiben. Dann lies ihn kritisch durch und korrigiere, was nicht stimmt. Du bist der Fachmann, nicht der Assistent.

### Beispiel: Konzept für das Wachbuch

```markdown
# Konzept: Atemschutz-Einsatzzeiten automatisch in den Nachweis übernehmen

Autor: Karl
Stand: Entwurf, zur Prüfung durch Peter

## Problem
Atemschutzzeiten aus Einsätzen werden heute doppelt erfasst: im Einsatzbericht (durch den Einsatzleiter) und im Atemschutz-Nachweis jedes Geräteträgers (durch den Gerätewart). Das kostet Zeit, und die beiden Stellen laufen auseinander, besonders wenn ein Bericht später korrigiert wird.

## Ziel
Einsätze unter Atemschutz erscheinen automatisch im Nachweis der beteiligten Geräteträger. Der Einsatzbericht ist die einzige Quelle für diese Zeiten.

## Nutzer
- Einsatzleiter: schreibt und korrigiert den Einsatzbericht
- Gerätewart: sieht alle Nachweise
- Geräteträger: sieht den eigenen Nachweis

## Ablauf
1. Der Einsatzleiter trägt im Einsatzbericht die Atemschutz-Trupps ein (Person, Gerät, Beginn, Ende).
2. Beim Speichern zeigt der Nachweis jeder Person den Einsatz an.
3. Korrigiert der Einsatzleiter den Bericht, ändert sich der Nachweis mit.
4. Wird ein Bericht storniert, zählt der Einsatz in keinem Nachweis mehr.

## Daten
- Nachweis-Einträge aus Einsätzen verweisen auf den Einsatzbericht, die Zeiten werden nicht kopiert.
- Jeder Nachweis-Eintrag zeigt seine Herkunft: "Einsatz" (automatisch) oder "Übung" (von Hand).
- Automatische Einträge können im Nachweis nicht bearbeitet werden. Korrekturen erfolgen im Einsatzbericht.
- Einsatzberichte werden nicht gelöscht, sondern storniert.

## Rechte
- Einsatzleiter: Einsatzbericht anlegen und ändern; keine Nachweise sehen.
- Gerätewart: alle Nachweise sehen, Übungen eintragen.
- Geräteträger: nur den eigenen Nachweis sehen.

## Datenschutz
- Daten der arbeitsmedizinischen Untersuchung sind Gesundheitsdaten. Sie dürfen im Einsatzbericht nicht angezeigt werden.
- Wer sie heute sehen darf, wird gesondert geklärt (eigenes Issue).

## Grenzen (nicht Teil dieser Änderung)
- keine Weitergabe von Zeiten an andere Wehren
- keine Übernahme alter Einsätze; gilt ab einem Stichtag
- keine Änderung an der Erfassung von Übungen

## Offene Fragen
1. Stornieren statt Löschen: Gibt es das im Datenmodell schon? (Peter)
2. Personen ohne Konto (z. B. Nachbarwehr): nur Hinweis im Bericht? (Peter, Karl)
3. Sichtbarkeit der Untersuchungsdaten (Sabine)

## Abnahmekriterien
- Bericht mit zwei Geräteträgern speichern: beide sehen den Einsatz im Nachweis.
- Person aus dem Bericht entfernen: Einsatz verschwindet aus ihrem Nachweis.
- Bericht stornieren: Einsatz zählt in keinem Nachweis mehr.
- Einsatzleiter kann keine Nachweise öffnen.
- Einsätze vor dem Stichtag bleiben unverändert.
```

### Was Peter mit dem Konzept macht

Peter liest das Konzept und antwortet kurz, zum Beispiel:

> Gute Idee, Ansatz mit Verweis statt Kopie passt. Zu Frage 1: Stornieren gibt es noch nicht, das ist eine Datenmodell-Entscheidung, ich schreibe dazu ein ADR (siehe Modul 05). Zu Frage 2: ja, nur Hinweis. Bitte vorher kurz schauen, wie andere Programme die Trupps erfassen (Modul 04). Danach Issue anlegen und los.

Das hat Peter zehn Minuten gekostet und Karl vermutlich Tage an Umbau erspart.

## Teil B: Das Issue

Ein Issue ist ein Eintrag in der Aufgabenliste des Projekts, z. B. auf GitHub. Es ist der feste Ort, an dem die Aufgabe beschrieben ist und an dem später der Pull Request verlinkt wird. So ist auch in einem Jahr noch nachvollziehbar, warum etwas gebaut wurde.

Das Issue ist kürzer als das Konzept. Es verweist auf das Konzept oder enthält die wichtigsten Teile.

### Beispiel: Issue für das Wachbuch

```markdown
Titel: Atemschutz-Einsatzzeiten automatisch im Nachweis anzeigen

## Worum geht es
Einsätze unter Atemschutz sollen automatisch im Atemschutz-Nachweis der beteiligten Geräteträger erscheinen. Der Einsatzbericht ist die einzige Quelle. Konzept: docs/konzepte/atemschutz-einsatzzeiten.md (von Peter geprüft).

## Abnahmekriterien
- [ ] Bericht mit zwei Geräteträgern: beide sehen den Einsatz im Nachweis
- [ ] Person aus Bericht entfernt: Einsatz verschwindet aus ihrem Nachweis
- [ ] Bericht storniert: Einsatz zählt in keinem Nachweis mehr
- [ ] Einsatzleiter kann keine Nachweise öffnen
- [ ] Einsätze vor dem Stichtag bleiben unverändert

## Nicht Teil dieses Issues
- Weitergabe an andere Wehren
- Sichtbarkeit der Untersuchungsdaten (eigenes Issue)

## Abhängigkeiten
- ADR "Stornieren statt Löschen bei Einsatzberichten" (Peter)
```

## Teil C: Der Prompt für den Coding-Agenten

Der Prompt ist der Arbeitsauftrag an den Coding-Agenten (z. B. Claude Code oder Codex). Ein guter Prompt sorgt dafür, dass der Agent:

- **weiß, was zu tun ist:** Verweis auf das Issue
- **die Regeln kennt:** AGENTS.md und die Dokumentation des Projekts lesen. AGENTS.md ist eine Datei im Projekt, in der die Regeln speziell für Coding-Agenten stehen.
- **erst plant:** einen Plan vorlegen und auf dein OK warten, bevor er Code schreibt
- **in kleinen Schritten arbeitet:** lieber fünf kleine, verständliche Schritte als ein großer
- **Tests schreibt:** für jedes Abnahmekriterium mindestens einen Test
- **die Prüfungen ausführt:** dieselben Prüfungen, die später auch die CI macht
- **einen sauberen Pull Request öffnet:** mit der PR-Vorlage des Projekts
- **fragt statt rät:** bei fachlichen Unklarheiten nachfragen, nicht einfach etwas annehmen

### Beispiel: Prompt für das Wachbuch

```text
Bitte setze Issue #42 um: "Atemschutz-Einsatzzeiten automatisch im Nachweis anzeigen". Lies das Issue und das verlinkte Konzept vollständig.

Bevor du anfängst:
1. Lies AGENTS.md und die Dokumentation im Ordner docs/, besonders die Abschnitte zum Datenmodell und zu Rechten.
2. Lies das ADR zu "Stornieren statt Löschen". Wenn es noch nicht umgesetzt ist, sag mir das und hör auf.

Vorgehen:
3. Erstelle zuerst einen Plan: welche Dateien du ändern willst, welche Änderungen am Datenmodell nötig sind und welche Tests du schreibst. Warte auf mein OK, bevor du Code schreibst.
4. Arbeite in kleinen Schritten. Nach jedem Schritt kurz sagen, was du gemacht hast.
5. Schreibe für jedes Abnahmekriterium aus dem Issue mindestens einen Test.
6. Führe alle Prüfungen aus, die in AGENTS.md beschrieben sind (Tests, Formatierung, Sicherheitsprüfung). Alle müssen grün sein. Schalte keine Prüfung ab und lockere keine Regel.

Grenzen:
- Ändere nichts an der Erfassung von Übungen.
- Zeige keine Untersuchungsdaten im Einsatzbericht an.
- Nutze nur Testdaten, keine echten Personendaten.

Wenn etwas fachlich unklar ist, frag mich. Rate nicht.

Am Ende: Öffne einen Pull Request mit der PR-Vorlage des Projekts, verlinke Issue #42 und beschreibe in einfachen Worten, was sich geändert hat und wie ich es in der Test-Umgebung ausprobieren kann.
```

### Warum der Prompt so aufgebaut ist

- **"Lies erst"**: Der Agent kennt dein Projekt nicht. Ohne die Regeln erfindet er eigene.
- **"Warte auf mein OK"**: Am Plan siehst du früh, ob der Agent dich verstanden hat. Einen Plan zu korrigieren ist viel billiger als Code.
- **"Rate nicht"**: Agenten füllen Lücken gern mit plausiblen Annahmen. Bei fachlichen Fragen bist du die Quelle, nicht der Agent.
- **"Schalte keine Prüfung ab"**: Agenten neigen dazu, einen Fehler "wegzumachen", statt ihn zu beheben. Das muss man ausdrücklich verbieten.
- **"Nur Testdaten"**: Echte Daten von Kameraden gehören nicht in ein KI-Werkzeug.

## Dasselbe für die Pension Seeblick

Das Vorgehen ist in jeder Branche gleich. Anna, die Inhaberin der Pension Seeblick, will, dass Stammgäste bei einer neuen Buchung ihre Daten nicht nochmal eingeben müssen. Ihr Konzept hätte dieselben Abschnitte. Unter "Daten" stünde z. B.: "Gast und Buchung sind getrennt; ein Gast kann viele Buchungen haben." Unter "Datenschutz": "Gastdaten werden nach den gesetzlichen Fristen gelöscht, Buchungen bleiben für die Buchhaltung erhalten." Und schon steckt man in einer Datenmodell-Frage (Modul 05).

## Checkliste

- [ ] Konzept nach Vorlage geschrieben, alle Abschnitte ausgefüllt
- [ ] offene Fragen mit Namen versehen: wer entscheidet?
- [ ] Konzept vom Architekten geprüft
- [ ] Issue angelegt, Abnahmekriterien als Liste
- [ ] Prompt verweist auf Issue, AGENTS.md, Plan zuerst, Tests, Prüfungen, PR-Vorlage, nachfragen

Weiter mit [Modul 04: Schauen, wie andere es lösen](04-marktrecherche.md).
