# Ein Projekt für diese Arbeitsweise vorbereiten

Die Schulung beschreibt eine Arbeitsweise. Damit sie in einem echten Projekt funktioniert, braucht das Projekt ein paar feste Bausteine: Regeln für Agenten, Formulare für Meldungen, eine Test-Umgebung, automatische Prüfungen und benannte Verantwortliche. Dieses Kapitel ist ein Bausatz für den Maintainer. Es sagt, was ein Projekt braucht, bevor Domänenexperten und ihre Agenten mitbauen, und was später dazukommen kann.

## Warum ein einheitlicher Bausatz?

Peter betreut neben dem Wachbuch noch die Buchungs-App der Pension Seeblick und zwei weitere Projekte. Das geht nur, wenn jedes Projekt gleich aufgebaut ist: gleiche Dateien an gleichen Orten, gleiche Formulare, gleiche Prüfungen, gleicher Release-Ablauf. Dann weiß Peter in jedem Projekt sofort, wo was steht, und die Agenten der Domänenexperten finden ihre Regeln immer an derselben Stelle. Ein Maintainer kann mehrere Projekte nur dann verantwortlich betreuen, wenn jedes Projekt denselben Bausatz nutzt. Jede Ausnahme kostet ihn Zeit, die ihm bei den Reviews fehlt.

## Die Bausteine

### Regeln und Einstieg

| Baustein | Was es ist | Wozu |
| --- | --- | --- |
| `AGENTS.md` | Regeln für Coding-Agenten im Repository: Sprache, Aufbau, Befehle zum Testen, was der Agent nie tun darf | Jeder Agent liest sie zuerst. Ohne sie rät er. Viele Werkzeuge lesen `AGENTS.md`, Claude Code liest `CLAUDE.md`, die auf `AGENTS.md` verweisen kann. |
| `CONTRIBUTING.md` | Anleitung für Menschen: wie man mitarbeitet, wie ein Pull Request aussieht, wer reviewt | Neue Mitwirkende wissen, was erwartet wird. |
| `README.md` | Was ist das Projekt, für wen, wo geht es weiter | Der erste Eindruck. |
| `SECURITY.md` | Wie man eine Sicherheitslücke **nicht öffentlich** meldet | Damit niemand eine Lücke in ein öffentliches Issue schreibt. |

### Meldungen und Entscheidungen

| Baustein | Was es ist | Wozu |
| --- | --- | --- |
| Issue-Formulare | Formulare für Fehler, Wunsch und Antwort auf eine offene Frage, mit Label `aus-der-praxis` | Meldungen ohne Technikwissen, mit den richtigen Fragen. Vorlagen in [vorlagen/github/](../vorlagen/github/README.md), siehe [Mitwirken ohne Code](mitwirken-ohne-code.md). |
| Pull-Request-Vorlage | Vorbefüllter Text für jeden PR: was, warum, wie getestet, Bezug zum Issue | Reviews werden schneller, weil jeder PR gleich aufgebaut ist (siehe [Modul 07](07-pull-request-und-review.md)). |
| Entscheidungsseite | Eine Seite (oder ein Label) mit allen offenen Fragen: Kontext, Optionen, Folgen | Domänenexperten sehen, wo ihre Erfahrung gebraucht wird. |
| Ordner für ADRs mit Vorlage | z. B. `docs/adr/` mit `0000-vorlage.md`. ADR heißt Architekturentscheidung (Architecture Decision Record): ein kurzes Dokument, warum etwas so entschieden wurde | Später muss niemand raten, auch kein Agent (siehe [Modul 05](05-datenmodell.md)). |

### Dokumentation

Eine feste Gliederung hilft Menschen und Agenten gleichermaßen. Vorschlag:

| Teil | Inhalt |
| --- | --- |
| Einstieg | Was ist das, für wen, wie probiere ich es aus |
| Umfang (Scope) | Was die Software tun soll und ausdrücklich nicht tun soll |
| Architektur | Aus welchen Teilen sie besteht und wie die zusammenspielen |
| Datenmodell | Welche Daten es gibt, wie sie zusammenhängen, welche persönlich oder sensibel sind |
| Betrieb | Wo und wie die Software läuft, Backups, Updates, Test-Umgebung |
| Mitarbeit | Stufen der Mitarbeit, Formulare, Nachschlagewerk, Ablauf eines Pull Requests |

