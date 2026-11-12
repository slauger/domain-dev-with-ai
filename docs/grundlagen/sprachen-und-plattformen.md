# Programmiersprachen und Plattformen

Stufe: **Sollte ich kennen**. Zurück zur [Übersicht](index.md).

## Nicht jede Sprache für jeden Zweck

Eine **Programmiersprache** ist die Sprache, in der der Code geschrieben ist. Es gibt Hunderte davon, aber nur ein paar Dutzend sind wirklich verbreitet. Sie sind wie Werkzeuge in einer Werkstatt: Mit einem Hammer kann man auch eine Schraube eindrehen, gut wird das Ergebnis aber nicht. Jede Sprache hat Bereiche, für die sie gemacht ist und in denen es viele fertige Bausteine, Erfahrung und Fachleute gibt.

Eine **Plattform** ist das, worauf die Software am Ende läuft: im Browser, auf einem Server, auf einem Windows- oder Mac-Rechner, auf einem iPhone oder einem Android-Handy. Die Plattform bestimmt oft schon, welche Sprachen in Frage kommen.

Ein **Framework** ist ein fertiges Grundgerüst für eine bestimmte Art von Software, z. B. für Web-Oberflächen. Es nimmt viel Arbeit ab, legt aber auch fest, wie man Dinge baut. Den gewählten Satz aus Sprachen, Frameworks und Werkzeugen nennt man **Stack** (Technologie-Stapel).

## Überblick

| Bereich | Typische Sprachen und Werkzeuge | Wofür | Beispiel |
| --- | --- | --- | --- |
| Web-Oberfläche (Frontend) | HTML (Struktur), CSS (Aussehen), JavaScript oder TypeScript (Verhalten); Frameworks wie React, Vue, Angular, Svelte | Alles, was im Browser angezeigt wird und auf Klicks reagiert | Die Seite, auf der Karl eine Geräteprüfung einträgt |
| Web-Server (Backend) | TypeScript oder JavaScript mit Node.js, Python, Go, Java, C#, PHP | Daten prüfen und speichern, Rechte prüfen, E-Mails versenden | Der Teil des Wachbuchs, der prüft, ob Karl die Prüfung eintragen darf |
| Desktop-Programme | C# mit .NET (vor allem Windows), Swift (macOS); plattformübergreifend mit Electron oder Tauri | Programme, die auf dem PC installiert werden | Ein Kassenprogramm für die Pension |
| Mobile Apps | Swift (iOS), Kotlin (Android); plattformübergreifend mit Flutter (Sprache Dart), React Native oder als PWA | Apps auf Handy und Tablet | Eine Alarm-App mit Push-Benachrichtigung |
| Daten und Skripte | Python, SQL | Auswertungen, Datenimporte, kleine Helfer; SQL ist die Abfragesprache für Datenbanken | Jahresstatistik der Einsatzstunden |
| Infrastruktur und Betrieb | YAML, Bash, Terraform | Server, Container und automatische Prüfungen beschreiben und einrichten | Die Beschreibung, wie das Wachbuch auf dem Server gestartet wird |

Einige Begriffe kurz erklärt:

