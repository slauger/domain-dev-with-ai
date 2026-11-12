# Schulungsablauf

Diese Seite beschreibt, wie die Schulung durchgeführt werden kann: in welchen Formaten, in welcher Reihenfolge, mit welchen Voraussetzungen und wie es danach weitergeht. Alle Zeiten sind Richtwerte und hängen von der Gruppe ab.

## Einstieg

Jede Durchführung beginnt mit [Modul 00: Warum diese Schulung](00-warum.md). Es erklärt, warum Domänenexperten heute mitbauen sollen, warum sie dabei Dinge wie TLS, Passwörter, Rechte, Datenschutz und Updates nicht kennen müssen, und warum deshalb der Ablauf mit Reviews diese Lücken auffangen muss. Ohne dieses Verständnis wirken die späteren Regeln wie Bürokratie.

Direkt danach kommen zwei kurze Seiten: das [Beispiel Feuerwehr Musterstadt](beispiel-feuerwehr-musterstadt.md), das sich durch alle Module zieht, und das [Modell der geteilten Verantwortung](geteilte-verantwortung.md). Es zeigt auf einer Seite, wer wofür zuständig ist, und ist der rote Faden für alle Regeln, die später kommen.

## Pflicht für den ersten Beitrag, Rest später

Nicht alles muss vor dem ersten eigenen Pull Request sitzen. Die Module sind deshalb in zwei Gruppen geteilt.

| Gruppe | Module | Warum |
| --- | --- | --- |
| **Pflicht vor dem ersten Beitrag** | [Grundlagen](grundlagen/index.md) mit Selbstcheck, 00, [Geteilte Verantwortung](geteilte-verantwortung.md), 01, 03, 05, 06, 07, 08, 10, 11, 12, 14, 19 | Ohne dieses Wissen kann man nicht beurteilen, was man abgibt: Ablauf, Konzept, Datenmodell, Agent, Review, Sicherheit, Umgebungen, Tests, Datenschutz und der Umgang miteinander |
| **Später oder bei Bedarf** | 02, 04, 09, 13, 15, 16, 17, 18 | Wichtig, aber für den ersten kleinen Pull Request reicht eine Grundregel: Werkzeug und Modell gibt das Projekt vor (13, 17), kein fremder Code ohne Lizenz (18), ein Prototyp geht nie allein in Betrieb (15, 16), Updates haben Vorrang (09) |

Wer nur mitdiskutieren, Fehler melden oder fachlich prüfen will, braucht noch weniger: 00, 01, die geteilte Verantwortung, [Mitwirken ohne Code](mitwirken-ohne-code.md), [Fachliche Prüfung](fachliche-pruefung.md), 14 und 19.

## Formate

| Format | Für wen | Dauer | Inhalt |
| --- | --- | --- | --- |
| Selbststudium | Einzelne, die zeitlich flexibel sein müssen | Pflichtteil etwa 10 Stunden, alles etwa 14 bis 15 Stunden, verteilt | Pfad unten, Übungen allein, danach ein Gespräch mit dem Architekten |
| Selbststudium mit Lernbegleiter | Einzelne, die lieber fragen als lesen | wie Selbststudium, in Etappen von 20 bis 45 Minuten | derselbe Pfad, erklärt und abgefragt von einem KI-Assistenten, auch im Sprachmodus |
| Workshop halbtags | Teams mit wenig Zeit, als Einstieg | etwa 4 Stunden | Kern der Pflichtmodule im Überblick, wenige Übungen, Rest im Selbststudium |
| Workshop ganztags | Teams, die direkt loslegen wollen | etwa 7 Stunden plus Pausen | alle Pflichtmodule mit Übungen, Ausblick auf die übrigen |
| Zwei Abende | Ehrenamtliche, die tagsüber arbeiten | zweimal etwa 3 Stunden, im Abstand von ein bis zwei Wochen | Abend 1 von der Idee zum Auftrag, Abend 2 vom Auftrag zum Pull Request, dazwischen Selbststudium |
| Mentoring | nach Workshop oder Selbststudium | einige Wochen begleitend | erstes echtes Issue mit Begleitung durch den Architekten |

