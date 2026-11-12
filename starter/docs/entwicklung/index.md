# Entwicklung

<!-- Für alle, die mitbauen, mit oder ohne Coding-Agent. Die verbindlichen Regeln für Agenten stehen in AGENTS.md im Repository. -->

## Voraussetzungen

<!-- Was braucht man? z. B. Git, Docker, die gewählte Programmiersprache in Version <x>. Wer mit einem Cloud-Agenten arbeitet, braucht oft nichts davon lokal. -->

- Git
- Docker (für die Dokumentation)
- <Sprache und Version, laut ADR>

## Einrichten

```bash
git clone https://github.com/[ORG]/[PROJEKT].git
cd [PROJEKT]
make install
```

## Prüfungen

Vor jedem Pull Request laufen dieselben Prüfungen wie in der CI:

| Befehl | Was es prüft |
| --- | --- |
| `make lint` | Formatierung und Code-Stil |
| `make test` | Automatische Tests |
| `make docs` | Dokumentation baut ohne Warnungen |
| `make ci` | Alles zusammen |

`make help` zeigt alle Befehle.

## Testdaten

<!-- Wo werden erfundene Testdaten erzeugt? Nie echte Daten verwenden. -->

## Aufbau des Repositorys

<!-- Kurze Übersicht der wichtigsten Ordner. -->

| Ordner | Inhalt |
| --- | --- |
| `docs/` | Diese Dokumentation |
| `.github/` | Vorlagen und CI |
