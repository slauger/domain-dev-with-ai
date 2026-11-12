# Modul 10: Standards

Damit viele Menschen und mehrere Agenten an derselben Software arbeiten können, braucht es gemeinsame Regeln. In diesem Modul lernst du, welche Regeln es gibt, wo sie stehen und was die wichtigsten davon bedeuten.

## Warum Standards?

Stell dir vor, jeder Gruppenführer würde das Wachbuch anders führen: einer mit Datum vorne, einer hinten, einer mit Kürzeln, die nur er versteht. Nach einem Jahr findet niemand mehr etwas. Bei Software ist es genauso, nur schneller, weil Agenten in Minuten große Mengen Code erzeugen.

Standards sorgen dafür, dass

- Agenten wissen, was sie tun dürfen und was nicht,
- Reviews schneller gehen, weil alles gleich aufgebaut ist,
- Maschinen (CI, Renovate, semantic-release) mit den Ergebnissen arbeiten können,
- neue Mitwirkende sich schnell zurechtfinden.

## Wo die Regeln stehen

| Ort | Was dort steht | Wer liest es |
| --- | --- | --- |
| `AGENTS.md` im Projekt | Regeln für Coding-Agenten: Aufbau, Prüfungen, Verbote | Agenten automatisch, Menschen bei Bedarf |
| `CONTRIBUTING.md` im Projekt | Beitragsanleitung: wie man mitmacht, Ablauf, Ansprechpartner | Menschen |
| `SECURITY.md` im Projekt | wie man Sicherheitslücken meldet | Menschen |
| Repository `coding-standards` | übergreifende Regeln für alle Projekte: Commits, Branches, Releases, CI, Security | Architekten, Agenten |
| Repository `presentation-standards` | Regeln für Foliensätze | wer Folien baut |
| ADRs (Architekturentscheidungen) | warum etwas so gebaut wurde | alle, besonders vor größeren Änderungen |
| PR-Vorlage | was in jede Pull-Request-Beschreibung gehört | wer einen Pull Request anlegt |
| Issue-Vorlagen | was in einen Fehlerbericht oder Funktionswunsch gehört | wer ein Issue anlegt |

Die Repositories `coding-standards` und `presentation-standards` sind derzeit nicht öffentlich. Links folgen, sobald sie veröffentlicht sind.

### AGENTS.md

Jedes Projekt hat eine Datei `AGENTS.md` im Hauptordner. Sie ist die wichtigste Datei für die Arbeit mit Agenten, weil Claude Code und Codex sie automatisch lesen ([Modul 06](06-coding-agent.md)). Typischer Inhalt:

- kurze Beschreibung des Projekts und seines Aufbaus,
- welche Befehle vor jedem Pull Request laufen müssen (Tests, Prüfungen),
- Regeln zum Datenmodell, z. B. "Löschen heißt ausblenden",
- Sicherheitsregeln, z. B. "Rechte immer auf dem Server prüfen",
- Verbote, z. B. "keine neuen externen Dienste ohne ADR", "keine echten Daten".

Änderungen an `AGENTS.md` sind heikel, weil sie das Verhalten aller Agenten ändern. Sie gehören in einen eigenen Pull Request und werden vom Architekten besonders genau gelesen.

### ADRs: Architekturentscheidungen

Ein **ADR** (Architecture Decision Record) ist eine kurze Notiz zu einer wichtigen Entscheidung: Was war die Frage, welche Möglichkeiten gab es, wofür haben wir uns entschieden und warum? ADRs werden nummeriert und nicht gelöscht. Wird eine Entscheidung später geändert, entsteht ein neuer ADR, der den alten ablöst.

ADRs beantworten die Frage "Warum ist das so?", die sonst nach zwei Jahren niemand mehr beantworten kann. Für Agenten sind sie wertvoll, weil sie verhindern, dass eine bewusste Entscheidung aus Unwissen wieder umgedreht wird. Vorlage: [vorlagen/adr.md](../vorlagen/adr.md).

Ein ADR ist fällig bei Änderungen an Struktur, Datenmodell, Sicherheit, Betrieb oder Abhängigkeiten, zum Beispiel bei einer neuen Datenbank, einem neuen externen Dienst oder einem neuen Rollenkonzept.

### Vorlagen für Pull Requests und Issues

GitHub kann Vorlagen anzeigen, sobald jemand ein Issue oder einen Pull Request anlegt ([Quelle](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/about-issue-and-pull-request-templates), Stand: 2026-11-12). So vergisst niemand die wichtigen Angaben. Die Vorlagen dieser Schulung liegen im Ordner [vorlagen/](../vorlagen/README.md) und können in Projekte übernommen werden.