Bewährt hat sich: Workshop (halbtags, ganztags oder zwei Abende) plus Lernbegleiter für die Lücken plus Mentoring beim ersten echten Issue.

## Der Lernbegleiter

Die Schulung ist so geschrieben, dass ein KI-Assistent sie lesen und daraus erklären kann. Der einfachste Weg: den kurzen Einstiegs-Prompt aus dem [README des Repositorys](https://github.com/slauger/domain-dev-with-ai#du-möchtest-selbst-software-mitentwickeln) in ChatGPT, Claude oder einen anderen Assistenten kopieren. Der Assistent liest seine Anweisungen und die Inhalte selbst, fragt, wo man steht, erklärt Schritt für Schritt und stellt Kontrollfragen. Andere Wege (Datei hochladen, Projekt im Assistenten) beschreibt der [Tutor-Bereich](tutor/README.md).

- **Im Sprachmodus** eignen sich vor allem die erklärenden Teile: Modul 00, 01, 02, 15, 16 und 19, die geteilte Verantwortung und der Grundlagen-Selbstcheck. Zum Beispiel unterwegs, im Auto nur mit Freisprecheinrichtung und wenn die Verkehrslage es zulässt ([Modul 02](02-ideen-per-sprache.md)).
- **Am Bildschirm** besser: Übungen mit Code, Tabellen oder Pull Requests (Module 05, 06, 07, 09, 12).
- **Grenzen:** Der Lernbegleiter ersetzt kein Review und keine Entscheidung des Architekten. Niemals echte personenbezogene Daten, Passwörter oder Schlüssel in den Chat geben ([Modul 14](14-ki-und-datenschutz.md)).

Den Funktionsumfang der Assistenten (Sprachmodus, Webzugriff, Datei-Upload) vor der Schulung prüfen, er ändert sich häufig. Stand: 2026-11-12.

## Pfad für das Selbststudium

Mit oder ohne Lernbegleiter. Die Übungen stehen in [Übungen](uebungen.md).

| Schritt | Dauer | Inhalt | Pflicht? |
| --- | --- | --- | --- |
| 1 | 45 min | [00 Warum](00-warum.md), [Beispiel](beispiel-feuerwehr-musterstadt.md), [Geteilte Verantwortung](geteilte-verantwortung.md), Übung GV.1 | ja |
| 2 | 90 min | [Grundlagen](grundlagen/index.md) mit Selbstcheck, gut mit Lernbegleiter | ja |
| 3 | 30 min | [01 Rollen und Ablauf](01-rollen-und-ablauf.md), Übung 1.1 | ja |
| 4 | 60 min | [03 Konzept und Prompt](03-konzept-und-prompt.md), Übungen 3.1 bis 3.3 | ja |
| 5 | 40 min | [05 Datenmodell](05-datenmodell.md), Übung 5.1 | ja |
| 6 | 45 min | [14 KI und Datenschutz](14-ki-und-datenschutz.md), Übung 14.1 | ja |
| 7 | 60 min | [06 Coding-Agent](06-coding-agent.md), Übungen 6.1 und 6.2 | ja |
| 8 | 30 min | [11 Umgebungen und Zusammenarbeit](11-umgebungen-und-zusammenarbeit.md), Übungen 11.1 und 11.2 | ja |
| 9 | 45 min | [12 Testen](12-testen.md), Übungen 12.1 und 12.2 | ja |
| 10 | 40 min | [07 Pull Request und Review](07-pull-request-und-review.md), Übungen 7.1 und 7.2 | ja |
| 11 | 45 min | [08 Sicherheit](08-sicherheit.md), Übung 8.1 | ja |
| 12 | 45 min | [10 Standards](10-standards.md) und [19 Gut zusammenarbeiten](19-gut-zusammenarbeiten.md), Übungen 10.1, 19.1, 19.2 | ja |
| 13 | 15 min | Checkliste "Bereit für den ersten eigenen Pull Request" | ja |
| 14 | 45 min | [02 Ideen im Gespräch](02-ideen-per-sprache.md), Übung 2.1 im Sprachmodus | später |
| 15 | 25 min | [04 Marktrecherche](04-marktrecherche.md), Übung 4.1 | später |
| 16 | 40 min | [09 Wartung und Releases](09-wartung-und-releases.md), Übungen 9.1 und 9.2 | später |
| 17 | 30 min | [13 Werkzeuge und Kosten](13-werkzeuge-und-kosten.md), Übung 13.1 | später |
| 18 | 30 min | [17 KI-Modelle](17-ki-modelle.md), Übung 17.1 | später |
| 19 | 75 min | [15 Projekt-Lebenszyklus](15-projekt-lebenszyklus.md) und [16 Vom Prototyp zum Betrieb](16-vom-prototyp-zum-betrieb.md), Übungen 15.1, 16.1, 16.2 | später |
| 20 | 40 min | [18 Lizenzen und Recht](18-lizenzen-und-recht.md), Übung 18.1 | später |

Pflichtteil (Schritte 1 bis 13): etwa 10 Stunden. Alles: etwa 14 bis 15 Stunden.

## Vorschlag: Ganztägiger Workshop

| Zeit | Dauer | Inhalt |
| --- | --- | --- |
| 09:00 | 30 min | Begrüßung, Erwartungen, [Modul 00](00-warum.md), [Beispiel Musterstadt](beispiel-feuerwehr-musterstadt.md) |
| 09:30 | 30 min | [Modul 01](01-rollen-und-ablauf.md) und [Geteilte Verantwortung](geteilte-verantwortung.md), Übung GV.1 |
| 10:00 | 40 min | [Modul 03: Konzept und Prompt](03-konzept-und-prompt.md), Übung 3.2 |
| 10:40 | 15 min | Pause |
| 10:55 | 35 min | [Modul 05: Datenmodell](05-datenmodell.md), Übung 5.1 in Gruppen |
| 11:30 | 30 min | [Modul 14: KI und Datenschutz](14-ki-und-datenschutz.md), Übung 14.1 |
| 12:00 | 60 min | Mittagspause, wer mag: Übung 2.1 im Sprachmodus beim Spaziergang |
| 13:00 | 60 min | [Modul 06: Coding-Agent](06-coding-agent.md), Live-Vorführung, Übung 6.1, kurz der Modell-Standard des Projekts ([Modul 17](17-ki-modelle.md)) |
| 14:00 | 30 min | [Modul 11: Umgebungen](11-umgebungen-und-zusammenarbeit.md), Übung 11.1 |
| 14:30 | 40 min | [Modul 12: Testen](12-testen.md), Übung 12.1 in Gruppen |
| 15:10 | 15 min | Pause |
| 15:25 | 40 min | [Modul 07: Pull Request und Review](07-pull-request-und-review.md) und [Modul 19](19-gut-zusammenarbeiten.md), Übungen 7.1 und 19.2 |
| 16:05 | 35 min | [Modul 08: Sicherheit](08-sicherheit.md), Übung 8.1 in Gruppen |
| 16:40 | 20 min | Ausblick: [09](09-wartung-und-releases.md), [13](13-werkzeuge-und-kosten.md), [15](15-projekt-lebenszyklus.md), [16](16-vom-prototyp-zum-betrieb.md), [18](18-lizenzen-und-recht.md) mit je einer Grundregel |
| 17:00 | 15 min | [Modul 10: Standards](10-standards.md), Checkliste, Lernbegleiter einrichten, nächste Schritte |

Modul 02 und 04 sowie die ausführlichen Teile von 09, 13, 15 bis 18 folgen im Selbststudium.

## Vorschlag: Halbtägiger Workshop

| Dauer | Inhalt |
| --- | --- |
| 20 min | Modul 00, Beispiel und geteilte Verantwortung |
| 30 min | Modul 03 mit Übung 3.2 (Issue schreiben) |
| 15 min | Modul 05 im Überblick, Übung 5.1 gemeinsam |
| 20 min | Modul 14 mit Übung 14.1 |
| 15 min | Pause |
| 45 min | Modul 06 mit Live-Vorführung |
| 20 min | Modul 11 und 12 im Überblick: Wo echte Daten sind, ist keine KI; Sonderfälle als Testfälle |
| 30 min | Modul 07 mit Übung 7.1, Modul 19 kurz (gute Fragen, freundliche Reviews) |
| 35 min | Modul 08 mit Übung 8.1 |
| 10 min | Selbststudium-Pfad und Lernbegleiter zeigen, nächste Schritte |

Danach im Selbststudium: Grundlagen-Selbstcheck, Module 01, 10 und die ausführlichen Teile von 11, 12 und 19 (Pflicht), dann die übrigen Module.

## Vorschlag: Zwei Abende

**Abend 1: Von der Idee zum Auftrag**

| Zeit | Dauer | Inhalt |
| --- | --- | --- |
| 18:30 | 20 min | Begrüßung, Modul 00, Beispiel Musterstadt |
| 18:50 | 25 min | Modul 01 und geteilte Verantwortung, Übung GV.1 |
| 19:15 | 40 min | Modul 03 mit Übung 3.2, dazu Sonderfälle in eigenen Worten (Übung 12.1) |
| 19:55 | 10 min | Pause |
| 20:05 | 30 min | Modul 05 mit Übung 5.1 |
| 20:35 | 30 min | Modul 14 mit Übung 14.1 |
| 21:05 | 15 min | Hausaufgaben und Lernbegleiter einrichten |

Hausaufgaben bis Abend 2 (etwa 3 Stunden): Grundlagen-Selbstcheck mit dem Lernbegleiter, Übung 2.1 im Sprachmodus, Konzept zur eigenen Idee (Übung 3.1), Modul 10 lesen.

**Abend 2: Vom Auftrag zum Pull Request**

| Zeit | Dauer | Inhalt |
| --- | --- | --- |
| 18:30 | 15 min | Rückblick, Fragen aus den Hausaufgaben |
| 18:45 | 40 min | Modul 06 mit Live-Vorführung, Modell-Standard des Projekts (Modul 17) |
| 19:25 | 20 min | Modul 11 mit Übung 11.1 |
| 19:45 | 25 min | Modul 12 mit Übung 12.2 |
| 20:10 | 10 min | Pause |
| 20:20 | 35 min | Modul 07 und 19 mit Übungen 7.1 und 19.2 |
| 20:55 | 30 min | Modul 08 mit Übung 8.1 |
| 21:25 | 15 min | Ausblick auf 09, 13, 15, 16, 18; Checkliste; nächste Schritte |

## Voraussetzungen

**Für Teilnehmende:**

- ein Konto bei GitHub,
- Zugang zu einem Sprach- oder Chat-Assistenten (z. B. ChatGPT oder Claude, jeweils mit Sprachmodus), auch für den Lernbegleiter,
- Zugang zu einem Coding-Agenten (z. B. Claude Code oder OpenAI Codex, siehe [Modul 06](06-coding-agent.md)). Dafür ist in der Regel ein bezahlter Tarif nötig, Preise in [Modul 13](13-werkzeuge-und-kosten.md) (Stand: 2026-11-12, **bitte prüfen**). Vorher klären, wer bezahlt,
- ein Laptop mit aktuellem Browser; ein Smartphone für die Übung zum Sprachgespräch,
- eine eigene Idee aus dem Alltag, an der gearbeitet werden kann.

Programmierkenntnisse sind nicht nötig. Eine lokale Installation von Entwicklungswerkzeugen auch nicht.

**Für den Trainer:**

- ein Übungs-Repository mit einer kleinen Beispielanwendung, einer `AGENTS.md`, CI mit Tests und Vorlagen für Issues und Pull Requests, idealerweise mit Preview-Umgebung pro Pull Request,
- Zugriff der Teilnehmenden auf dieses Repository, eingerichtet vor dem Termin,
- erfundene Testdaten im Übungs-Repository,
- vorbereitete Beispiele: ein guter und ein schlechter Pull Request, ein Renovate-Pull-Request, ein Scanner-Bericht mit CVE,
- die Angaben des Projekts zu Tarif, Modell-Standard, freigegebenen KI-Diensten und Lizenz.

## Rollen in der Schulung

- **Trainer:** führt durch die Module, macht die Live-Vorführungen, moderiert die Übungen. Idealerweise ist das der Architekt des Projekts, in dem die Teilnehmenden später mitarbeiten.
- **Co-Trainer (optional):** jemand aus der Security- oder Datenschutzrolle für Modul 08 und 14.
- **Teilnehmende:** bringen ihr Fachwissen und eine eigene Idee mit.

Tipp für Trainer: Fachliche Beispiele aus der Gruppe sind wertvoller als das Wachbuch. Das Wachbuch ist nur der rote Faden.

## Nach der Schulung

Die Schulung ist nur der Anfang. Der eigentliche Lernschritt ist das erste echte Issue:

1. Der Architekt sucht mit jedem Teilnehmenden ein kleines, gut abgegrenztes Issue aus (z. B. ein zusätzliches Feld, eine Textänderung, eine kleine Auswertung).
2. Der Teilnehmende schreibt das Konzept mit Sonderfällen in eigenen Worten, der Architekt gibt Rückmeldung.
3. Der Teilnehmende arbeitet mit dem Agenten, der Architekt ist für Fragen erreichbar. Grundlagenfragen klärt der Lernbegleiter.
4. Pull Request, Review, Merge, Test in der Preview oder Testumgebung.
5. Kurzes Rückblick-Gespräch: Was war schwierig, was hat geholfen?

Ab dem zweiten oder dritten Pull Request läuft es meist ohne enge Begleitung. Das Review bleibt aber immer. In dieser Zeit lohnt es sich, die Module der Gruppe "später" durchzuarbeiten, vor allem 15 und 16, sobald es um eigene Projektideen oder den Betrieb geht, und 18, bevor fremder Code oder neue Abhängigkeiten ins Spiel kommen.

## Anpassung an ein Projekt

Diese Schulung ist bewusst allgemein. Jedes Projekt, das sie einsetzt, ergänzt:

- eine eigene `AGENTS.md` mit den Regeln für Agenten, auch zu Tests,
- eine Beitragsanleitung (`CONTRIBUTING.md`) mit dem konkreten Ablauf, den Ansprechpartnern und den Zugängen,
- einen Code of Conduct ([Modul 19](19-gut-zusammenarbeiten.md)) und die Lizenz des Projekts ([Modul 18](18-lizenzen-und-recht.md)),
- die Vorlagen aus [vorlagen/](vorlagen/README.md), angepasst an das Projekt,
- eine kurze Einführung in das eigene Datenmodell und die wichtigsten ADRs,
- die Liste der Umgebungen und wo KI-Agenten Zugriff haben ([Modul 11](11-umgebungen-und-zusammenarbeit.md)),
- welche KI-Dienste für welche Daten freigegeben sind ([Modul 14](14-ki-und-datenschutz.md)),
- welcher Coding-Agent, welcher Tarif und welcher Modell-Standard empfohlen werden und wer bezahlt ([Modul 13](13-werkzeuge-und-kosten.md), [Modul 17](17-ki-modelle.md)).

## Rückmeldung

Nach jeder Durchführung kurz festhalten, welche Module zu lang, zu kurz oder unklar waren, und die Schulung entsprechend verbessern.