### Technik und Prüfungen

| Baustein | Was es ist | Wozu |
| --- | --- | --- |
| Test-Umgebung | Eigene Kopie der Software mit **ausschließlich erfundenen Daten** | Gefahrlos ausprobieren und fachlich prüfen (siehe [Fachliche Prüfung](fachliche-pruefung.md)). Nie eine Kopie echter Daten. |
| CI mit schnellen Prüfungen | Bei jedem Pull Request: Tests, Formatierung, Sicherheits-Scans, möglichst in wenigen Minuten | Fehler fallen auf, bevor ein Mensch Zeit investiert. Pflichtprüfungen sind so eingestellt, dass ohne Grün kein Merge möglich ist. |
| Automatisches Review | z. B. GitHub Copilot code review, mit Projektanweisungen in `.github/copilot-instructions.md` | Frühe Hinweise auf jedem PR. Die Anweisungen sagen dem Bot, worauf er in diesem Projekt achten soll ([Quelle](https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions), Stand: 2026-11-12). |
| Renovate | Werkzeug, das automatisch Pull Requests für Updates von Abhängigkeiten öffnet | Updates kommen regelmäßig und klein statt selten und groß (siehe [Modul 09](09-wartung-und-releases.md), [Quelle](https://docs.renovatebot.com/), Stand: 2026-11-12). |
| Release-Ablauf | Feste Regel, wie aus dem Stand im Repository eine Version wird, z. B. mit semantic-release | Jeder weiß, was in welcher Version steckt und wie man zurückgeht. |
| Tutor-Paket | Datei mit Schulung plus Projektdokumentation zum Hochladen in einen Assistenten | Grundfragen beantwortet der Assistent, nicht der Maintainer (siehe [tutor/README.md](../tutor/README.md) und [Nachschlagewerk einrichten](nachschlagewerk-einrichten.md)). |

### Sicherheits-Grundausstattung

- **Geheimnis-Scan:** Prüft, ob Passwörter oder Schlüssel ins Repository geraten, am besten mit Sperre schon beim Hochladen (z. B. GitHub secret scanning mit push protection, [Quelle](https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning), Stand: 2026-11-12; für private Repositories teils kostenpflichtig, **bitte prüfen**).
- **Prüfung der Abhängigkeiten:** Meldet bekannte Sicherheitslücken in verwendeten Bibliotheken (z. B. Dependabot alerts, `npm audit`, Trivy).
- **Keine persönlichen Daten im Repository:** keine echten Mitgliederlisten, keine Gästedaten, keine Exporte, keine Bildschirmfotos mit echten Namen. Auch nicht in Issues und Testdaten.
- **Rechte im Repository:** Domänenexperten bekommen die Rechte, die sie brauchen. Direktes Schreiben auf den Hauptzweig ist für alle gesperrt, auch für den Maintainer (Branch-Schutz).

Mehr dazu in [Modul 08](08-sicherheit.md).

### Benannte Rollen

In `CONTRIBUTING.md` oder `README.md` steht mit Namen, wer welche Rolle hat (siehe [Modul 01](01-rollen-und-ablauf.md)):

- **Maintainer:** entscheidet, was hineinkommt, gibt Pull Requests frei, verantwortet Releases.
- **Security:** prüft Änderungen mit Sicherheitsbezug. Gibt es niemanden, steht dort ausdrücklich: "übernimmt der Maintainer".
- **Domänenexperten:** wer fachlich Auskunft gibt und offene Fragen beantwortet, ggf. pro Bereich (z. B. Atemschutz, Fahrzeuge).
- **Vertretung:** wer übernimmt, wenn der Maintainer ausfällt.

## Checkliste

### Pflicht vor dem ersten externen Beitrag

Bevor jemand außer dem Maintainer mit einem Agenten mitbaut:

- [ ] `AGENTS.md` mit Regeln, Testbefehlen und Verboten
- [ ] `CONTRIBUTING.md` mit Ablauf und benannten Rollen
- [ ] `SECURITY.md` mit nicht-öffentlichem Meldeweg
- [ ] Branch-Schutz: kein direktes Schreiben auf den Hauptzweig, Merge nur mit grüner CI und Freigabe
- [ ] CI mit Tests und schnellen Prüfungen auf jedem Pull Request
- [ ] Geheimnis-Scan und Prüfung der Abhängigkeiten aktiv
- [ ] Keine persönlichen Daten im Repository (einmal gezielt geprüft)
- [ ] Test-Umgebung mit erfundenen Daten
- [ ] Issue-Formulare für Fehler, Wunsch, Antwort
- [ ] Pull-Request-Vorlage
- [ ] Ordner für ADRs mit Vorlage
- [ ] Dokumentation mindestens: Einstieg, Umfang, Datenmodell, Mitarbeit

### Später

Sinnvoll, sobald die Grundlagen laufen:

- [ ] Automatisches Review mit Projektanweisungen
- [ ] Renovate
- [ ] Automatischer Release-Ablauf
- [ ] Entscheidungsseite mit offenen Fragen
- [ ] Vollständige Dokumentation (Architektur, Betrieb)
- [ ] Tutor-Paket mit Projektdokumentation
- [ ] Anleitung für das Nachschlagewerk mit den Repository-Namen des Projekts

## Was kostet das wirklich?

Gerade Vereine und kleine Betriebe hoffen, mit eigener Software Lizenzkosten zu sparen. Das kann aufgehen, aber die Rechnung hat mehr Posten als die Lizenz.

| Spart man | Kostet dafür |
| --- | --- |
| Lizenzgebühren für ein fertiges Produkt | Betrieb: Server, Domain, Backups, Überwachung |
| Anpassungswünsche, die der Hersteller nie umsetzt | Wartung: Updates von Abhängigkeiten, Sicherheitslücken schließen, auch wenn niemand neue Funktionen will |
| | KI-Werkzeuge für die Mitwirkenden (Abos oder API-Kosten) |
| | Verantwortung: Datenschutz, Verfügbarkeit, wer haftet, wenn Daten verloren gehen |
| | Zeit des Maintainers für Reviews und Releases |

Die wichtigste Frage ist nicht "Was kostet es heute?", sondern: **Wer wartet diese Software in drei Jahren?** Wenn der eine engagierte Kamerad wegzieht oder der Maintainer keine Zeit mehr hat, steht der Verein mit einer Software da, die niemand mehr versteht. Deshalb vor dem Start klären und aufschreiben:

- wer die Software betreibt und bezahlt (Verein, Gemeinde, Betrieb),
- wer Maintainer ist und wer ihn vertritt,
- was passiert, wenn niemand mehr wartet (Daten exportieren, auf ein fertiges Produkt wechseln),
- ob ein fertiges Produkt nicht doch reicht (siehe [Modul 04](04-marktrecherche.md)).

Der Bausatz in diesem Kapitel senkt dieses Risiko: Ein Projekt mit klaren Regeln, Tests, Dokumentation und ADRs kann ein neuer Maintainer übernehmen. Ein Projekt ohne das meist nicht.

## Kurz zusammengefasst

- Jedes Projekt braucht denselben Bausatz: Regeln, Formulare, Dokumentation, Test-Umgebung, CI, Sicherheits-Grundausstattung, benannte Rollen.
- Einiges ist Pflicht vor dem ersten externen Beitrag, anderes kommt später.
- Nur mit einheitlichem Bausatz kann ein Maintainer mehrere Projekte betreuen.
- Eigene Software spart Lizenzen, kostet aber Betrieb, Wartung und Verantwortung. Vorher klären, wer in drei Jahren wartet.

## Siehe auch

- [starter/](../starter/README.md): Projektgerüst zum Kopieren mit allen Bausteinen aus diesem Kapitel, und [Modul 15](15-projekt-lebenszyklus.md) zum Weg vom Prototyp zur gemeinsamen Entwicklung.