## Die wichtigsten allgemeinen Standards in einfachen Worten

Die folgende Zusammenfassung beruht auf dem Repository `coding-standards`. Im Zweifel gilt das, was im jeweiligen Projekt steht.

### Commits

- Commit-Nachrichten folgen den **Conventional Commits**: `typ: kurze beschreibung`, z. B. `feat: geräteprüfung mit fälligkeitsdatum`.
- Typen: `feat` (neue Funktion), `fix` (Fehlerbehebung), `docs` (Doku), `chore` (Wartung), `refactor` (Umbau), `test` (Tests), `ci` (Prüfungen).
- Kleinschreibung, kein Punkt am Ende, Befehlsform ("füge hinzu", nicht "hinzugefügt"), erste Zeile kurz (unter 72 Zeichen).
- Commits werden möglichst **signiert**, damit klar ist, dass sie wirklich von der angegebenen Person stammen.
- Mehr dazu in [Modul 09](09-wartung-und-releases.md).

### Branches

- `main` ist immer lauffähig und geprüft. Niemand arbeitet direkt auf `main`, alles läuft über Pull Requests.
- Jede Änderung bekommt einen eigenen Branch mit sprechendem Namen und Präfix: `feat/...`, `fix/...`, `docs/...`, z. B. `feat/geraetepruefung-faelligkeit`. In Branch-Namen nur einfache Buchstaben ohne Umlaute verwenden, weil manche Werkzeuge damit Probleme haben.
- Auf gemeinsame Branches wie `main` wird nie "mit Gewalt" (force push) geschrieben.

### Reviews

- Nichts kommt ohne Review in `main`.
- Reihenfolge: automatische Prüfungen, KI-Review, Architekt, bei Bedarf Security ([Modul 07](07-pull-request-und-review.md)).
- Rote Prüfungen werden behoben, nicht abgeschwächt.
- Ein Pull Request löst genau ein Issue und bleibt klein.

### Versionen

- Versionsnummern folgen **Semantic Versioning** (`MAJOR.MINOR.PATCH`).
- Releases entstehen automatisch mit **semantic-release** aus den Commit-Nachrichten, nur vom Branch `main`.
- Abhängigkeiten werden mit **Renovate** aktuell gehalten.
- Agenten kennen oft nur ältere Versionen von Werkzeugen, weil ihr Wissen an einem Stichtag endet. Deshalb gilt: Aktuelle Versionen immer nachschlagen, nie dem Wissen des Agenten blind vertrauen.

### Security

- Secrets nie in Code, Logs oder Commits. Sie kommen aus geschützten Einstellungen der Umgebung.
- Abhängigkeiten werden in der CI auf bekannte Lücken geprüft, bekannte Lücken blockieren den Merge.
- Eingaben, die in HTML oder Datenbankabfragen landen, werden immer mit den sicheren Mitteln des Frameworks verarbeitet.
- Container laufen ohne Administratorrechte und mit so wenig Berechtigungen wie möglich.
- Automatische Prüfungen in der CI bekommen nur die Rechte, die sie wirklich brauchen.
- Mehr dazu in [Modul 08](08-sicherheit.md).

### Dokumentation

- Jedes Projekt hat mindestens `README.md`, `CONTRIBUTING.md`, `SECURITY.md` und eine Lizenz. Das `CHANGELOG.md` entsteht automatisch.
- In Markdown-Dateien wird nicht von Hand umgebrochen: Jeder Absatz ist eine Zeile. Das macht Änderungen im Diff leichter lesbar.

### Folien

- Foliensätze folgen dem Repository `presentation-standards`. Empfohlen ist Slidev, ein Foliensatz pro Ordner.

## Projekte passen die Standards an

Die allgemeinen Standards sind ein Startpunkt. Jedes Projekt ergänzt seine eigenen Regeln in `AGENTS.md`, `CONTRIBUTING.md` und in ADRs, z. B. welche Prüfungen genau laufen oder wie das Datenmodell aufgebaut ist. Weicht ein Projekt bewusst ab, steht der Grund in einem ADR.

## Zusammenfassung

- `AGENTS.md` ist die Regeldatei für Agenten in jedem Projekt.
- Übergreifende Regeln stehen im Repository `coding-standards`, Folienregeln in `presentation-standards`.
- ADRs halten fest, warum etwas so ist.
- Vorlagen für Issues und Pull Requests sorgen für vollständige Angaben.
- Wichtigste Regeln: Conventional Commits, nie direkt auf `main`, nichts ohne Review, Semantic Versioning, keine Secrets.
