# Grundlagen: Mindestwissen

Wer mit einem Coding-Agenten an einer Software mitbaut, muss kein Programmierer werden. Ein paar Grundbegriffe braucht man aber, sonst versteht man weder, was der Agent tut, noch was der Architekt im Review schreibt. Dieser Abschnitt beschreibt dieses Mindestwissen.

Nicht alles muss am ersten Tag sitzen. Die Tabelle unten teilt das Wissen in drei Stufen. Alles ist beschrieben, damit du nachschlagen kannst, wenn du es brauchst.

Tipp: Diese Seiten eignen sich auch als Grundlage für einen KI-Assistenten (z. B. ChatGPT oder Claude) als Nachhilfelehrer. Gib ihm eine Seite und bitte ihn: "Erkläre mir das am Beispiel einer Feuerwehr-Software und stelle mir danach drei Fragen, ob ich es verstanden habe."

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
| Abhängigkeiten und Updates | Sollte ich kennen | Fremde Bausteine im Code, warum sie aktuell bleiben müssen | [Modul 09](../09-wartung-und-releases.md) |
| Programmiersprachen und Plattformen | Sollte ich kennen | Welche Sprache wofür, warum ein Projekt bei seinem Werkzeugkasten bleibt | [Sprachen und Plattformen](sprachen-und-plattformen.md) |
| Terminal | Sollte ich kennen | Was die Befehlszeile ist und wie man liest, was der Agent dort ausführt | [Werkzeuge](werkzeuge.md#terminal) |
| CI (automatische Prüfungen) | Sollte ich kennen | Was bei jedem Pull Request automatisch geprüft wird und wie man ein rotes Ergebnis liest | [Werkzeuge](werkzeuge.md#ci-automatische-prüfungen), [Modul 07](../07-pull-request-und-review.md) |
| YAML und JSON | Gut zu wissen | Konfigurations- und Datenformate lesen können | [Werkzeuge](werkzeuge.md#yaml-und-json) |
| Container | Gut zu wissen | Wie Software verpackt und überall gleich gestartet wird | [Werkzeuge](werkzeuge.md#container) |
| Umgebungen (Entwicklung, Test, Produktion) | Gut zu wissen | Warum man nicht in der echten Software ausprobiert | [Web und Daten](web-und-daten.md#umgebungen-entwicklung-test-produktion) |
| Editor, Entwicklungsumgebung, Browser-Entwicklerwerkzeuge | Gut zu wissen | Werkzeuge, mit denen Entwickler arbeiten | [Werkzeuge](werkzeuge.md#editor-und-entwicklungsumgebung) |

## Selbstcheck vor dem ersten Pull Request

Gehe die Liste ehrlich durch. Wo du nicht sicher bist, lies die verlinkte Seite oder frage einen KI-Assistenten als Nachhilfe. Wo es dann noch hakt, frage den Architekten. Das ist kein Zeichen von Schwäche, sondern genau seine Aufgabe.

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
- [ ] was eine Abhängigkeit ist und warum Updates wichtig sind?
- [ ] welche Programmiersprache mein Projekt nutzt und warum der Agent nicht einfach eine neue einführen darf?
- [ ] dass der Agent Befehle im Terminal ausführt, und dass ich lesen sollte, was er ausführt?
- [ ] was ein rotes Kreuz bei den automatischen Prüfungen im Pull Request bedeutet?

Wenn du die ersten zwölf Punkte mit Ja beantworten kannst, bist du bereit für deinen ersten Pull Request. Die übrigen kommen mit der Zeit.

## Seiten in diesem Abschnitt

| Seite | Inhalt |
| --- | --- |
| [Versionskontrolle](versionskontrolle.md) | Git, Branches, Konflikte, Plattformen wie GitHub und ihre Alternativen |
| [Sprachen und Plattformen](sprachen-und-plattformen.md) | Welche Programmiersprache wofür, nativ oder plattformübergreifend |
| [Web und Daten](web-und-daten.md) | Browser, Server, Datenbank, HTTPS, Anmeldung, Backups, Umgebungen |
| [Werkzeuge](werkzeuge.md) | Markdown, YAML und JSON, Terminal, Editor, Container, CI |
