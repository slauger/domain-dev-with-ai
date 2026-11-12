# Modul 09: Wartung, Updates und Releases

Software ist nie fertig. Auch wenn niemand eine neue Funktion baut, muss sie gepflegt werden, fast täglich. In diesem Modul lernst du, warum das so ist, wie Updates weitgehend automatisch ablaufen und wie aus geprüften Änderungen eine neue Version wird.

Wie in [Modul 00](00-warum.md) beschrieben: Updates und Versionsverwaltung sind typische Themen, die Domänenexperten nicht kennen müssen. Der Ablauf und der Maintainer kümmern sich darum. Du solltest aber verstehen, warum es sie gibt, damit du Update-Pull-Requests nicht als lästiges Rauschen abtust.

## Was sind Abhängigkeiten?

Kaum eine Software wird komplett selbst geschrieben. Für Datum und Uhrzeit, für Formulare, für die Datenbankanbindung oder für die Anmeldung gibt es fertige Bausteine von anderen Entwicklern. Diese Bausteine heißen **Abhängigkeiten** (englisch Dependencies) oder **Pakete**.

In der JavaScript-Welt werden Pakete über **npm** verwaltet, ein riesiges öffentliches Verzeichnis mit Millionen Paketen. Welche Pakete ein Projekt braucht, steht in der Datei `package.json`:

```json
{
  "dependencies": {
    "express": "^5.1.0",
    "zod": "^4.0.0"
  }
}
```

Das sieht überschaubar aus. Aber jedes dieser Pakete hat selbst wieder Abhängigkeiten, und die haben wieder welche. Man unterscheidet:

- **Direkte Abhängigkeiten:** die, die im Projekt ausdrücklich stehen.
- **Transitive Abhängigkeiten:** die Abhängigkeiten der Abhängigkeiten.

Eine Web-Anwendung mit 20 direkten Abhängigkeiten zieht schnell mehrere hundert transitive Pakete nach. Die genaue Liste mit allen Versionen steht in einer **Lockfile** (z. B. `package-lock.json` oder `pnpm-lock.yaml`). Jedes dieser Pakete ist Code von Fremden, der in deiner Anwendung läuft.

Ein Bild dazu: Das Wachbuch ist wie ein Feuerwehrfahrzeug. Es besteht aus hunderten Teilen von Zulieferern: Reifen, Pumpe, Funkgerät, Bremsen. Wenn ein Zulieferer einen Fehler in seinem Bremsschlauch meldet, muss der Schlauch getauscht werden, auch wenn das Fahrzeug gerade gut fährt.

## Warum ungepflegte Software gefährlich wird

Jeden Tag werden in irgendeinem Paket Sicherheitslücken gefunden und öffentlich gemacht. Sie bekommen eine Nummer (eine **CVE**, z. B. CVE-2024-3094) und werden in Datenbanken gesammelt. Ab diesem Moment wissen auch Angreifer davon und suchen automatisiert nach Anwendungen, die die alte Version noch verwenden.

Wer nicht aktualisiert, hat also nicht "die bewährte Version", sondern eine mit öffentlich bekannten Lücken. Und je länger man wartet, desto schwieriger wird es: Aus einem kleinen Update wird nach zwei Jahren ein großer Umbau, weil sich vieles gleichzeitig geändert hat.

### Bekannte Vorfälle

Diese öffentlich dokumentierten Fälle zeigen, wie verwundbar die Lieferkette von Software ist:

- **left-pad (2016):** Ein Entwickler zog ein winziges npm-Paket mit elf Zeilen Code zurück. Tausende Projekte, die es indirekt nutzten, ließen sich plötzlich nicht mehr bauen. Lehre: Auch kleinste transitive Abhängigkeiten zählen ([Quelle](https://blog.npmjs.org/post/141577284765/kik-left-pad-and-npm)).
- **event-stream (2018):** Der Betreuer eines beliebten npm-Pakets übergab es an einen Fremden, der hilfsbereit wirkte. Dieser baute Schadcode ein, der es auf bestimmte Bitcoin-Wallets abgesehen hatte. Lehre: Vertrauen in Pakete kann missbraucht werden ([Quelle](https://github.com/dominictarr/event-stream/issues/116)).
- **xz-Hintertür (2024):** Über fast zwei Jahre gewann eine Person das Vertrauen im Projekt des Kompressionswerkzeugs xz und schmuggelte dann eine Hintertür ein, die Fernzugriff auf viele Linux-Server ermöglicht hätte. Sie wurde zufällig kurz vor der breiten Verbreitung entdeckt ([CVE-2024-3094](https://nvd.nist.gov/vuln/detail/CVE-2024-3094)).

Daraus folgt beides: Software muss aktuell gehalten werden, und neue Versionen werden trotzdem nicht blind übernommen, sondern durchlaufen die automatischen Prüfungen.

## Software braucht tägliche Pflege

Wartung heißt vor allem:

- Updates von Abhängigkeiten prüfen und einspielen.
- Meldungen der Sicherheitswerkzeuge bewerten ([Modul 08](08-sicherheit.md)).
- Die Laufzeitumgebung aktuell halten (z. B. Node.js-Version, Betriebssystem im Container).
- Fehler beheben, die Nutzer melden.

Das ist Kleinarbeit, die selten Spaß macht, aber nicht liegen bleiben darf. Deshalb wird sie so weit wie möglich automatisiert.

## Renovate: der Update-Bot

**Renovate** ist ein Werkzeug, das ein Repository regelmäßig durchsucht und für jede neue Version einer Abhängigkeit automatisch einen Pull Request öffnet ([Quelle](https://docs.renovatebot.com/), Stand: 2026-11-12). So funktioniert es:

1. **Update-PRs:** Renovate erkennt "Paket X gibt es jetzt in Version 2.4.1" und öffnet einen Pull Request, der die Version anhebt. Im Pull Request stehen die Änderungsnotizen des Pakets.
2. **CI läuft:** Wie bei jedem Pull Request laufen Tests und Prüfungen.
3. **Gruppierung:** Damit nicht jeden Tag zwanzig einzelne Pull Requests entstehen, werden verwandte Updates gebündelt, z. B. "alle kleinen Updates der Entwicklungswerkzeuge" in einem Pull Request ([Quelle](https://docs.renovatebot.com/noise-reduction/)).
4. **Automerge:** Für risikoarme Updates (z. B. Patch-Versionen, siehe unten) kann Renovate den Pull Request selbst mergen, aber nur, wenn die CI grün ist ([Quelle](https://docs.renovatebot.com/key-concepts/automerge/)). Größere Updates prüft ein Mensch.
5. **Dashboard:** Renovate pflegt ein Issue "Dependency Dashboard" mit einer Übersicht über alle offenen, wartenden und abgelehnten Updates ([Quelle](https://docs.renovatebot.com/key-concepts/dashboard/)).

Ein ähnliches Werkzeug direkt von GitHub ist **Dependabot**. Welches ein Projekt nutzt, steht in dessen Standards.

### Einen Renovate-Pull-Request lesen

Ein typischer Titel: `chore(deps): update dependency zod to v4.1.2`. Darin steckt:

- `chore(deps)`: Wartungsarbeit an Abhängigkeiten.
- `zod`: das betroffene Paket.
- `v4.1.2`: die neue Version.

In der Beschreibung findest du eine Tabelle mit alter und neuer Version und die Änderungsnotizen. Steht dort "security" oder eine CVE-Nummer, ist das Update dringend.

## Versionsnummern: Semantic Versioning

Die meisten Pakete nummerieren ihre Versionen nach **Semantic Versioning** ([semver.org](https://semver.org/lang/de/)): `MAJOR.MINOR.PATCH`, z. B. `4.1.2`.

| Teil | Wird erhöht, wenn ... | Risiko beim Update |
| --- | --- | --- |
| PATCH (4.1.**2**) | Fehler behoben, sonst nichts geändert | gering |
| MINOR (4.**1**.2) | neue Funktion, alte funktionieren weiter | gering bis mittel |
| MAJOR (**4**.1.2) | etwas Bestehendes geändert oder entfernt (Breaking Change) | hoch, Anpassungen nötig |

Deshalb kann ein Patch-Update oft automatisch übernommen werden, ein Major-Update dagegen braucht einen Menschen und manchmal Arbeit am eigenen Code.

## Conventional Commits

Damit Maschinen erkennen können, was eine Änderung bedeutet, folgen Commit-Nachrichten und Pull-Request-Titel einem festen Muster, den **Conventional Commits** ([conventionalcommits.org](https://www.conventionalcommits.org/de/v1.0.0/)):

```text
<typ>: <kurze beschreibung>
```

| Typ | Bedeutung | Neue Version |
| --- | --- | --- |
| `feat` | neue Funktion | MINOR |
| `fix` | Fehlerbehebung | PATCH |
| `docs` | nur Dokumentation | keine |
| `chore` | Wartung, z. B. Abhängigkeiten | keine |
| `refactor` | Umbau ohne neue Funktion | keine |
| `test` | Tests ergänzt oder korrigiert | keine |
| `feat!` oder Fußzeile `BREAKING CHANGE:` | inkompatible Änderung | MAJOR |

Beispiele aus dem Wachbuch: `feat: kilometerstand im fahrzeugcheck erfassen`, `fix: fälligkeit der geräteprüfung bei schaltjahr korrigieren`.

## semantic-release: Versionen aus Commit-Nachrichten

**semantic-release** liest die Commit-Nachrichten seit der letzten Version und entscheidet daraus selbst ([Quelle](https://github.com/semantic-release/semantic-release), Stand: 2026-11-12):

- Gibt es ein `feat`, wird die MINOR-Nummer erhöht. Gibt es nur `fix`, die PATCH-Nummer. Bei einem Breaking Change die MAJOR-Nummer.
- Aus den Nachrichten entsteht automatisch ein **Changelog**, also eine Liste, was sich geändert hat.
- Die Version wird als **Tag** im Repository markiert und als Release auf GitHub veröffentlicht.

Niemand muss sich also eine Versionsnummer ausdenken oder Release-Notizen von Hand schreiben. Dafür müssen die Commit-Nachrichten stimmen. Deshalb achtet der Architekt beim Review auf den Pull-Request-Titel.

## Release-Konzepte

Ein **Release** ist eine feste, benannte Version der Software, die ausgeliefert wird. Der übliche Weg:

```text
Pull Request -> main -> Testumgebung -> Release (Tag, z. B. v1.4.0) -> Produktion
```

- **main:** Jeder Merge landet hier. `main` ist immer geprüft und lauffähig.
- **Testumgebung:** `main` wird automatisch dort installiert, mit erfundenen Daten. Hier probiert Karl neue Funktionen aus.
- **Release:** Wenn sich der Stand bewährt hat, erzeugt der Maintainer ein Release. Es bekommt einen **Tag**, also eine feste Markierung wie `v1.4.0`.
- **Produktion:** Die echte Installation mit echten Daten bekommt nur Releases, nie einfach den neuesten Stand.
- **Rollback:** Geht nach einem Release etwas schief, kann man auf das vorige Release zurückgehen, weil jedes Release eindeutig markiert ist. Vorsicht bei Datenbankänderungen ([Modul 05](05-datenmodell.md)): Wenn das neue Release die Struktur der Daten geändert hat, ist ein Rollback nicht immer einfach. Deshalb werden solche Änderungen besonders sorgfältig geplant und vorher gesichert.

## Wer ist zuständig?

- **Der Maintainer** (im Beispiel Peter) ist verantwortlich, dass Updates nicht liegen bleiben. Er prüft Update-Pull-Requests, die nicht automatisch gemergt werden, und erzeugt Releases.
- **Die Security-Kollegin** (Sabine, falls vorhanden) bewertet Sicherheitsmeldungen und drängt auf dringende Updates.
- **Domänenexperten** wie Karl müssen Updates nicht selbst machen. Sie sollten aber verstehen, warum Update-Pull-Requests wichtig sind: Wenn Peter sagt "erst die Updates, dann deine neue Funktion", ist das keine Bremse, sondern Pflege des Fahrzeugs vor der nächsten Fahrt. Und sie testen nach größeren Updates in der Testumgebung, ob fachlich noch alles stimmt.

Eine Software, für die niemand die Wartung übernimmt, sollte nicht in Produktion gehen. Das gilt besonders, wenn sie personenbezogene Daten verwaltet.

## Zusammenfassung

- Jede Software besteht zum großen Teil aus fremden Paketen, oft hunderten.
- Ohne Updates sammeln sich öffentlich bekannte Lücken an.
- Renovate öffnet Update-Pull-Requests, bündelt sie und mergt sichere Updates bei grüner CI automatisch.
- Semantic Versioning zeigt das Risiko eines Updates, Conventional Commits beschreiben die Art einer Änderung.
- semantic-release macht daraus Versionsnummern und Changelog.
- Erst Testumgebung, dann Release, dann Produktion. Rollback ist möglich, bei Datenänderungen aber mit Vorsicht.

## Weiterlesen

- Repository `coding-standards`, Dateien `general/renovate.md`, `general/semantic-release.md`, `general/conventional-commits.md` und `general/versions.md` (Links folgen, sobald das Repository öffentlich ist).
- [Renovate Dokumentation](https://docs.renovatebot.com/)
- [Semantic Versioning (deutsch)](https://semver.org/lang/de/)
- [Conventional Commits (deutsch)](https://www.conventionalcommits.org/de/v1.0.0/)
- [semantic-release](https://semantic-release.gitbook.io/semantic-release/)