- **TypeScript** ist JavaScript mit zusätzlichen Typangaben ("dieses Feld ist ein Datum, kein Text"). Dadurch fallen viele Fehler schon beim Schreiben auf. Für neue Web-Projekte ist es weit verbreitet ([typescriptlang.org](https://www.typescriptlang.org/), Stand: 2026-11-12).
- **Node.js** ermöglicht, JavaScript und TypeScript auch auf dem Server laufen zu lassen. So kann ein Projekt im Browser und auf dem Server dieselbe Sprache nutzen ([nodejs.org](https://nodejs.org/), Stand: 2026-11-12).
- **PWA** (Progressive Web App) ist eine Web-Anwendung, die man auf dem Handy wie eine App auf den Startbildschirm legen kann. Sie braucht keinen App-Store, hat aber eingeschränkten Zugriff auf Gerätefunktionen ([web.dev/explore/progressive-web-apps](https://web.dev/explore/progressive-web-apps), Stand: 2026-11-12).
- **Electron** und **Tauri** packen eine Web-Oberfläche in ein Desktop-Programm. So läuft dasselbe Programm auf Windows, macOS und Linux ([electronjs.org](https://www.electronjs.org/), [tauri.app](https://tauri.app/), Stand: 2026-11-12).
- **Flutter** und **React Native** erlauben, eine App einmal zu schreiben und für iOS und Android zu bauen ([flutter.dev](https://flutter.dev/), [reactnative.dev](https://reactnative.dev/), Stand: 2026-11-12).
- **YAML** ist keine Programmiersprache im engeren Sinn, sondern ein Format für Einstellungen. Siehe [Werkzeuge](werkzeuge.md#yaml-und-json).

## Nativ oder plattformübergreifend?

**Nativ** heißt: Die Software ist in der Sprache gebaut, die der Hersteller der Plattform vorsieht, z. B. Swift für das iPhone und Kotlin für Android. **Plattformübergreifend** (cross-platform) heißt: Ein Code läuft auf mehreren Plattformen, z. B. mit Flutter oder als Web-Anwendung.

| | Nativ | Plattformübergreifend |
| --- | --- | --- |
| Gerätefunktionen (Kamera, Bluetooth, Hintergrund-Ortung, zuverlässige Push-Nachrichten) | voller, früher Zugriff | oft möglich, aber manchmal eingeschränkt oder später |
| Geschwindigkeit und Akku | meist am besten | meist ausreichend, bei aufwendigen Anwendungen schlechter |
| Aussehen und Bedienung | fühlt sich an wie andere Apps der Plattform | kann leicht "fremd" wirken |
| Aufwand | eine Codebasis pro Plattform, also doppelte Arbeit für iOS und Android | eine Codebasis für alle |
| Fachleute | man braucht Wissen für jede Plattform | ein Team, eine Sprache |
| Wartung | jede Fassung muss einzeln aktuell gehalten werden | eine Fassung, aber zusätzlich das Framework selbst |

Beispiele:

- Das **Wachbuch** ist eine Web-Anwendung. Es läuft im Browser auf PC und Handy, ohne App-Store. Für Karls Zwecke (Listen, Formulare, Prüftermine) reicht das völlig.
- Eine **Alarmierungs-App**, die nachts zuverlässig klingeln muss, auch wenn das Handy stumm ist, braucht tiefen Zugriff auf das Gerät. Hier spricht viel für nativ oder zumindest für sorgfältige Prüfung, ob das gewählte Framework das wirklich kann.
- Die **Pension Seeblick** braucht eine Buchungsseite für Gäste und eine Übersicht für Anna. Eine Web-Anwendung, die auch auf dem Handy gut aussieht, ist hier fast immer die beste Wahl.

Eine einfache Faustregel: So einfach wie möglich anfangen (meist Web), und erst dann nativ werden, wenn es einen konkreten Grund gibt, den die einfachere Lösung nicht erfüllen kann.

## Warum ein Projekt bei seinem Stack bleibt

Der Architekt wählt am Anfang einen Stack und bleibt in aller Regel dabei. Das hat gute Gründe:

- **Wissen bündeln.** Jede zusätzliche Sprache muss jemand beherrschen, prüfen und warten können. Peter betreut mehrere Projekte; er kann nicht in jedem eine andere Sprache lesen.
- **Weniger Abhängigkeiten.** Jedes neue Framework bringt Dutzende fremder Bausteine mit, die aktuell gehalten werden müssen ([Modul 09](../09-wartung-und-releases.md)).
- **Weniger Angriffsfläche.** Mehr Technik heißt mehr Stellen, an denen Sicherheitslücken auftauchen können ([Modul 08](../08-sicherheit.md)).
- **Einheitliche Prüfungen.** Tests, Formatierung und Sicherheits-Scans in der CI sind auf den Stack eingestellt. Code in einer neuen Sprache wird davon womöglich gar nicht geprüft.
- **Neu schreiben ist teuer.** Ein Wechsel der Sprache heißt meist: alles neu bauen. Das ist fast nie die Lösung für ein kleines Problem.

Welche Sprachen und Frameworks ein Projekt nutzt, steht in der Regel in der README, in den Regeln für Agenten (z. B. `AGENTS.md`) und in den Architekturentscheidungen.

## Was das für die Arbeit mit dem Agenten heißt

Coding-Agenten kennen viele Sprachen und schlagen gern das vor, was sie für gut halten. Manchmal greifen sie zu einem neuen Framework, weil es eine Aufgabe scheinbar schneller löst, oder schreiben ein Hilfsskript in einer Sprache, die im Projekt sonst nicht vorkommt.

Die Regel ist einfach: **Der Agent führt keine neue Sprache, kein neues Framework und keine größere neue Bibliothek ein, ohne dass der Architekt zugestimmt hat.** Eine solche Entscheidung wird als Architekturentscheidung (ADR, Architecture Decision Record) festgehalten, damit später jeder weiß, warum es so ist. Wie man das im Auftrag an den Agenten formuliert, steht in [Modul 03](../03-konzept-und-prompt.md) und [Modul 06](../06-coding-agent.md).

Woran du erkennst, dass etwas Neues dazukommt:

- Im Pull Request tauchen Dateien mit ungewohnten Endungen auf (z. B. `.py` in einem TypeScript-Projekt).
- In der Liste der Abhängigkeiten (z. B. `package.json`, `requirements.txt`, `pom.xml`) stehen neue Einträge.
- Der Agent schreibt Sätze wie "Ich habe dafür X hinzugefügt" oder "Dafür eignet sich Y besser".

Dann gilt: anhalten, nachfragen, im Zweifel den Architekten einbinden.

## Häufige Dateiendungen

| Endung | Sprache oder Format |
| --- | --- |
| `.html`, `.css` | Web-Seite: Struktur und Aussehen |
| `.js`, `.ts`, `.jsx`, `.tsx` | JavaScript, TypeScript (die `x`-Varianten enthalten Oberflächen-Bausteine, z. B. für React) |
| `.vue`, `.svelte` | Oberflächen-Bausteine für Vue bzw. Svelte |
| `.py` | Python |
| `.go` | Go |
| `.java`, `.kt` | Java, Kotlin |
| `.cs` | C# |
| `.swift` | Swift |
| `.dart` | Dart (Flutter) |
| `.php` | PHP |
| `.sql` | SQL (Datenbank-Abfragen und -Änderungen) |
| `.sh` | Bash-Skript (Befehle für das Terminal) |
| `.tf` | Terraform (Infrastruktur) |
| `.yml`, `.yaml`, `.json`, `.toml` | Einstellungen und Daten |
| `.md` | Markdown (Text und Dokumentation) |
