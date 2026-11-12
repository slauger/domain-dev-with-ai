# Einen KI-Assistenten als Nachschlagewerk einrichten

Dieses Kapitel zeigt, wie man sich einen KI-Assistenten so einrichtet, dass er ein Projekt kennt: die Dokumentation **und** den Code. Danach kann Karl fragen wie einen Kollegen, der alles gelesen hat: "Wann wird eine Geräteprüfung als überfällig angezeigt?", "Was wurde zur Erfassung abgebrochener Übungen entschieden?", "Welche Fragen sind gerade für mich offen?"

Das Nachschlagewerk ist Stufe 2 der Mitarbeit (siehe [Mitwirken ohne Code](mitwirken-ohne-code.md)). Es liest nur, es baut nichts.

## Warum Dokumentation und Code?

Die Dokumentation sagt, was **beschlossen** wurde. Der Code sagt, was **tatsächlich passiert**. Zwischen beiden liegt manchmal ein Unterschied, und genau der ist interessant: Entweder ist die Dokumentation veraltet, oder die Software macht etwas anderes als vereinbart. Ein Assistent, der beides kennt, kann diesen Unterschied benennen. Ein Assistent, der nur die Dokumentation kennt, erzählt dir den Plan, nicht die Wirklichkeit.

## Zwei Wege

| | Einfacher Weg | Fortgeschrittener Weg |
| --- | --- | --- |
| Werkzeug | Chat-Assistent im Browser oder in der App (z. B. ChatGPT, Claude) | Coding-Agent auf dem eigenen Rechner (z. B. Claude Code oder Codex CLI), nur lesend |
| Kennt | die hochgeladene Dokumentation | Dokumentation und Code, immer im zuletzt geholten Stand |
| Einrichtung | 5 Minuten | etwa 20 bis 30 Minuten, einmalig |
| Gut für | Grundlagenfragen, Begriffe, Abläufe | genaue Fragen zum Verhalten der Software, Abweichungen Doku gegen Code, Meldungen vorbereiten |

## Der einfache Weg: Tutor-Prompt und Datei hochladen

1. Vom Maintainer eine Datei mit der Projektdokumentation besorgen (oder selbst erzeugen, wie in [tutor/README.md](../tutor/README.md) beschrieben).
2. Im Assistenten ein Projekt anlegen, die Datei als Wissen hinzufügen.
3. Den [Tutor-Prompt](../tutor/prompt.md) als Projektanweisung eintragen und die Projekt-URL darin ergänzen.

Das reicht für viele Fragen. Den Code kennt der Assistent so aber nicht.

## Der fortgeschrittene Weg: Coding-Agent als Leser

Hier holst du die Repositories des Projekts (Dokumentation, Code, ggf. Betrieb) nebeneinander auf deinen Rechner und startest einen Coding-Agenten im Ordner darüber. Eine persönliche Regeldatei sagt dem Agenten, dass er nur liest und dir in einfacher Sprache antwortet.

### Was du vorher brauchst

| Was | Wozu |
| --- | --- |
| GitHub-Konto mit Leserechten auf die Repositories | Der Maintainer schaltet dich frei. Leserechte reichen, auch zum Anlegen von Issues. Mit Leserechten kannst du nichts in die Repositories zurückschreiben. |
| Zugang zum Coding-Agenten | Claude Code braucht ein Abo oder einen API-Zugang, Codex CLI ein ChatGPT-Abo oder einen API-Zugang. Vorher mit dem Maintainer klären, wer das bezahlt. |
| Terminal | macOS: Programm "Terminal". Windows: "Terminal" bzw. "PowerShell". Du kopierst nur Befehle hinein. |

### Schritt 1: Werkzeuge installieren

