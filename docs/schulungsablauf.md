# Schulungsablauf

Diese Seite beschreibt, wie die Schulung durchgeführt werden kann: in welchen Formaten, in welcher Reihenfolge, mit welchen Voraussetzungen und wie es danach weitergeht.

## Einstieg

Jede Durchführung beginnt mit [Modul 00: Warum diese Schulung](00-warum.md). Es erklärt, warum Domänenexperten heute mitbauen sollen, warum sie dabei Dinge wie TLS, Passwörter, Rechte, Datenschutz und Updates nicht kennen müssen, und warum deshalb der Ablauf mit Reviews diese Lücken auffangen muss. Ohne dieses Verständnis wirken die späteren Regeln wie Bürokratie.

## Formate

| Format | Für wen | Dauer | Inhalt |
| --- | --- | --- | --- |
| Selbststudium | Einzelne, die zeitlich flexibel sein müssen | etwa 6 bis 8 Stunden, verteilt | alle Module lesen, Übungen allein machen, danach ein Gespräch mit dem Architekten |
| Workshop halbtags | Teams mit wenig Zeit, als Einstieg | etwa 4 Stunden | Module 00, 01, 03, 06, 07, 08 im Überblick, eine praktische Übung |
| Workshop ganztags | Teams, die direkt loslegen wollen | etwa 7 Stunden plus Pausen | alle Module, mehrere Übungen, erster Pull Request im Übungs-Repository |
| Mentoring | nach dem Workshop oder Selbststudium | einige Wochen begleitend | erstes echtes Issue mit Begleitung durch den Architekten |

Bewährt hat sich: Workshop (halb- oder ganztags) plus Mentoring beim ersten echten Issue.

## Vorschlag: Ganztägiger Workshop

| Zeit | Dauer | Inhalt |
| --- | --- | --- |
| 09:00 | 30 min | Begrüßung, Erwartungen, [Modul 00: Warum](00-warum.md) |
| 09:30 | 30 min | [Modul 01: Rollen und Ablauf](01-rollen-und-ablauf.md), Übung 1.1 |
| 10:00 | 30 min | [Modul 02: Ideen im Gespräch](02-ideen-per-sprache.md), Beispielgespräch vorspielen |
| 10:30 | 15 min | Pause |
| 10:45 | 45 min | [Modul 03: Konzept und Prompt](03-konzept-und-prompt.md), Übungen 3.1 und 3.2 |
| 11:30 | 20 min | [Modul 04: Marktrecherche](04-marktrecherche.md) |
| 11:50 | 40 min | [Modul 05: Datenmodell](05-datenmodell.md), Übung 5.1 in Gruppen |
| 12:30 | 60 min | Mittagspause, wer mag: Übung 2.1 (Sprachgespräch) beim Spaziergang |
| 13:30 | 60 min | [Modul 06: Coding-Agent](06-coding-agent.md), Live-Vorführung, Übung 6.1 |
| 14:30 | 45 min | [Modul 07: Pull Request und Review](07-pull-request-und-review.md), Übung 7.1 |
| 15:15 | 15 min | Pause |
| 15:30 | 45 min | [Modul 08: Sicherheit](08-sicherheit.md), Übung 8.1 in Gruppen |
| 16:15 | 25 min | [Modul 09: Wartung und Releases](09-wartung-und-releases.md), Übung 9.1 |
| 16:40 | 10 min | [Modul 10: Standards](10-standards.md) |
| 16:50 | 10 min | Checkliste "Bereit für den ersten Pull Request", nächste Schritte |

## Vorschlag: Halbtägiger Workshop

| Dauer | Inhalt |
| --- | --- |
| 20 min | Modul 00 und 01 |
| 40 min | Modul 03 mit Übung 3.2 (Issue schreiben) |
| 15 min | Modul 05 im Überblick, Übung 5.1 gemeinsam |
| 15 min | Pause |
| 50 min | Modul 06 mit Live-Vorführung |
| 30 min | Modul 07 mit Übung 7.1 |
| 40 min | Modul 08 mit Übung 8.1 |
| 10 min | Ausblick auf Module 02, 04, 09, 10 zum Selbststudium, nächste Schritte |

## Voraussetzungen

**Für Teilnehmende:**

- ein Konto bei GitHub,
- Zugang zu einem Sprach- oder Chat-Assistenten (z. B. ChatGPT oder Claude, jeweils mit Sprachmodus),
- Zugang zu einem Coding-Agenten (z. B. Claude Code oder OpenAI Codex, siehe [Modul 06](06-coding-agent.md)). Dafür ist in der Regel ein bezahlter Tarif nötig (Stand: 2026-11-12, **bitte prüfen**),
- ein Laptop mit aktuellem Browser; ein Smartphone für die Übung zum Sprachgespräch,
- eine eigene Idee aus dem Alltag, an der gearbeitet werden kann.

Programmierkenntnisse sind nicht nötig. Eine lokale Installation von Entwicklungswerkzeugen auch nicht.

**Für den Trainer:**

- ein Übungs-Repository mit einer kleinen Beispielanwendung, einer `AGENTS.md`, CI und Vorlagen für Issues und Pull Requests,
- Zugriff der Teilnehmenden auf dieses Repository, eingerichtet vor dem Termin,
- erfundene Testdaten im Übungs-Repository,
- vorbereitete Beispiele: ein guter und ein schlechter Pull Request, ein Renovate-Pull-Request.

## Rollen in der Schulung

- **Trainer:** führt durch die Module, macht die Live-Vorführungen, moderiert die Übungen. Idealerweise ist das der Architekt des Projekts, in dem die Teilnehmenden später mitarbeiten.
- **Co-Trainer (optional):** jemand aus der Security- oder Datenschutzrolle für Modul 08.
- **Teilnehmende:** bringen ihr Fachwissen und eine eigene Idee mit.

Tipp für Trainer: Fachliche Beispiele aus der Gruppe sind wertvoller als das Wachbuch. Das Wachbuch ist nur der rote Faden.

## Nach der Schulung

Die Schulung ist nur der Anfang. Der eigentliche Lernschritt ist das erste echte Issue:

1. Der Architekt sucht mit jedem Teilnehmenden ein kleines, gut abgegrenztes Issue aus (z. B. ein zusätzliches Feld, eine Textänderung, eine kleine Auswertung).
2. Der Teilnehmende schreibt das Konzept, der Architekt gibt Rückmeldung.
3. Der Teilnehmende arbeitet mit dem Agenten, der Architekt ist für Fragen erreichbar.
4. Pull Request, Review, Merge, Test in der Testumgebung.
5. Kurzes Rückblick-Gespräch: Was war schwierig, was hat geholfen?

Ab dem zweiten oder dritten Pull Request läuft es meist ohne enge Begleitung. Das Review bleibt aber immer.

## Anpassung an ein Projekt

Diese Schulung ist bewusst allgemein. Jedes Projekt, das sie einsetzt, ergänzt:

- eine eigene `AGENTS.md` mit den Regeln für Agenten,
- eine Beitragsanleitung (`CONTRIBUTING.md`) mit dem konkreten Ablauf, den Ansprechpartnern und den Zugängen,
- die Vorlagen aus [vorlagen/](vorlagen/README.md), angepasst an das Projekt,
- eine kurze Einführung in das eigene Datenmodell und die wichtigsten ADRs,
- die Angabe, welcher Coding-Agent und welche Tarife empfohlen werden.

## Rückmeldung

Nach jeder Durchführung kurz festhalten, welche Module zu lang, zu kurz oder unklar waren, und die Schulung entsprechend verbessern.
