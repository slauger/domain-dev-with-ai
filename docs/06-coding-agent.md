# Modul 06: Mit dem Coding-Agenten arbeiten

In diesem Modul lernst du, was ein Coding-Agent ist, welche Werkzeuge es gibt, wo sie laufen und wie du einen Agenten so führst, dass am Ende ein kleiner, verständlicher Pull Request entsteht.

## Was ist ein Coding-Agent?

Ein Chat-Assistent (z. B. ChatGPT oder Claude in der App) beantwortet Fragen und schreibt Texte. Ein **Coding-Agent** geht weiter: Er arbeitet selbständig in einem Repository (der Ablage mit dem gesamten Code eines Projekts). Er liest Dateien, ändert sie, führt Befehle wie Tests aus, liest die Ergebnisse und korrigiert sich. Am Ende legt er einen Branch an und bereitet einen Pull Request vor.

Du kannst dir den Agenten wie eine sehr schnelle, sehr belesene Aushilfe vorstellen, die das Projekt aber nicht kennt, die Feuerwehr nicht kennt und manchmal mit großer Überzeugung Unsinn erzählt. Deshalb brauchst du einen klaren Auftrag, und deshalb prüft immer ein Mensch das Ergebnis.

## Die Werkzeuge im Überblick

**Stand: 2026-11-12.** Die Angebote ändern sich schnell. Preise, Tarife und Funktionen vor einer Entscheidung auf den verlinkten Seiten prüfen. Unsichere Punkte sind mit **bitte prüfen** markiert.

### Claude Code (Anthropic)

