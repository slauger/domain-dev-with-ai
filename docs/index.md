# Schulung: Software gemeinsam entwickeln, mit Fachwissen und KI-Agenten

Im Kern geht es um die Zusammenarbeit von Domänenexperten und IT-Experten: Fachleute aus der Praxis tragen die Entwicklung mit, statt nur Tickets zu eröffnen, und bauen mit KI-Coding-Agenten selbst. IT-Experten für Architektur und Sicherheit hinterfragen, beraten und geben per Review frei. Die Schulung führt Schritt für Schritt durch diese Zusammenarbeit. Jedes Modul ist für sich lesbar; zusammen ergeben sie den kompletten Weg von der Idee bis zur gewarteten Software.

## Folien

Die Schulung gibt es auch als [Foliensatz](https://slauger.github.io/domain-dev-with-ai/slides/) für Vorträge und Workshops.

## Wer verantwortet was

Wer wofür zuständig ist, zeigt das [Modell der geteilten Verantwortung](geteilte-verantwortung.md): Domänenexperten für das, was in der Software passiert, IT-Experten für die Software selbst, manches gemeinsam.

## Das Beispiel

Durch alle Module zieht sich ein erfundenes Beispiel: die [Feuerwehr Musterstadt](beispiel-feuerwehr-musterstadt.md) und ihre Software "Wachbuch".

## Grundlagen

| Thema | Worum es geht |
| --- | --- |
| [Mindestwissen](grundlagen/index.md) | Was man vor dem ersten Pull Request verstehen muss: Git, Plattform, Web, Daten, Werkzeuge, Programmiersprachen, mit Selbstcheck |

## Module

| Nr. | Modul | Worum es geht |
| --- | --- | --- |
| 00 | [Warum diese Schulung](00-warum.md) | Warum nicht mehr nur IT-Experten Software bauen, und wie Fachwissen und IT-Wissen zusammenkommen |
| 01 | [Rollen und Arbeitsablauf](01-rollen-und-ablauf.md) | Wer macht was, und wie eine Idee bis in die Software kommt |
| 02 | [Ideen im Gespräch entwickeln](02-ideen-per-sprache.md) | Mit einem Sprachassistenten diskutieren, z. B. im Auto, inklusive Beispielgespräch |
| 03 | [Vom Gespräch zum Konzept und Prompt](03-konzept-und-prompt.md) | Aus der Diskussion ein Konzept, ein Issue und einen Auftrag für den Coding-Agenten machen |
| 04 | [Schauen, wie andere es lösen](04-marktrecherche.md) | Bestehende Produkte und Lösungen vergleichen, bevor man baut |
| 05 | [Das Datenmodell ist das Fundament](05-datenmodell.md) | Warum falsche Entscheidungen im Datenmodell teuer und gefährlich sind |
| 06 | [Mit dem Coding-Agenten arbeiten](06-coding-agent.md) | Werkzeuge, lokal oder in der Cloud, wie man den Agenten führt und hinterfragt |
| 07 | [Pull Request und Review](07-pull-request-und-review.md) | Automatische Prüfungen, Review durch KI, Architekt und Security |
| 08 | [Sicherheit](08-sicherheit.md) | Warum jede Änderung sicherheitskritisch geprüft wird, und worauf es ankommt |
| 09 | [Wartung, Updates und Releases](09-wartung-und-releases.md) | Abhängigkeiten, Updates, Renovate, Semantic Release, Release-Konzepte |
| 10 | [Standards](10-standards.md) | Welche Regeln gelten und wo sie stehen |
| 11 | [Umgebungen und Zusammenarbeit](11-umgebungen-und-zusammenarbeit.md) | Lokal, Dev, Vorschau pro Entwickler, QA, Produktion; wo KI-Agenten Zugriff haben; parallel arbeiten ohne Konflikte |
| 12 | [Testen](12-testen.md) | Der wichtigste Punkt in der KI-Entwicklung: Lint, Unit-, Spec- und End-to-End-Tests |
| 13 | [Werkzeuge und Kosten](13-werkzeuge-und-kosten.md) | Welche Konten und Werkzeuge man braucht, was sie kosten, warum Tokens Geld kosten |
| 14 | [KI und Datenschutz](14-ki-und-datenschutz.md) | Welche Daten in welchen KI-Dienst dürfen, Auftragsverarbeitung, Testdaten |
| 15 | [Projekt-Lebenszyklus](15-projekt-lebenszyklus.md) | Vom Prototyp über die gemeinsame Basis bis zur Übernahme durch die Fachleute |
| 16 | [Vom Prototyp zum Betrieb](16-vom-prototyp-zum-betrieb.md) | Warum ein Prototyp in einer Stunde steht, der Betrieb aber Backup, Monitoring, automatische Updates, CVEs und SBOMs braucht |
| 17 | [KI-Modelle: welches wofür](17-ki-modelle.md) | Modellfamilien, Reasoning oder schnell, warum kleine lokale Modelle für Entwicklung selten reichen, Empfehlung nach Aufgabe |
| 18 | [Lizenzen, Forks und Recht](18-lizenzen-und-recht.md) | Welche Lizenzen es gibt, warum man Autoren nicht entfernen darf, was Veröffentlichen bedeutet, Forks, KI-Code, Haftung im Verein |
| 19 | [Gut zusammenarbeiten](19-gut-zusammenarbeiten.md) | Gute Fragen stellen, Reviews geben und annehmen, Verhaltensregeln, neue Leute einarbeiten, Zeit im Ehrenamt |
| | [Übungen](uebungen.md) | Übungen zu den Modulen und eine Checkliste für den ersten eigenen Pull Request |
| | [Schulungsablauf](schulungsablauf.md) | Wie die Schulung durchgeführt wird: Formate, Dauer, Reihenfolge |
| | [Glossar](glossar.md) | Begriffe von Abhängigkeit bis Pull Request, einfach erklärt |

## Praxis

| Kapitel | Worum es geht |
| --- | --- |
| [Mitwirken ohne Code](mitwirken-ohne-code.md) | Stufen der Mitarbeit, Fehler und Wünsche melden, offene Fragen beantworten, was danach passiert |
| [Nachschlagewerk einrichten](nachschlagewerk-einrichten.md) | Einen KI-Assistenten so einrichten, dass er Dokumentation und Code kennt und nur liest |
| [Fachliche Prüfung](fachliche-pruefung.md) | Rollen-Prüfung, Ablauf- und Realitätsprüfung, Befunde einordnen, Definition of Done |
| [Ein Projekt vorbereiten](neues-projekt.md) | Bausatz und Checkliste für Projekte, die so arbeiten wollen, und was eigene Software wirklich kostet |
