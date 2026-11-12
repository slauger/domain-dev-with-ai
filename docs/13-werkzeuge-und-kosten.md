# Modul 13: Werkzeuge und Kosten

Wer mitbauen will, braucht ein paar Konten und Werkzeuge, und manche davon kosten Geld. In diesem Modul lernst du, was du wirklich brauchst, was es ungefähr kostet, wie die Abrechnung bei KI-Werkzeugen funktioniert und wie man Kosten im Griff behält.

**Stand: 2026-11-12.** Preise und Tarife ändern sich oft, manchmal mehrmals im Jahr. Alle Zahlen hier sind Momentaufnahmen in US-Dollar (so stehen sie bei den Anbietern), ohne Gewähr. Vor einer Entscheidung immer die verlinkte Seite des Anbieters prüfen. Unsichere Punkte sind mit **bitte prüfen** markiert. Welche Dienste für welche Daten erlaubt sind, steht in [Modul 14](14-ki-und-datenschutz.md).

## Was du brauchst

| Werkzeug | Wofür | Pflicht? |
| --- | --- | --- |
| **GitHub-Konto** (oder die Plattform des Projekts) | Issues lesen und schreiben, Pull Requests öffnen, Reviews beantworten ([Versionskontrolle](grundlagen/versionskontrolle.md)) | ja, kostenloses Konto reicht |
| **KI-Assistent für Gespräche** | Ideen diskutieren, auch per Sprache ([Modul 02](02-ideen-per-sprache.md)), Konzepte schreiben ([Modul 03](03-konzept-und-prompt.md)) | sehr empfohlen |
| **Coding-Agent** | Code schreiben lassen ([Modul 06](06-coding-agent.md)) | ja, wenn du selbst umsetzt |
| Lokale Werkzeuge (Git, Editor, Docker) | eigene Entwicklungsumgebung ([Modul 11](11-umgebungen-und-zusammenarbeit.md)) | nein, nur für Erfahrene |

Oft deckt ein einziges Abo Assistent und Coding-Agent ab: Ein bezahlter Claude-Tarif enthält Claude Code, ein bezahlter ChatGPT-Tarif enthält Codex. Wer nur mitdiskutiert, Fehler meldet oder fachlich prüft ([Mitwirken ohne Code](mitwirken-ohne-code.md)), braucht oft gar kein Abo.

## Zwei Arten der Abrechnung

### Abo (Subscription)

Ein fester Monatspreis pro Person. Darin ist eine bestimmte Nutzungsmenge enthalten, meist als Grenze pro Zeitfenster (z. B. pro fünf Stunden und pro Woche). Ist die Grenze erreicht, muss man warten oder in einen größeren Tarif wechseln. Vorteil: Die Kosten sind planbar, es gibt keine bösen Überraschungen.

### Nutzungsbasiert über die API (Token)

Man bezahlt genau das, was man verbraucht. Abgerechnet wird in **Token**. Ein Token ist ein Stück Text, etwa ein kurzes Wort oder ein Teil eines längeren Wortes. Als grobe Faustregel sind 1.000 Token einige hundert Wörter, im Deutschen eher weniger als im Englischen. Gezählt werden:

- **Eingabe-Token:** alles, was das Modell lesen muss: dein Auftrag, die Regeln aus `AGENTS.md`, die Dateien, die der Agent öffnet, und der ganze bisherige Verlauf der Sitzung.
- **Ausgabe-Token:** alles, was das Modell schreibt: Antworten, Code, Pläne. Ausgabe-Token sind meist mehrfach so teuer wie Eingabe-Token.

