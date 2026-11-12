# Werkzeuge für den Alltag

Zurück zur [Übersicht](index.md).

Diese Seite stellt die Werkzeuge vor, denen du beim Mitbauen begegnest. Manche brauchst du jeden Tag (Markdown), manche musst du nur lesen können (YAML, JSON, Terminal), und manche reicht es zu kennen (Container, CI).

## Markdown

Stufe: **Muss ich verstehen**.

**Markdown** ist eine einfache Art, Text zu formatieren, nur mit normalen Zeichen. Konzepte, Issues, Pull Requests, Kommentare im Review und auch diese Schulung sind in Markdown geschrieben. Die Plattform (z. B. GitHub) zeigt den Text dann schön formatiert an. Dateien in Markdown enden auf `.md`.

So schreibt man es:

````markdown
# Große Überschrift

## Kleinere Überschrift

Ein normaler Absatz. Ein Absatz ist eine Zeile, egal wie lang.

**fett** und *kursiv*

- ein Punkt in einer Liste
- noch ein Punkt

1. erster Schritt
2. zweiter Schritt

- [ ] offene Aufgabe
- [x] erledigte Aufgabe

[Text des Links](https://example.org)

`ein Dateiname oder Befehl`

| Gerät | Nächste Prüfung |
| --- | --- |
| Atemschutzgerät 7 | 2027-03-01 |

> Ein Zitat, z. B. aus einer Vorschrift
````

Für Code-Blöcke und Diagramme setzt man drei Backticks (das Zeichen `` ` ``) vor und nach den Block. Steht hinter den ersten drei Backticks `mermaid`, wird daraus ein Diagramm, wie in [Versionskontrolle](versionskontrolle.md) und [Web und Daten](web-und-daten.md).

Mehr dazu: [GitHub Docs: Grundlegende Formatierungssyntax](https://docs.github.com/de/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) und [Mermaid](https://mermaid.js.org/) (Stand: 2026-11-12).

## YAML und JSON

Stufe: **Gut zu wissen**. Lesen können reicht, schreiben macht der Agent.

**YAML** und **JSON** sind Formate für Einstellungen und Daten. Sie sind für Menschen lesbar und für Programme leicht zu verarbeiten. Du begegnest ihnen in Konfigurationsdateien, in den Regeln für die automatischen Prüfungen und in API-Antworten.

JSON nutzt geschweifte Klammern, Anführungszeichen und Kommas:

```json
{
  "fahrzeug": "HLF 20",
  "kennzeichen": "MS-FW 112",
  "tuev_faellig": "2027-05-31",
  "beladung": ["Rettungsschere", "Sprungpolster"]
}
```

YAML sagt dasselbe mit Einrückung statt Klammern:

```yaml
fahrzeug: HLF 20
kennzeichen: MS-FW 112
tuev_faellig: 2027-05-31
beladung:
  - Rettungsschere
  - Sprungpolster
```

So liest man beides: Links steht der Name eines Felds, rechts der Wert. Eckige Klammern (JSON) oder Spiegelstriche (YAML) sind Listen. Bei YAML ist die **Einrückung** wichtig: Was weiter eingerückt ist, gehört zum Feld darüber. Ein falsches Leerzeichen kann eine YAML-Datei unbrauchbar machen.

Worauf du achten solltest: Wenn in einer solchen Datei etwas wie `password`, `secret`, `token` oder `api_key` mit einem echten Wert steht, ist das ein Alarmzeichen. Geheimnisse gehören nie in Dateien im Repository ([Modul 08](../08-sicherheit.md)).

## Terminal

Stufe: **Sollte ich kennen**.

Das **Terminal** (auch Kommandozeile, Konsole oder Shell) ist ein Fenster, in dem man dem Computer Befehle als Text gibt, statt mit der Maus zu klicken. Auf macOS heißt das Programm "Terminal", auf Windows "Terminal" oder "PowerShell", auf Linux meist ebenfalls "Terminal". Entwickler nutzen es ständig, weil viele Werkzeuge nur so bedienbar sind und weil sich Befehle leicht wiederholen und automatisieren lassen.

Coding-Agenten arbeiten fast nur im Terminal: Sie lesen Dateien, starten Tests, bedienen Git und installieren Bausteine. Viele Agenten fragen vor einem Befehl nach, ob sie ihn ausführen dürfen. Dann solltest du lesen, was da steht.

Ein paar Befehle, die du erkennen solltest:

| Befehl | Was er tut |
| --- | --- |
| `pwd` | Zeigt, in welchem Ordner man gerade ist |
| `ls` (Windows: `dir`) | Zeigt die Dateien im Ordner |
| `cd ordner` | Wechselt in einen Ordner |
| `cat datei` | Zeigt den Inhalt einer Datei |
| `git status` | Zeigt, welche Dateien geändert sind und auf welchem Branch man ist |
| `git diff` | Zeigt die Änderungen Zeile für Zeile |
| `npm test`, `pytest` | Startet die Tests (je nach Sprache verschieden) |
| `npm install paket`, `pip install paket` | Installiert einen fremden Baustein (eine neue Abhängigkeit) |

Befehle, bei denen du anhalten und nachfragen solltest:

| Befehl oder Muster | Warum vorsichtig |
| --- | --- |
| `rm -rf ...` | Löscht Dateien und Ordner endgültig, ohne Papierkorb |
| `sudo ...` | Führt etwas mit Administratorrechten aus |
| `curl ... \| bash` oder `curl ... \| sh` | Lädt ein Skript aus dem Internet und führt es sofort ungeprüft aus |
| `git push --force`, `git reset --hard` | Kann eigene oder fremde Arbeit überschreiben |
| Befehle mit Passwörtern oder Schlüsseln im Text | Das Geheimnis landet im Verlauf und eventuell beim KI-Anbieter |
| Alles, was Produktionsserver oder Produktionsdaten berührt | Gehört nicht in deine Entwicklungsumgebung |

Du musst nicht jeden Befehl verstehen. Aber "Ich habe einfach immer Ja geklickt" ist keine gute Antwort, wenn danach etwas kaputt ist. Wie man Agenten Rechte gibt und begrenzt, steht in [Modul 06](../06-coding-agent.md).

## Editor und Entwicklungsumgebung

Stufe: **Gut zu wissen**.

Code ist reiner Text. Man kann ihn mit jedem Texteditor öffnen, aber Entwickler nutzen spezielle Programme. Eine **IDE** (Integrated Development Environment, Entwicklungsumgebung) zeigt Code farbig an, findet Fehler beim Tippen, kann Tests starten und Git bedienen.

Weit verbreitet und kostenlos ist **Visual Studio Code** (VS Code) ([code.visualstudio.com](https://code.visualstudio.com/), Stand: 2026-11-12). Viele Coding-Agenten lassen sich dort als Erweiterung einbinden. Für dich ist eine IDE optional: Du kannst auch ganz im Terminal oder in der Web-Oberfläche des Agenten arbeiten. Praktisch ist sie trotzdem, um Markdown-Dateien in einer Vorschau zu sehen und Änderungen übersichtlich anzuzeigen.

### Browser-Entwicklerwerkzeuge

Jeder moderne Browser hat eingebaute **Entwicklerwerkzeuge** (meist mit der Taste F12 oder per Rechtsklick und "Untersuchen"). Damit sieht man den Aufbau einer Seite, Fehlermeldungen und alle Anfragen zwischen Browser und Server ([Chrome DevTools](https://developer.chrome.com/docs/devtools), [Firefox DevTools](https://firefox-source-docs.mozilla.org/devtools-user/), Stand: 2026-11-12).

Du musst sie nicht bedienen können. Zwei Dinge solltest du aber wissen:

1. Wenn etwas im Browser nicht funktioniert, steht in der "Konsole" der Entwicklerwerkzeuge oft eine Fehlermeldung. Ein Bildschirmfoto davon hilft dem Agenten oder dem Architekten sehr.
2. Mit diesen Werkzeugen kann **jeder** Benutzer sehen und verändern, was der Browser schickt. Deshalb muss der Server alles prüfen ([Web und Daten](web-und-daten.md#anmeldung-sitzung-und-rechte)).

## Container

Stufe: **Gut zu wissen**.

Eine Software braucht zum Laufen mehr als ihren eigenen Code: eine bestimmte Version der Sprache, Bibliotheken, Einstellungen. Auf Karls Rechner ist vielleicht eine andere Version installiert als auf dem Server. Das führt zum berühmten Satz "Bei mir funktioniert es aber".

Ein **Container** löst das: Die Software wird mit allem, was sie braucht, in ein Paket gepackt. Dieses Paket (das **Image**) läuft überall gleich, auf dem Entwicklerrechner, in der CI und auf dem Server. Der Vergleich liegt im Namen: Ein Schiffscontainer passt auf jedes Schiff, jeden Zug und jeden Lkw, egal was drin ist.

Das bekannteste Werkzeug dafür ist **Docker** ([docker.com](https://www.docker.com/), Stand: 2026-11-12); es gibt Alternativen wie Podman ([podman.io](https://podman.io/), Stand: 2026-11-12). Die Bauanleitung für ein Image steht meist in einer Datei namens `Dockerfile` oder `Containerfile`. Mehrere Container, die zusammen laufen (z. B. Wachbuch-Server und Datenbank), werden oft in einer Datei `compose.yaml` beschrieben.

Für dich heißt das: Vielleicht startest du das Wachbuch zum Ausprobieren mit einem einzigen Befehl wie `docker compose up`, ohne selbst etwas installieren zu müssen. Was in den Containern steckt und wie sie gebaut werden, ist Sache des Architekten. Auch Container enthalten Abhängigkeiten, die aktuell gehalten werden müssen ([Modul 09](../09-wartung-und-releases.md)).

## CI: automatische Prüfungen

Stufe: **Sollte ich kennen**.

**CI** (Continuous Integration) heißt: Bei jeder Änderung laufen automatisch Prüfungen. Eine **Pipeline** ist die festgelegte Abfolge dieser Prüfungen. Sie ist in einer Datei im Repository beschrieben, meist in YAML (bei GitHub Actions z. B. im Ordner `.github/workflows/`, bei GitLab in `.gitlab-ci.yml`; Quellen: [GitHub Actions](https://docs.github.com/actions), [GitLab CI/CD](https://docs.gitlab.com/ee/ci/), Stand: 2026-11-12).

Typische Prüfungen:

| Prüfung | Was sie prüft |
| --- | --- |
| Build | Lässt sich die Software überhaupt bauen? |
| Tests | Tut der Code, was er soll, und ist nichts Bestehendes kaputtgegangen? |
| Linter und Formatierung | Hält sich der Code an die vereinbarten Regeln und Schreibweisen? |
| Sicherheits-Scans | Gibt es bekannte Lücken in Abhängigkeiten, versehentlich eingecheckte Geheimnisse, gefährliche Muster? |
| Commit-Prüfung | Haben die Commit-Nachrichten die vereinbarte Form? |

Im Pull Request siehst du das Ergebnis: ein grüner Haken heißt bestanden, ein rotes Kreuz heißt durchgefallen, ein gelber Punkt heißt läuft noch. Ein Klick auf "Details" zeigt das Protokoll, und meist steht weit unten, was schiefging. Du kannst das Protokoll (ohne Geheimnisse) dem Agenten geben und ihn bitten, den Fehler zu erklären und zu beheben.

Wichtig: Eine rote Prüfung wird **behoben, nicht abgeschaltet**. Wenn ein Agent vorschlägt, einen Test zu überspringen, eine Prüfung zu deaktivieren oder eine Warnung zu unterdrücken, damit es "durchläuft", ist das ein Fall für den Architekten. Mehr in [Modul 07](../07-pull-request-und-review.md) und [Modul 10](../10-standards.md).

Ein grüner Haken heißt übrigens nur: Die automatischen Prüfungen haben nichts gefunden. Ob die Änderung fachlich stimmt und gut gebaut ist, sagt erst das Review.
