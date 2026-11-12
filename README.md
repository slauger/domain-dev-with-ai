# domain-dev-with-ai

## Du möchtest selbst Software mitentwickeln?

Für deinen Verein, deine Feuerwehr oder deinen Betrieb, aber du bist kein IT-Experte? Kopiere diesen Text in ChatGPT, Claude oder einen anderen KI-Assistenten, gern im Sprachmodus. Der Assistent holt sich alles Weitere selbst, fragt dich Schritt für Schritt, wo du stehst, und begleitet dich bis zu deinem ersten eigenen Beitrag.

```text
Ich möchte lernen, wie ich als Fachmann oder Fachfrau ohne IT-Ausbildung zusammen mit IT-Experten und KI-Agenten Software mitentwickle. Sei mein Lernbegleiter. Lies zuerst deine Anweisungen unter https://raw.githubusercontent.com/slauger/domain-dev-with-ai/main/docs/tutor/prompt.md und befolge sie. Die Schulungsinhalte findest du über https://raw.githubusercontent.com/slauger/domain-dev-with-ai/main/llms.txt. Fang dann mit deiner ersten Frage an mich an.
```

Abends 20 Minuten im Gespräch statt vor dem Fernseher reichen für den Anfang.

Schulung und Arbeitsweise für die **Zusammenarbeit von Domänenexperten und IT-Experten**. Fachleute aus der Praxis entwickeln Software mit KI-Coding-Agenten selbst mit, statt nur Tickets zu eröffnen. IT-Experten (Softwarearchitektur und Sicherheit) hinterfragen, beraten und geben per Review frei.

Kern ist die Verteilung der Verantwortung: Domänenexperten bekommen mehr Wissen, mehr Werkzeuge und mehr Verantwortung für die Entwicklung, weil IT-Experten allein die Menge an Software nicht mehr bauen können. IT-Experten bleiben verantwortlich für das, was Fachwissen allein nicht abdeckt: Datenmodell, Architektur, Sicherheit, Datenschutz und Wartung.

## Für wen

Für Menschen, die sicher mit moderner Technik umgehen (Smartphone, Apps, Cloud-Dienste), aber keine Programmier-, Architektur- oder Security-Experten sind. Sie kennen ihr Fachgebiet sehr gut und können beschreiben, was eine Software tun soll. Die Schulung zeigt, wie aus einer Idee ein sauber geprüfter Pull Request wird, und warum Architektur, Datenmodell, Sicherheit und Wartung dabei nicht optional sind.

## Warum

Der Bedarf an Software wird so groß, dass IT-Experten ihn allein nicht decken können. Fachleute mit den richtigen Ideen bauen deshalb mit, unterstützt von KI-Agenten. IT-Experten betreuen mehrere Projekte und sichern ab, statt alles selbst zu bauen. Die Schulung beschreibt den Weg zwischen "jemand hackt ohne Plan etwas rein" und "der IT-Experte hat keine Zeit und kennt die Abläufe nicht". Mehr dazu in [docs/00-warum.md](docs/00-warum.md).

## Die Idee in einem Satz

Domänenexperten tragen die Entwicklung mit und bauen mit Agenten, IT-Experten für Architektur und Sicherheit hinterfragen und geben frei, und nichts landet ohne Review in der Software.

## Inhalt

| Bereich | Inhalt |
| --- | --- |
| [docs/tutor/](docs/tutor/README.md) | Lernbegleiter-Prompt für ChatGPT, Claude und Co. und alle Inhalte in einer Datei zum Hochladen |
| [docs/](docs/index.md) | Die Schulung als Text: Rollen, Arbeitsablauf, Module, Übungen |
| [docs/vorlagen/](docs/vorlagen/README.md) | Vorlagen zum Kopieren: Konzept, Prompt für Coding-Agenten, Issue, Pull Request, Architekturentscheidung |
| [starter/](starter/README.md) | Starter-Bausatz für neue Projekte: Doku-Struktur mit MkDocs, ADRs, Workboard, Regeln für Agenten, Issue-Formulare, CI- und Renovate-Vorlagen |
| [slides/](slides/README.md) | Foliensatz zur Schulung (Slidev), auch als [PDF](slides/2026-11-12-schulung.pdf) |

## Stand der Angaben

Angaben zu Werkzeugen, Preisen, Tarifen und Recht ändern sich schnell. Sie tragen ein Stand-Datum und eine Quelle; Stellen mit "bitte prüfen" sind nicht abschließend bestätigt. Vor einer Entscheidung immer die aktuelle Quelle lesen. Die Rechtsthemen sind keine Rechtsberatung.

## Verwandte Standards

- Coding-Standards: Konventionen für Commits, Releases, CI/CD, Renovate, Security (Repository `coding-standards`)
- Presentation-Standards: Aufbau und Werkzeuge für Foliensätze (Repository `presentation-standards`)

## Lizenz

Copyright Simon Lauger. Das Repository hat zwei Lizenzen:

| Was | Lizenz | Bedeutet |
| --- | --- | --- |
| Schulungsinhalte: alles in `docs/` außer `docs/vorlagen/`, dazu Folien in `slides/` | [CC BY-NC-SA 4.0](LICENSE) | Nutzen, weitergeben und anpassen ist erlaubt, wenn der Urheber genannt wird, die Nutzung nicht kommerziell ist und Bearbeitungen unter derselben Lizenz stehen. Für eine kommerzielle Nutzung bitte vorher fragen. |
| Zum Kopieren in Projekte: `starter/`, `docs/vorlagen/`, `scripts/` | [MIT](LICENSE-CODE) | Frei verwendbar, auch in kommerziellen und Open-Source-Projekten, mit Erhalt des Lizenzhinweises. |