Zur Größenordnung: Bei Anthropic kostet ein großes aktuelles Modell z. B. 4 Dollar pro Million Eingabe-Token und 20 Dollar pro Million Ausgabe-Token, kleinere Modelle deutlich weniger ([Quelle](https://platform.claude.com/docs/en/about-claude/pricing), **bitte prüfen**). Die API-Abrechnung lohnt sich vor allem für Organisationen, die KI in eigene Abläufe oder in die Software einbauen. Für einzelne Mitwirkende ist ein Abo meist einfacher.

### Warum lange Sitzungen und große Repositories mehr kosten

Ein Agent liest bei jedem Schritt den bisherigen Verlauf erneut mit. Je länger eine Sitzung dauert und je mehr Dateien er öffnet, desto mehr Eingabe-Token fallen bei jedem weiteren Schritt an. Eine Sitzung, die sich zwei Stunden im Kreis dreht, kostet ein Vielfaches einer kurzen, klaren Aufgabe, und sie liefert meist auch das schlechtere Ergebnis. Im Abo zeigt sich das so, dass die Nutzungsgrenze schneller erreicht ist.

## Was kostet was? (Stand: 2026-11-12)

### Claude (Anthropic)

| Tarif | Preis laut Anbieter | Hinweise |
| --- | --- | --- |
| Free | 0 $ | kein Claude Code |
| Pro | 20 $/Monat, bei Jahreszahlung 17 $/Monat | Claude Code enthalten |
| Max | 100 $/Monat | etwa 5-fache Nutzung von Pro |
| Ultra | 200 $/Monat | laut Seite etwa 10-fache Nutzung von Pro pro Woche; Name und Umfang haben sich 2026 geändert, **bitte prüfen** |
| Team (Standard-Platz) | 25 $/Person/Monat, bei Jahreszahlung 20 $ | ab 2 Personen; Premium-Platz 125 $ bzw. 100 $ |
| Enterprise | auf Anfrage | Mindestanzahl Plätze, Nutzung zusätzlich nach API-Preisen, **bitte prüfen** |

Quelle: [claude.com/pricing](https://claude.com/pricing).

### ChatGPT und Codex (OpenAI)

| Tarif | Preis laut Anbieter | Hinweise |
| --- | --- | --- |
| Free | 0 $ | Codex nur für kleine Aufgaben |
| Go | 8 $/Monat | Codex für leichte Aufgaben |
| Plus | 20 $/Monat | Codex im Web, CLI, IDE und iOS |
| Pro | ab 100 $/Monat (Stufen 100, 200 oder 500 $) | höhere Grenzen |
| Business | 20 $/Person/Monat bei Jahreszahlung, 25 $ bei Monatszahlung | ab 2 Personen; Angaben auf Drittseiten widersprechen sich teils, **bitte prüfen** |
| Enterprise, Edu | auf Anfrage | |

Quellen: [Codex Pricing](https://learn.chatgpt.com/docs/pricing), [chatgpt.com/pricing](https://chatgpt.com/pricing). Codex lässt sich alternativ mit einem API-Schlüssel nutzen und wird dann nach API-Preisen abgerechnet, allerdings ohne Cloud-Funktionen ([Quelle](https://learn.chatgpt.com/docs/pricing)).

### GitHub Copilot

| Tarif | Preis laut Anbieter | Hinweise |
| --- | --- | --- |
| Free | 0 $ | begrenzte Chat- und Agent-Nutzung |
| Pro | 10 $/Monat | enthält Guthaben ("AI Credits") für Chat und Agent |
| Pro+ | 39 $/Monat | mehr Guthaben |
| Max | 100 $/Monat | noch mehr Guthaben |
| Business, Enterprise | auf Anfrage | Admins legen Grenzen fest |

Zusätzliche Nutzung wird über "AI Credits" abgerechnet, 1 Credit = 0,01 $. Das Abrechnungsmodell hat sich 2026 geändert, **bitte prüfen**. Quelle: [github.com/features/copilot/plans](https://github.com/features/copilot/plans).

### Typische Monatskosten pro Person (grobe Richtwerte)

| Nutzung | Typischer Rahmen |
| --- | --- |
| Mitdiskutieren, Fehler melden, fachlich prüfen | 0 $ |
| Gelegentlich kleine Aufgaben, ein paar Abende im Monat | etwa 20 $ (Einstiegs-Abo) |
| Regelmäßig, mehrere Pull Requests pro Woche | 20 bis 100 $ |
| Sehr intensiv, mehrere Agenten parallel, täglich | 100 bis 200 $ und mehr |

Das sind Erfahrungswerte, keine Zusagen der Anbieter. Wer an die Grenze seines Abos stößt, sollte zuerst prüfen, ob die Aufträge kleiner und klarer werden können, bevor er einen teureren Tarif nimmt.

## Wer bezahlt?

Das muss die Organisation entscheiden, bevor es losgeht, und es sollte aufgeschrieben werden ([Ein Projekt vorbereiten](neues-projekt.md#was-kostet-das-wirklich)). Mögliche Wege:

- Jeder nutzt sein privates Abo. Einfach, aber unfair und schwer planbar. Außerdem fehlt dann oft der Vertrag zur Auftragsverarbeitung, der für Daten der Organisation nötig sein kann ([Modul 14](14-ki-und-datenschutz.md)).
- Die Organisation bezahlt Team- oder Business-Plätze für aktive Mitwirkende. Planbarer, mit zentraler Verwaltung und meist besseren Datenschutz-Bedingungen.
- Die Organisation stellt ein API-Konto mit festem Budget bereit.

Im Beispiel hat der Förderverein der Feuerwehr Musterstadt beschlossen, zwei Team-Plätze für die aktivsten Mitwirkenden zu bezahlen. Alle anderen arbeiten ohne Abo mit, über Issues und fachliche Prüfung ([Beispiel](beispiel-feuerwehr-musterstadt.md)).

## Budgets und Warnungen

Bei nutzungsbasierter Abrechnung immer zuerst ein Limit setzen, dann loslegen:

- **Ausgabegrenze (Budget):** Ein harter Höchstbetrag pro Monat. Ist er erreicht, stoppt die Nutzung. Die großen Anbieter bieten das in ihren Abrechnungseinstellungen an, bei GitHub für Copilot und Actions ebenso ([Quelle](https://docs.github.com/en/billing/managing-your-billing/preventing-overspending), **bitte prüfen**).
- **Warnungen:** Eine E-Mail bei z. B. 50 % und 80 % des Budgets.
- **Regelmäßig hineinschauen:** Einmal im Monat prüft jemand aus der Organisation die Abrechnung, z. B. die Kassiererin oder der Maintainer.

Kostenlose Stufen (Free-Tarife) sind gut zum Ausprobieren. Sie haben aber enge Grenzen, enthalten oft keinen Coding-Agenten und verwenden Eingaben je nach Einstellung zum Training. Für Daten der Organisation sind sie nicht geeignet ([Modul 14](14-ki-und-datenschutz.md)).

## Kosten der Software selbst

Neben den KI-Werkzeugen kostet auch der Betrieb der fertigen Software Geld:

- **Hosting:** Server oder Cloud-Dienst, Datenbank, Speicher für Backups. Für eine kleine Vereinsanwendung oft einige Euro bis einige zehn Euro im Monat, je nach Anbieter und Anforderungen (Standort in der EU, Backups, Verfügbarkeit).
- **Domain:** wenige Euro bis rund 20 Euro im Jahr.
- **Zertifikate:** meist kostenlos, z. B. über Let's Encrypt ([Web und Daten](grundlagen/web-und-daten.md#https-tls-und-zertifikate)).
- **Zeit für Wartung:** Die größte Position, auch wenn sie ehrenamtlich ist ([Modul 09](09-wartung-und-releases.md)).

### CI-Minuten bei privaten Repositories

Die automatischen Prüfungen auf GitHub (GitHub Actions) sind für öffentliche Repositories auf den Standard-Rechnern kostenlos. Bei privaten Repositories ist ein Guthaben enthalten: 12 $ im Monat bei GitHub Free, 18 $ bei Pro und Team. Mit dem Standard-Linux-Rechner (0,006 $ pro Minute) sind das grob 2.000 bzw. 3.000 Minuten. Darüber wird abgerechnet ([Quelle](https://docs.github.com/en/billing/concepts/product-billing/github-actions), **bitte prüfen**). Viele End-to-End-Tests im Browser ([Modul 12](12-testen.md)) und Previews pro Pull Request ([Modul 11](11-umgebungen-und-zusammenarbeit.md)) verbrauchen schnell viele Minuten. Manche Projekte lassen die volle Testkette deshalb nur bei Bedarf oder vor dem Merge laufen. Wie das im Projekt geregelt ist, steht in `AGENTS.md`.

## Tipps zum Sparen

- **Kleine Aufgaben.** Ein Issue pro Sitzung. Kleine Aufgaben brauchen weniger Token und gelingen öfter beim ersten Versuch.
- **Klare Aufträge.** Ein guter Prompt mit Issue-Link und Abnahmekriterien ([Modul 03](03-konzept-und-prompt.md)) spart viele Rückfragen und Korrekturschleifen.
- **Erst planen lassen.** Ein Plan kostet wenig. Ein falsch gebautes Ergebnis kostet viel.
- **Den Agenten nicht im Kreis laufen lassen.** Wenn er denselben Fehler zum dritten Mal behebt: abbrechen ([Modul 06](06-coding-agent.md#den-agenten-steuern-und-hinterfragen)).
- **Früh stoppen.** Merkst du, dass der Agent in die falsche Richtung läuft, sofort unterbrechen, nicht "mal sehen, was rauskommt".
- **Neue Sitzung statt endloser Verlauf.** Für die nächste Aufgabe eine frische Sitzung starten.
- **Das passende Modell wählen.** Für einfache Aufgaben (Texte, kleine Korrekturen) reicht oft ein kleineres, günstigeres Modell.

## Checkliste

- [ ] Ich habe ein GitHub-Konto (bzw. ein Konto auf der Plattform des Projekts).
- [ ] Ich weiß, welches KI-Werkzeug ich nutze und wer es bezahlt.
- [ ] Die Organisation hat entschieden, wer welche Kosten trägt.
- [ ] Bei nutzungsbasierter Abrechnung sind Budget und Warnungen eingerichtet.
- [ ] Ich halte Aufgaben klein und breche ab, wenn der Agent sich im Kreis dreht.

## Zusammenfassung

- Pflicht ist nur ein GitHub-Konto. Wer selbst baut, braucht einen Coding-Agenten, meist im Abo enthalten.
- Abos sind planbar, API-Abrechnung zahlt nach Token. Lange Sitzungen kosten mehr.
- Einstieg ab rund 20 $ im Monat, intensive Nutzung 100 $ und mehr.
- Die Organisation entscheidet, wer zahlt, und setzt Budgets.
- Auch Hosting, Domain und CI-Minuten kosten Geld.

## Quellen

Alle abgerufen am 2026-11-12. Preise ohne Gewähr, **bitte prüfen**.

- [Claude: Pläne und Preise](https://claude.com/pricing)
- [Claude API: Preise](https://platform.claude.com/docs/en/about-claude/pricing)
- [ChatGPT: Pläne und Preise](https://chatgpt.com/pricing)
- [Codex Pricing](https://learn.chatgpt.com/docs/pricing)
- [GitHub Copilot Pläne](https://github.com/features/copilot/plans)
- [GitHub Actions Abrechnung](https://docs.github.com/en/billing/concepts/product-billing/github-actions)
- [GitHub: Ausgaben begrenzen](https://docs.github.com/en/billing/managing-your-billing/preventing-overspending)
