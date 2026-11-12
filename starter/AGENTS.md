# Hinweise für Coding-Agenten

<!-- Diese Datei liest jeder Coding-Agent zuerst. Platzhalter ersetzen, Befehle eintragen, Hinweise in Kommentaren löschen. Änderungen an dieser Datei immer in einem eigenen Pull Request, sie ändern das Verhalten aller Agenten. -->

[PROJEKT] ist <ein Satz: was die Software tut und für wen>. Maintainer: [MAINTAINER]. Die Software verarbeitet <welche Daten, z. B. personenbezogene Daten von Mitgliedern>.

## Zuerst lesen

- `docs/index.md` für den Überblick, `docs/scope.md` für den Umfang.
- `docs/adr/` für getroffene Entscheidungen. Eine Entscheidung dort wird nicht stillschweigend umgedreht.
- `docs/datenmodell/` vor jeder Änderung an Daten.
- `docs/mitarbeit/` für den Arbeitsablauf.

## Befehle

<!-- Die echten Befehle des Projekts eintragen. Der Agent führt sie vor jedem Pull Request aus und nennt das Ergebnis. -->

| Zweck | Befehl |
| --- | --- |
| Abhängigkeiten installieren | `<z. B. make install>` |
| Lint und Formatierung | `make lint` |
| Tests | `make test` |
| Dokumentation bauen | `make docs` |
| Alle Prüfungen wie in der CI | `make ci` |

## Regeln

- **Ein Issue, ein Pull Request.** Kleine Pull Requests, keine Änderungen nebenbei. Nie direkt auf `main`.
- **Tests sind Pflicht.** Neue Funktion heißt neuer Test. Bei einem Fehler zuerst ein Test, der ihn zeigt. Tests nie löschen, überspringen oder abschwächen, um grün zu werden.
- **Prüfungen wirklich ausführen.** Im Pull Request nennen, welche Befehle gelaufen sind und mit welchem Ergebnis.
- **Entscheidungen als ADR.** Änderungen an Struktur, Datenmodell, Rechten, Sicherheit, Betrieb oder Abhängigkeiten brauchen einen ADR in `docs/adr/` im selben Pull Request. Vorlage: `docs/adr/vorlage.md`.
- **Keine Wahl des Technik-Stacks.** Programmiersprache, Framework, Datenbank und externe Dienste legt der Maintainer per ADR fest. Nichts davon ohne ADR einführen.
- **Keine personenbezogenen Daten, keine Geheimnisse.** Keine echten Namen, Adressen, Telefonnummern, Gesundheitsangaben, Passwörter, Schlüssel oder Tokens im Code, in Tests, Beispielen, Logs oder Screenshots. Testdaten sind erfunden.
- **Rechte auf dem Server prüfen.** Eine Prüfung nur in der Oberfläche reicht nie.
- **Keine neuen Verbindungen nach außen** (Dienste, CDNs, Tracker) ohne ADR.
- **Neue Abhängigkeiten begründen** und so wenige wie möglich.
- **Dokumentation im selben Pull Request.** Ändert sich Verhalten, Datenmodell oder Betrieb, wird `docs/` im selben Pull Request angepasst.
- **Bei Unklarheit fragen.** Fachliche oder technische Fragen als Kommentar im Issue stellen, statt zu raten.
- **Commits** im Stil von Conventional Commits: `feat:`, `fix:`, `docs:`, `test:`, `refactor:`, `chore:`.

## Projektregeln

<!-- Hier kommen Regeln aus den ADRs hinein, jeweils ein Satz mit Verweis, z. B.: "Fachdaten werden nicht gelöscht, sondern ausgeblendet (ADR 0004)." -->

- Entscheidungen werden als ADR festgehalten (ADR 0001).
