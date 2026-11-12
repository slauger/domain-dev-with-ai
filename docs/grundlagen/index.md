# Grundlagen: Mindestwissen

Wer mit einem Coding-Agenten an einer Software mitbaut, muss kein Programmierer werden. Ein paar Grundbegriffe braucht man aber, sonst versteht man weder, was der Agent tut, noch was der Architekt im Review schreibt. Dieser Abschnitt beschreibt dieses Mindestwissen.

Nicht alles muss am ersten Tag sitzen. Die Tabelle unten teilt das Wissen in drei Stufen. Alles ist beschrieben, damit du nachschlagen kannst, wenn du es brauchst.

Tipp: Diese Seiten eignen sich auch als Grundlage für einen KI-Assistenten (z. B. ChatGPT oder Claude) als Nachhilfelehrer. Gib ihm eine Seite und bitte ihn: "Erkläre mir das am Beispiel einer Feuerwehr-Software und stelle mir danach drei Fragen, ob ich es verstanden habe." Noch einfacher geht es mit dem [Lernbegleiter](../tutor/README.md), der die ganze Schulung kennt und auch im Sprachmodus funktioniert.

## Die drei Stufen

| Stufe | Bedeutung |
| --- | --- |
| **Muss ich verstehen** | Vor dem ersten eigenen Pull Request. Ohne dieses Wissen kannst du nicht beurteilen, was du abgibst. |
| **Sollte ich kennen** | In den ersten Monaten. Du musst es nicht selbst können, aber die Begriffe einordnen, wenn sie im Review fallen. |
| **Gut zu wissen** | Hilft beim Verstehen und beim Gespräch mit dem Architekten. Kein Muss. |

## Übersicht