| Variante | Wo es läuft | Kurz gesagt |
| --- | --- | --- |
| Claude Code im Web ([claude.ai/code](https://claude.ai/code)) | Cloud-Sandbox | Im Browser, GitHub verbinden, Repository wählen, Aufgabe beschreiben. Diff-Ansicht und Knopf zum Anlegen des Pull Requests. |
| Claude-App für iOS und Android | Cloud-Sandbox | Aufgaben unterwegs starten, Rückfragen beantworten, Stand ansehen. |
| Claude Desktop-App | lokal oder Cloud | Grafische Oberfläche auf dem eigenen Rechner, wahlweise lokal oder in der Cloud. |
| Claude Code CLI | lokal (Aufgaben auch in die Cloud schickbar) | Läuft im Terminal, volle Kontrolle, braucht lokale Einrichtung. |

Für Claude Code wird ein bezahlter Claude-Tarif benötigt; ein kostenloses Konto reicht nicht. Cloud-Sitzungen zählen auf das Nutzungskontingent des Tarifs. Welche Tarife genau dazugehören: **bitte prüfen** ([Quelle](https://code.claude.com/docs/en/web-quickstart)).

### OpenAI Codex

| Variante | Wo es läuft | Kurz gesagt |
| --- | --- | --- |
| Codex Cloud ([chatgpt.com/codex](https://chatgpt.com/codex)) | Cloud-Sandbox | Im Browser über ChatGPT, GitHub verbinden, Aufgabe beschreiben, auf Wunsch Pull Request anlegen. Internetzugriff während der Arbeit ist standardmäßig gesperrt. |
| ChatGPT-App (mobil) | Cloud-Sandbox | Aufgaben unterwegs starten und prüfen. iOS ist belegt, Android **bitte prüfen**. |
| Codex IDE-Erweiterung | lokal, größere Aufgaben in die Cloud delegierbar | Agent direkt im Editor, z. B. VS Code. |
| Codex CLI | lokal | Läuft im Terminal, volle Kontrolle. |

OpenAI nennt die Codex-Funktionen in mehreren ChatGPT-Tarifen; Web, CLI, IDE und Cloud-Funktionen werden ausdrücklich ab dem Plus-Tarif genannt. Genaue Grenzen je Tarif **bitte prüfen** ([Quelle](https://learn.chatgpt.com/docs/pricing)).

### Projektregeln lesen beide

Beide Agenten lesen eine Datei `AGENTS.md` im Repository automatisch. Dort stehen die Regeln des Projekts für Agenten, z. B. welche Prüfungen vor dem Pull Request laufen müssen und was verboten ist. Claude Code liest `AGENTS.md`, solange keine eigene `CLAUDE.md` vorhanden ist ([Quelle](https://code.claude.com/docs/en/memory#agents-md)); Codex liest `AGENTS.md` immer ([Quelle](https://learn.chatgpt.com/docs/agent-configuration/agents-md)).

## Lokal oder Cloud-Sandbox?

Eine **Cloud-Sandbox** ist ein abgeschotteter Rechner beim Anbieter. Der Agent bekommt dort eine Kopie des Repositories, arbeitet darin und liefert einen Branch zurück. **Lokal** heißt: Der Agent arbeitet auf deinem eigenen Rechner, mit deinen Programmen und deinem Zugang.

| | Cloud-Sandbox | Lokal |
| --- | --- | --- |
| Einrichtung | GitHub verbinden, fertig | Git, Entwicklungswerkzeuge und Agent installieren |
| Läuft weiter, wenn der Laptop zu ist | ja | nein |
| Vom Handy steuerbar | ja | nur eingeschränkt |
| Anwendung im Browser ausprobieren | eingeschränkt | ja |
| Alle Prüfungen des Projekts | oft nur teilweise | ja |
| Risiko für deinen Rechner | gering, alles läuft beim Anbieter | Agent führt Befehle auf deinem Rechner aus |
| Gut für | kleine, klar beschriebene Aufgaben, Texte, Doku | größere Änderungen, Oberfläche, Datenbank |

Fehlen in der Cloud einzelne Prüfungen, ist das kein Drama: Die automatischen Prüfungen auf GitHub (CI, siehe [Modul 07](07-pull-request-und-review.md)) laufen beim Pull Request ohnehin.

## Vor- und Nachteile für Einsteiger

| Variante | Vorteile | Nachteile |
| --- | --- | --- |
| Web (Claude Code oder Codex Cloud) | nichts zu installieren, übersichtliche Diff-Ansicht, Pull Request per Knopfdruck | nicht alle Prüfungen verfügbar, Nutzung zählt aufs Kontingent |
| Mobile App | Ideen sofort anstoßen, Rückfragen unterwegs beantworten | Code auf dem Handy zu lesen ist mühsam, für Reviews ungeeignet |
| Desktop-App | grafische Oberfläche, Wechsel zwischen lokal und Cloud | für lokales Arbeiten Einrichtung nötig |
| IDE-Erweiterung | Agent direkt neben dem Code | Editor und Einrichtung nötig, mehr Technik auf einmal |
| CLI (Terminal) | volle Kontrolle, alle Prüfungen lokal | Terminal-Kenntnisse nötig, Einrichtung aufwendig |

## Empfehlung

**Starte in der Cloud, im Browser.** Claude Code im Web oder Codex Cloud brauchen keine Installation. Du verbindest GitHub, wählst das Repository, gibst den Auftrag und bekommst einen Branch mit Diff-Ansicht. Das Handy eignet sich zum Anstoßen und für Rückfragen, das Durchsehen des Ergebnisses aber besser am großen Bildschirm.

Welcher Anbieter? Der, für den du schon ein Abo hast. Das Vorgehen ist wichtiger als das Werkzeug. Eine lokale Einrichtung lohnt sich erst, wenn du regelmäßig größere Änderungen machst. Dabei hilft der Architekt beim ersten Mal.

Für private Repositories muss der Inhaber dem Agenten einmalig Zugriff geben (z. B. über eine GitHub-App des Anbieters). Wie das im konkreten Projekt geregelt ist, steht in dessen Beitragsanleitung; die genauen Schritte haben sich 2026 bei beiden Anbietern geändert, **bitte prüfen**.

## Den Agenten richtig beauftragen

Ein guter Auftrag entsteht aus dem Konzept und dem Issue aus [Modul 03](03-konzept-und-prompt.md). Die Vorlage dazu liegt unter [vorlagen/prompt-coding-agent.md](../vorlagen/prompt-coding-agent.md).

1. **Issue verlinken.** Der Agent soll das Issue lesen. Dort stehen Ziel, Abgrenzung und Abnahmekriterien.
2. **Auf AGENTS.md verweisen.** "Halte dich an AGENTS.md" erinnert den Agenten daran, die Projektregeln zu beachten.
3. **Erst planen lassen, dann bauen.** Bitte den Agenten zuerst um einen Plan: Welche Dateien will er ändern, was genau, warum? Erst wenn der Plan passt, gibst du das Bauen frei.
4. **Klein schneiden.** Eine Aufgabe pro Auftrag. Lieber drei kleine Pull Requests als ein großer.
5. **Prüfungen verlangen.** "Führe vor dem Abschluss die Tests und Prüfungen aus AGENTS.md aus und berichte das Ergebnis."
6. **Nur erfundene Daten.** Nie echte Namen, Telefonnummern oder Zugangsdaten in den Auftrag (mehr in [Modul 08](08-sicherheit.md)).

Beispiel für Karl im Wachbuch:

```text
Lies Issue #43 ("Fahrzeugcheck: Feld für Kilometerstand").
Halte dich an AGENTS.md.
Erstelle zuerst nur einen Plan: welche Dateien du ändern willst und warum.
Ändere noch nichts. Frag nach, wenn etwas im Issue unklar ist.
```

## Den Agenten steuern und hinterfragen

Der Agent ist kein Orakel. Du darfst und sollst nachfragen, genau wie bei einem neuen Kollegen.

- **"Warum?"** Warum diese Datei? Warum ein neues Feld statt eines bestehenden? Eine gute Antwort ist nachvollziehbar. Eine ausweichende Antwort ist ein Warnsignal.
- **"Welche Alternativen gibt es?"** Lass dir zwei oder drei Wege mit Vor- und Nachteilen zeigen. Oft ist der einfachste Weg der beste.
- **"Was könnte dadurch kaputtgehen?"** Welche bestehenden Funktionen sind betroffen? Was passiert mit vorhandenen Daten?
- **"Wer darf das sehen oder ändern?"** Bei jeder Änderung an Daten und Ansichten nach den Rechten fragen.
- **"Erkläre es mir so, dass ich es dem Architekten erklären kann."** Wenn du die Erklärung nicht wiedergeben kannst, ist der Pull Request noch nicht fertig.
- **Stopp, wenn er sich im Kreis dreht.** Wenn der Agent denselben Fehler zum dritten Mal "behebt", Prüfungen abschwächen oder Tests löschen will, damit es grün wird: abbrechen. Neue Sitzung mit kleinerem Auftrag starten oder den Architekten fragen.

## Die wichtigste Regel: Verstehen, was sich ändert

Du musst nicht jede Zeile Code lesen können. Aber du musst auf der Ebene **"was ändert sich und warum"** erklären können, was der Pull Request tut. Akzeptiere keinen Code, bei dem du das nicht kannst.

Ein guter Test: Kannst du in drei Sätzen sagen, welche Dateien sich ändern, was Nutzer danach anders erleben und welche Daten betroffen sind? Wenn nein, frag den Agenten, bis du es kannst. "Das hat der Agent so gemacht" ist im Review keine Antwort.

## Agenten können sich sicher irren

Agenten formulieren Falsches oft genauso überzeugt wie Richtiges. Typische Fehler:

- Sie erfinden Funktionen, Optionen oder Pakete, die es nicht gibt.
- Sie behaupten, Tests seien grün, ohne sie ausgeführt zu haben.
- Sie lösen ein anderes Problem als gefragt oder ändern nebenbei Dinge, die nicht im Auftrag standen.
- Sie übernehmen veraltetes Wissen, z. B. alte Versionen von Werkzeugen.
- Sie bauen Sicherheitsprüfungen nur in der Oberfläche statt auf dem Server ein.

Deshalb: Ergebnisse prüfen, Prüfungen laufen lassen, im Diff nachsehen, ob nur das geändert wurde, was im Auftrag stand.

## Pull Requests klein halten

Kleine Pull Requests werden schneller und gründlicher geprüft. Richtwerte:

- Ein Pull Request löst genau ein Issue.
- Keine "Aufräumarbeiten nebenbei". Wenn dem Agenten etwas auffällt, wird daraus ein neues Issue.
- Wenn der Diff unübersichtlich wird, lieber teilen: erst das Datenmodell, dann die Oberfläche.

## Zusammenfassung

- Ein Coding-Agent arbeitet selbständig im Repository und bereitet Pull Requests vor.
- Zum Einstieg die Cloud-Variante im Browser nutzen, keine lokale Einrichtung nötig.
- Issue verlinken, auf AGENTS.md verweisen, erst planen lassen.
- Nachfragen: warum, welche Alternativen, was kann kaputtgehen, wer darf das.
- Nur Code einreichen, den du auf der Ebene "was und warum" erklären kannst.

## Quellen

Alle abgerufen bzw. Stand 2026-11-12.

- [Claude Code in the cloud: Quickstart](https://code.claude.com/docs/en/web-quickstart) (Tarife, GitHub-Verbindung, Pull Request anlegen)
- [Use Claude Code in the cloud](https://code.claude.com/docs/en/claude-code-on-the-web) (Cloud-Sitzungen, Einschränkungen)
- [Claude Code on mobile](https://code.claude.com/docs/en/mobile)
- [Claude Code Desktop](https://code.claude.com/docs/en/desktop)
- [Claude Code Quickstart (CLI)](https://code.claude.com/docs/en/quickstart)
- [How Claude remembers your project](https://code.claude.com/docs/en/memory#agents-md) (AGENTS.md)
- [Codex Cloud](https://learn.chatgpt.com/docs/cloud)
- [Codex Cloud: internet access](https://learn.chatgpt.com/docs/cloud/internet-access)
- [Codex Pricing](https://learn.chatgpt.com/docs/pricing)
- [Codex CLI](https://learn.chatgpt.com/docs/codex/cli)
- [Codex IDE extension](https://learn.chatgpt.com/docs/ide)
- [Custom instructions with AGENTS.md](https://learn.chatgpt.com/docs/agent-configuration/agents-md)