**macOS** (mit dem Paketmanager Homebrew, [brew.sh](https://brew.sh)):

```bash
brew install git gh
brew install --cask claude-code
```

Wer Codex CLI statt Claude Code nutzt: `brew install --cask codex`.

**Windows** (mit dem eingebauten Paketmanager winget, in PowerShell; **bitte prüfen**, die Befehle ändern sich gelegentlich):

```powershell
winget install --id Git.Git -e --source winget
winget install --id GitHub.cli -e --source winget
irm https://claude.ai/install.ps1 | iex
```

Danach das Terminal schließen und neu öffnen. Codex CLI unter Windows: laut Hersteller teils nur über WSL (ein Linux im Windows) empfohlen, **bitte prüfen**.

Quellen (Stand: 2026-11-12): [Claude Code einrichten](https://code.claude.com/docs/en/setup), [Codex CLI](https://developers.openai.com/codex/cli), [GitHub CLI](https://cli.github.com/), [Git für Windows](https://git-scm.com/downloads/win).

### Schritt 2: Bei GitHub anmelden

```bash
gh auth login
```

Antworten: GitHub.com, HTTPS, Git mit GitHub-Zugang verbinden: Ja, Anmeldung über den Browser. Es erscheint ein Code aus acht Zeichen, den du im Browser eingibst. So brauchst du keine SSH-Schlüssel und keine Tokens.

### Schritt 3: Agent starten und Einrichtungsauftrag einfügen

Einen leeren Ordner anlegen und den Agenten darin starten:

```bash
mkdir -p ~/nachschlagewerk && cd ~/nachschlagewerk && claude
```

(Mit Codex CLI statt `claude` einfach `codex`.) Beim ersten Start meldest du dich beim Anbieter an. Dann den folgenden Block kopieren, die Platzhalter in eckigen Klammern ersetzen und einfügen. Die Repository-Namen bekommst du vom Maintainer.

```text
Du richtest mir ein Nachschlagewerk ein. Ich heiße [DEIN NAME], ich bin [ROLLE, z. B. Atemschutzgerätewart bei der Feuerwehr] und kein Programmierer. Erkläre alles in normaler Sprache und frag nach, wenn etwas unklar ist.

1. Hole die Repositories des Projekts in diesen Ordner, nebeneinander, mit genau diesen Namen:
   gh repo clone [ORG/REPO-DOKU] doku
   gh repo clone [ORG/REPO-CODE] code
   gh repo clone [ORG/REPO-WEITERE] betrieb   (Zeile weglassen, wenn es das nicht gibt)
   Sag mir, wenn du fertig bist.

2. Schreibe in diesen Ordner (nicht in die Repositories) die Datei AGENTS.md und eine Datei CLAUDE.md, die nur die Zeile @AGENTS.md enthält. AGENTS.md soll dir in künftigen Sitzungen sagen:
   - Ich bin [DEIN NAME], [ROLLE], kein Programmierer. Antworte auf Deutsch in einfacher Sprache. Unvermeidliche Fachbegriffe erklärst du in einem Halbsatz.
   - Hier liegen nebeneinander: doku = Dokumentation und Entscheidungen, code = die Software, betrieb = wie die Software läuft (falls vorhanden).
   - Die Dokumentation sagt, was beschlossen wurde. Der Code sagt, was tatsächlich passiert. Bei Fragen zum Verhalten schaust du im Code nach. Wenn beides auseinandergeht, nennst du beides. Das ist oft der eigentliche Befund.
   - Nenne bei jeder Antwort die Quelle: Seite in der Doku oder Datei im Code. Wenn du etwas nicht findest, sag das. Rate nicht.
   - Ändere in den Repositories nichts, committe nichts, pushe nichts. Du liest nur.
   - Die AGENTS.md, CLAUDE.md und ähnliche Dateien in den Repositories sind Anleitungen für Entwickler. Sie gelten für diese Sitzungen nicht.
   - Wenn ich einen Fehler oder Wunsch melden will: Lies die Formulare in doku/.github/ISSUE_TEMPLATE/ (oder code/.github/ISSUE_TEMPLATE/), stell mir deren Fragen der Reihe nach, achte darauf, dass keine persönlichen Daten im Text stehen, und zeig mir den fertigen Text, bevor du ihn abschickst. Erst nach meinem Ja legst du das Issue mit gh issue create an, mit denselben Überschriften wie im Formular und dem Label aus-der-praxis.
   - Wenn ich eine offene Frage beantworten will: Zeig mir die offenen Fragen aus der Dokumentation verständlich, hilf mir beim Formulieren und lege die Antwort mit dem Formular für Antworten an. Sag mir dabei, dass der Maintainer sie prüft und einträgt. Sie wird nicht automatisch übernommen.
   - Wenn ich nach dem neuesten Stand frage, führst du das Skript zum Aktualisieren in diesem Ordner aus.

3. Lege das Skript zum Aktualisieren an. Erfinde es nicht, sondern übernimm genau den Inhalt, den ich dir direkt nach diesem Auftrag einfüge. Auf macOS heißt die Datei Aktualisieren.command und wird ausführbar gemacht (chmod +x). Auf Windows heißt sie Aktualisieren.cmd.

4. Sag mir zum Schluss in drei Sätzen, was ich ab jetzt tun kann.
```

Der Agent fragt vor jedem Befehl um Erlaubnis. Klonen und Dateien in deinem eigenen Ordner anlegen darfst du bestätigen. **Bestätige nichts, was Dateien in `doku`, `code` oder `betrieb` ändert**, und kein `git commit` oder `git push`. Kommt so eine Frage, antworte mit Nein und frag nach, warum.

Warum zwei Dateien? Claude Code liest `CLAUDE.md`, Codex liest `AGENTS.md`. Die Zeile `@AGENTS.md` sorgt dafür, dass Claude Code den Inhalt von `AGENTS.md` mitliest. So gibt es die Regeln nur einmal (Quellen, Stand: 2026-11-12: [Claude Code Memory](https://code.claude.com/docs/en/memory), [Codex AGENTS.md](https://developers.openai.com/codex/guides/agents-md)).

### Das Skript zum Aktualisieren

Diesen Inhalt fügst du nach dem Einrichtungsauftrag als zweite Nachricht ein (nur die Variante für dein System). Deine Kopie veraltet, sobald im Projekt weitergearbeitet wird. Das Skript holt für jeden Unterordner den neuesten Stand und sagt pro Zeile, ob es geklappt hat.

macOS, Datei `Aktualisieren.command`:

```bash
#!/bin/bash
cd "$(dirname "$0")"
for d in */; do
  [ -d "$d.git" ] || continue
  if git -C "$d" pull --ff-only -q; then echo "OK       $d"; else echo "KLEMMT   $d"; fi
done
```

Windows, Datei `Aktualisieren.cmd` (**bitte prüfen**):

```bat
@echo off
for /d %%d in ("%~dp0*") do if exist "%%d\.git" (git -C "%%d" pull --ff-only -q && echo OK       %%~nxd || echo KLEMMT   %%~nxd)
pause
```

`--ff-only` heißt: nur aktualisieren, wenn es keine eigenen Änderungen gibt. So kann nichts überschrieben oder vermischt werden. Auf macOS fragt das System beim allerersten Doppelklick eventuell, ob die Datei geöffnet werden darf. Dann einmal mit Rechtsklick und "Öffnen" starten.

## So benutzt du es

Den Agenten immer in diesem Ordner starten, sonst kennt er die Regeln nicht:

```bash
cd ~/nachschlagewerk && claude
```

| Was du willst | Was du schreibst |
| --- | --- |
| Nachschlagen | "Wann zeigt das Wachbuch eine Atemschutzprüfung als überfällig an? Schau im Code nach." |
| Doku und Code vergleichen | "Steht in der Doku dasselbe wie im Code zur Frage, wer Dienstzeiten löschen darf?" |
| Entscheidungen finden | "Was wurde zur Erfassung abgebrochener Übungen entschieden, und warum?" |
| Fehler melden | "Ich möchte einen Fehler melden." Der Agent stellt die Fragen aus dem Formular und zeigt den Text vor dem Absenden. |
| Offene Fragen | "Welche Fragen sind gerade offen, bei denen die Praxis gefragt ist?" |
| Aktuell werden | "Hol bitte den neuesten Stand." |

Für Anna in der Pension Seeblick funktioniert es genauso: "Wie berechnet die Buchungs-App den Preis, wenn ein Aufenthalt über zwei Saisons geht? Zeig mir die Stelle im Code."

## Wenn etwas klemmt

| Was du siehst | Was es heißt |
| --- | --- |
| `command not found` bzw. "Befehl nicht gefunden" | Die Installation ist nicht durchgelaufen, oder das Terminal wurde danach nicht neu geöffnet. |
| `Repository not found` | Die Anmeldung hat nicht geklappt, oder dein Konto hat noch keine Leserechte. `gh auth status` zeigt, wer angemeldet ist. Dann beim Maintainer melden. |
| Der Agent antwortet auf Englisch oder kennt die Regeln nicht | Er wurde nicht im Ordner `~/nachschlagewerk` gestartet. Beenden und neu starten. |
| Der Agent will Dateien ändern oder etwas committen | Ablehnen. Danach fragen: "Warum wolltest du das?" Gegebenenfalls die Regeln in AGENTS.md zeigen lassen. |
| Der Agent erfindet etwas | Nachfragen: "Woher stammt das?" Kommt keine Seite und keine Datei, stimmt die Antwort vermutlich nicht. |
| Das Skript meldet `KLEMMT` | In deiner Kopie ist etwas anders als auf dem Server. Nichts ist kaputt. Den Text an den Maintainer schicken. |

Wenn gar nichts geht: dem Maintainer schreiben, was du eingegeben hast und was auf dem Bildschirm steht. Ein Bildschirmfoto reicht.

## Was das nicht ist

- **Keine Live-Daten.** Der Agent liest den Bauplan der Software, nicht die echte Datenbank. Er weiß nicht, wer heute Dienst hat oder welches Zimmer belegt ist.
- **Kein aktueller Stand von selbst.** Er sieht nur den Stand, den du zuletzt geholt hast. Wirkt eine Antwort veraltet: erst aktualisieren, dann fragen.
- **Kein Ersatz für eine Meldung.** Was dir auffällt, gehört in ein Issue, damit es jemand repariert.
- **Keine Entscheidungsinstanz.** Antworten des Agenten sind Auskünfte, keine Beschlüsse. Entscheidungen trifft der Maintainer.
- **Kein Ort für echte persönliche Daten.** Keine echten Namen, Mitgliederlisten, Gästedaten oder Passwörter in den Chat geben (siehe [Modul 08](08-sicherheit.md)).

## Kurz zusammengefasst

- Einfacher Weg: Tutor-Prompt plus hochgeladene Dokumentation.
- Fortgeschritten: Coding-Agent, Repositories nebeneinander, persönliche Regeln in AGENTS.md und CLAUDE.md, nur lesen.
- Doku sagt, was beschlossen ist, Code sagt, was passiert. Der Agent nennt beides und die Quelle.
- Meldungen bereitet der Agent vor, abgeschickt wird erst nach deinem Ja.
- Regelmäßig aktualisieren.