| Thema | Stufe | Worum es geht | Hier erklärt |
| --- | --- | --- | --- |
| Versionskontrolle und Git | Muss ich verstehen | Repository, Commit, Branch, Merge, Konflikt, warum nichts verloren geht | [Versionskontrolle](versionskontrolle.md) |
| Plattform (GitHub und Alternativen) | Muss ich verstehen | Wo der Code liegt, was GitHub, GitLab, Forgejo und andere zusätzlich bieten | [Versionskontrolle](versionskontrolle.md#plattformen-github-und-andere) |
| Issues, Pull Requests, Review | Muss ich verstehen | Wie eine Idee aufgeschrieben, umgesetzt und geprüft wird | [Modul 01](../01-rollen-und-ablauf.md), [Modul 07](../07-pull-request-und-review.md) |
| Markdown | Muss ich verstehen | Die einfache Textformatierung für Konzepte, Issues und Pull Requests | [Werkzeuge](werkzeuge.md#markdown) |
| Grundbegriffe Web (Browser, Server, HTTP, HTTPS) | Muss ich verstehen | Wie eine Web-Anwendung funktioniert und warum HTTPS Pflicht ist | [Web und Daten](web-und-daten.md) |
| Datenbank und Datenmodell | Muss ich verstehen | Wo die Daten liegen und warum das Datenmodell das Fundament ist | [Web und Daten](web-und-daten.md#wo-die-daten-liegen), [Modul 05](../05-datenmodell.md) |
| Rechte und Datenschutz | Muss ich verstehen | Wer was sehen und ändern darf, welche Daten besonders geschützt sind | [Web und Daten](web-und-daten.md#anmeldung-sitzung-und-rechte), [Modul 08](../08-sicherheit.md) |
| Geteilte Verantwortung | Muss ich verstehen | Wer wofür zuständig ist: Domänenexperten für das, was in der Software passiert, IT-Experten für die Software selbst; der KI-Agent trägt keine Verantwortung | [Geteilte Verantwortung](../geteilte-verantwortung.md) |
| Umgebungen und KI-Zugriff | Muss ich verstehen | Lokal, Preview, Dev/Test, QA, Produktion; warum man nicht in der echten Software ausprobiert und wo echte Daten sind, keine KI arbeitet | [Web und Daten](web-und-daten.md#umgebungen-entwicklung-test-produktion), [Modul 11](../11-umgebungen-und-zusammenarbeit.md) |
| Testen | Muss ich verstehen | Warum Tests bei Agenten das wichtigste Sicherheitsnetz sind, wie man Sonderfälle in eigenen Worten beschreibt, was ein roter Test bedeutet | [Modul 12](../12-testen.md) |
| KI und Datenschutz | Muss ich verstehen | Welche Daten in welchen KI-Dienst dürfen, warum nie personenbezogene Daten in Verbraucher-Apps | [Modul 14](../14-ki-und-datenschutz.md) |
| Zusammenarbeit und gute Fragen | Muss ich verstehen | Fragen so stellen, dass andere sie beantworten können, mit Kritik im Review umgehen, Umgangsregeln im Projekt | [Modul 19](../19-gut-zusammenarbeiten.md) |
| Abhängigkeiten und Updates | Sollte ich kennen | Fremde Bausteine im Code, warum sie aktuell bleiben müssen | [Modul 09](../09-wartung-und-releases.md) |
| Kosten | Sollte ich kennen | Was Werkzeuge kosten, warum Tokens Geld kosten und lange Sitzungen teurer sind, wer bezahlt | [Modul 13](../13-werkzeuge-und-kosten.md) |
| Modellwahl | Sollte ich kennen | Modell und App unterscheiden, den Modell-Standard des Projekts kennen, wann sich ein stärkeres Modell lohnt | [Modul 17](../17-ki-modelle.md) |
| Lizenzen und Forks | Sollte ich kennen | Warum man fremden Code nicht einfach kopiert, was eine Lizenz erlaubt, was ein Fork ist | [Modul 18](../18-lizenzen-und-recht.md) |
| Betrieb, Updates, CVE, SBOM | Sollte ich kennen (verstehen, nicht selbst machen) | Warum ein Prototyp kein Betrieb ist, warum Updates täglich laufen, was CVE und SBOM bedeuten; einrichten tun es die IT-Experten | [Modul 16](../16-vom-prototyp-zum-betrieb.md), [Modul 15](../15-projekt-lebenszyklus.md) |
| Programmiersprachen und Plattformen | Sollte ich kennen | Welche Sprache wofür, warum ein Projekt bei seinem Werkzeugkasten bleibt | [Sprachen und Plattformen](sprachen-und-plattformen.md) |
| Terminal | Sollte ich kennen | Was die Befehlszeile ist und wie man liest, was der Agent dort ausführt | [Werkzeuge](werkzeuge.md#terminal) |
| CI (automatische Prüfungen) | Sollte ich kennen | Was bei jedem Pull Request automatisch geprüft wird und wie man ein rotes Ergebnis liest | [Werkzeuge](werkzeuge.md#ci-automatische-prüfungen), [Modul 07](../07-pull-request-und-review.md) |
| YAML und JSON | Gut zu wissen | Konfigurations- und Datenformate lesen können | [Werkzeuge](werkzeuge.md#yaml-und-json) |
| Container | Gut zu wissen | Wie Software verpackt und überall gleich gestartet wird | [Werkzeuge](werkzeuge.md#container) |
| Editor, Entwicklungsumgebung, Browser-Entwicklerwerkzeuge | Gut zu wissen | Werkzeuge, mit denen Entwickler arbeiten | [Werkzeuge](werkzeuge.md#editor-und-entwicklungsumgebung) |

## Selbstcheck vor dem ersten Pull Request

Gehe die Liste ehrlich durch. Wo du nicht sicher bist, lies die verlinkte Seite oder frage einen KI-Assistenten als Nachhilfe. Wo es dann noch hakt, frage den Architekten. Das ist kein Zeichen von Schwäche, sondern genau seine Aufgabe.

### Vor dem ersten Pull Request

Kann ich in eigenen Worten erklären, ...

- [ ] was ein Repository, ein Commit und ein Branch sind?
- [ ] warum ich nie direkt auf dem Haupt-Branch arbeite?
- [ ] was ein Merge-Konflikt ist und warum er kein Weltuntergang ist?
- [ ] dass GitHub nur eine von mehreren Plattformen ist, und was die Plattform zusätzlich zu Git bietet?
- [ ] was ein Issue ist und was ein Pull Request ist, und wie beide zusammenhängen?
- [ ] warum jede Änderung ein Review braucht, auch wenn sie klein ist?
- [ ] wie ich eine Überschrift, eine Liste und einen Link in Markdown schreibe?
- [ ] was zwischen Browser, Server und Datenbank passiert, wenn jemand im Wachbuch auf "Speichern" klickt?
- [ ] warum HTTPS Pflicht ist und was das Schloss im Browser bedeutet?
- [ ] warum Passwörter nie im Klartext gespeichert werden?
- [ ] warum die Prüfung von Rechten auf dem Server passieren muss und nicht nur im Browser?
- [ ] welche Daten in meinem Projekt personenbezogen oder besonders sensibel sind?
- [ ] warum ich nie echte Daten zum Ausprobieren verwende?
- [ ] wer in meinem Projekt wofür verantwortlich ist, und warum "der Agent hat das so gebaut" keine Begründung ist?
- [ ] in welchen Umgebungen ein KI-Agent arbeiten darf, und warum nie in QA mit echten Daten oder in der Produktion?
- [ ] warum Tests bei der Arbeit mit Agenten so wichtig sind, und wie ich erwartetes Verhalten und Sonderfälle in eigenen Worten aufschreibe?
- [ ] was ein rotes Kreuz bei den automatischen Prüfungen im Pull Request bedeutet, und warum ein roter Test repariert und nicht gelöscht wird?
- [ ] welche Daten ich in welchen KI-Dienst eingeben darf, und warum Screenshots und Fehlermeldungen aus der echten Software nicht in einen KI-Chat gehören?
- [ ] wie ich eine Frage so stelle, dass andere sie ohne Rückfrage beantworten können, und wie ich auf harte Kritik im Review reagiere?

### In den ersten Monaten

Kann ich in eigenen Worten erklären, ...

- [ ] was eine Abhängigkeit ist und warum Updates wichtig sind?
- [ ] welche Programmiersprache mein Projekt nutzt und warum der Agent nicht einfach eine neue einführen darf?
- [ ] dass der Agent Befehle im Terminal ausführt, und dass ich lesen sollte, was er ausführt?
- [ ] was mein Werkzeug kostet, wer es bezahlt, und warum lange, ziellose Agenten-Sitzungen mehr kosten?
- [ ] welches Modell mein Projekt als Standard nutzt, und wann sich ein stärkeres Modell oder mehr Nachdenken lohnt?
- [ ] warum ich keinen fremden Code ohne passende Lizenz übernehme, und was ein Fork ist?
- [ ] warum mein Prototyp nicht einfach in Betrieb gehen darf, und was CVE und SBOM grob bedeuten, auch wenn ich sie nicht selbst einrichte?

Wenn du alle Punkte im ersten Teil mit Ja beantworten kannst, bist du bereit für deinen ersten Pull Request. Der zweite Teil kommt mit der Zeit. Wie du die Module dazu am besten durcharbeitest, steht im [Schulungsablauf](../schulungsablauf.md#pfad-für-das-selbststudium).

## Seiten in diesem Abschnitt

| Seite | Inhalt |
| --- | --- |
| [Versionskontrolle](versionskontrolle.md) | Git, Branches, Konflikte, Plattformen wie GitHub und ihre Alternativen |
| [Sprachen und Plattformen](sprachen-und-plattformen.md) | Welche Programmiersprache wofür, nativ oder plattformübergreifend |
| [Web und Daten](web-und-daten.md) | Browser, Server, Datenbank, HTTPS, Anmeldung, Backups, Umgebungen |
| [Werkzeuge](werkzeuge.md) | Markdown, YAML und JSON, Terminal, Editor, Container, CI |
