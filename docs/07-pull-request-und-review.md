# Modul 07: Pull Request und Review

Der Agent hat gearbeitet, das Ergebnis liegt in einem Branch. Jetzt beginnt der wichtigste Teil: die Prüfung. In diesem Modul lernst du, was Branch, Commit und Pull Request sind, welche Prüfstufen es gibt und wie du mit Rückfragen umgehst.

## Die Grundbegriffe

**Repository:** Die Ablage eines Projekts. Sie enthält allen Code, die Doku und die komplette Geschichte aller Änderungen.

**Branch:** Ein Arbeitszweig. Der Hauptzweig heißt meist `main` und enthält den geprüften Stand. Für jede Änderung wird ein eigener Branch angelegt, z. B. `feat/fahrzeugcheck-kilometerstand`. Dort kann man arbeiten, ohne `main` zu stören.

**Commit:** Ein gespeicherter Arbeitsschritt im Branch, mit kurzer Nachricht, was geändert wurde. Ein Branch besteht aus einem oder mehreren Commits.

**Pull Request (PR):** Die Bitte, die Änderungen eines Branches in `main` zu übernehmen. Im Pull Request sieht man alle Änderungen (den **Diff**), die Beschreibung, die Ergebnisse der automatischen Prüfungen und alle Kommentare. Hier findet das Review statt.

**Merge:** Das Übernehmen der Änderungen in `main`, nachdem alle Prüfungen bestanden sind.

Ein Bild dazu: `main` ist das offizielle Wachbuch im Gerätehaus. Ein Branch ist ein Entwurf auf einem Notizblock. Der Pull Request ist der Moment, in dem du den Entwurf dem Wehrführer vorlegst. Erst nach seiner Unterschrift wird er ins Wachbuch übertragen.

## Die Pull-Request-Beschreibung

Eine gute Beschreibung spart allen Zeit. Die Vorlage liegt unter [vorlagen/pull-request.md](../vorlagen/pull-request.md). Mindestens gehören hinein:

- **Welches Issue** wird gelöst (Link, z. B. "Closes #43")?
- **Was ändert sich** für Nutzer, in einfachen Worten?
- **Warum** so und nicht anders?
- **Welche Daten** sind betroffen, ändert sich das Datenmodell?
- **Wer darf** die neue Funktion nutzen?
- **Wie wurde getestet**, mit welchen erfundenen Testdaten?
- **Screenshots** bei Oberflächenänderungen, nur mit erfundenen Daten.

Der Titel folgt meist dem Stil der Conventional Commits, z. B. `feat: kilometerstand im fahrzeugcheck erfassen` (mehr in [Modul 09](09-wartung-und-releases.md)).

## Die Review-Kette

Kein Pull Request wird ohne Prüfung übernommen. Die Prüfung läuft in Stufen. Jede Stufe findet andere Fehler.

```text
Pull Request
  -> 1. Automatische Prüfungen (CI)
  -> 2. KI-Review
  -> 3. Review durch den Architekten
  -> 4. Security-Review (wenn sicherheitsrelevant)
  -> Merge
  -> Testumgebung
```

### Stufe 1: Automatische Prüfungen (CI)

**CI** (Continuous Integration) heißt: Bei jedem Pull Request startet automatisch eine Reihe von Prüfungen. Auf GitHub geschieht das meist mit GitHub Actions. Typisch sind:

| Prüfung | Was sie findet |
| --- | --- |
| Tests | ob die Software noch tut, was sie soll |
| Lint | Stilfehler und typische Programmierfehler |
| Typprüfung | Stellen, an denen falsche Arten von Daten verwendet werden |
| Secret-Scan | versehentlich eingecheckte Passwörter und Schlüssel |
| Abhängigkeits-Prüfung | Pakete mit bekannten Sicherheitslücken |
| Build | ob sich die Anwendung überhaupt bauen lässt |

Grün heißt: alle Prüfungen bestanden. Rot heißt: nicht mergen. Der Agent soll den Fehler beheben, nicht die Prüfung abschwächen oder einen Test löschen.

### Stufe 2: KI-Review

Ein zweites KI-Werkzeug liest den Pull Request und kommentiert. Ein Beispiel ist **GitHub Copilot code review** (Stand: 2026-11-12):

- Copilot lässt sich im Pull Request rechts unter "Reviewers" anfordern ([Quelle](https://docs.github.com/en/copilot/using-github-copilot/code-review/using-copilot-code-review)).
- Automatische Reviews für jeden Pull Request lassen sich über Regeln im Repository einrichten ([Quelle](https://docs.github.com/en/copilot/using-github-copilot/code-review/configuring-automatic-code-review-by-copilot)). Ob das im jeweiligen GitHub-Tarif für private Repositories verfügbar ist, **bitte prüfen**.
- Mit **Custom Instructions** (z. B. eine Datei `.github/copilot-instructions.md`) sagt das Projekt dem Reviewer, worauf er achten soll ([Quelle](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)).
- Copilot hinterlässt Kommentare, aber keine Freigabe. Es ersetzt das menschliche Review nicht.

Auch andere Werkzeuge können reviewen, z. B. Codex über einen Kommentar im Pull Request, wenn das Projekt es eingerichtet hat ([Quelle](https://learn.chatgpt.com/docs/third-party/github), **bitte prüfen**).

Achtung: Anweisungen für KI-Reviewer werden meist aus dem Branch des Pull Requests gelesen. Ein Pull Request, der diese Anweisungen oder `AGENTS.md` ändert, könnte sein eigenes Review abschwächen. Solche Änderungen gehören deshalb in einen eigenen Pull Request und werden besonders genau gelesen.

### Stufe 3: Review durch den Architekten

Peter, der Architekt, liest jeden Pull Request vollständig. Er fragt nicht nur "funktioniert es?", sondern vor allem:

- **Ist es das richtige Problem?** Löst der Pull Request das Issue, und nur das?
- **Passt das Datenmodell?** Werden Daten an der richtigen Stelle gespeichert, ohne Dopplungen, ohne Felder, die später niemand versteht (siehe [Modul 05](05-datenmodell.md))?
- **Stimmen die Rechte?** Wird auf dem Server geprüft, wer das sehen oder ändern darf?
- **Geht es einfacher?** Weniger Code ist weniger Wartung und weniger Fehler.
- **Braucht es eine Architekturentscheidung (ADR)?** Bei neuen Abhängigkeiten, neuen externen Diensten, Änderungen am Datenmodell oder an der Sicherheit wird die Entscheidung schriftlich festgehalten (Vorlage: [vorlagen/adr.md](../vorlagen/adr.md)).
- **Passt es zum Rest?** Begriffe, Aufbau, Stil.

Die Checkliste dazu steht in [vorlagen/review-checkliste.md](../vorlagen/review-checkliste.md).

### Stufe 4: Security-Review

Wenn der Pull Request Anmeldung, Rechte, personenbezogene Daten, Gesundheitsdaten, Verbindungen nach außen oder neue Pakete betrifft, schaut zusätzlich Sabine drauf, die Security-Kollegin. Diese Rolle ist optional: In kleinen Projekten übernimmt der Architekt sie mit. Wichtig ist, dass jemand bewusst mit der Brille "Wie könnte man das missbrauchen?" liest. Mehr dazu in [Modul 08](08-sicherheit.md).

## Auf Review-Kommentare antworten

Kommentare sind keine Kritik an dir, sondern Teil der Arbeit. So gehst du vor:

1. **Jeden Kommentar lesen.** Auch die von der KI.
2. **Verstehen.** Wenn du einen Kommentar nicht verstehst, frag nach. Das ist völlig normal.
3. **Umsetzen oder begründet ablehnen.** Berechtigte Hinweise werden umgesetzt. Falsche Hinweise (KI-Reviewer irren sich auch) lehnst du kurz begründet ab.
4. **Mit dem Agenten nacharbeiten.** Du kannst dem Agenten den Kommentar geben: "Der Architekt schreibt: '...'. Erkläre mir, was er meint, und schlage eine Änderung vor." Prüfe dann wieder, ob du die Änderung verstehst. Manche Werkzeuge können Review-Kommentare und CI-Fehler eines Pull Requests auch selbst aufgreifen (z. B. Claude Code im Web, [Quelle](https://code.claude.com/docs/en/claude-code-on-the-web), Stand: 2026-11-12).
5. **Antworten.** Unter jedem Kommentar kurz schreiben, was du getan hast ("umgesetzt in Commit ...", "nicht umgesetzt, weil ...").
6. **Fachliche Fragen entscheidest du.** Die KI kennt die Feuerwehr nicht. Ob eine Frist 12 oder 24 Monate beträgt, weißt du besser.

## Warum der Architekt Nein sagen darf

Peter darf einen Pull Request ablehnen, auch wenn er funktioniert. Das ist kein Misstrauen, sondern seine Aufgabe. Er trägt die Verantwortung dafür, dass die Software in fünf Jahren noch wartbar und sicher ist. Typische Gründe:

- Der Pull Request ist zu groß oder vermischt mehrere Themen.
- Das Datenmodell wird so geändert, dass es später teuer zu korrigieren ist.
- Rechte werden nur in der Oberfläche statt auf dem Server geprüft.
- Eine neue Abhängigkeit oder ein externer Dienst wird ohne Begründung eingeführt.
- Prüfungen wurden abgeschwächt, Tests gelöscht oder Warnungen stummgeschaltet.
- Echte personenbezogene Daten oder Zugangsdaten sind enthalten.
- Der Einreichende kann nicht erklären, was der Pull Request tut.

Abgelehnt heißt selten endgültig. Meist reicht es, den Pull Request zu verkleinern, aufzuteilen oder vorher im Issue die Richtung zu klären.

## Merge

Gemergt wird nur, wenn

- alle automatischen Prüfungen grün sind,
- alle Kommentare beantwortet sind,
- der Architekt (und bei Bedarf die Security-Kollegin) freigegeben hat.

Den Merge macht in der Regel der Architekt oder Maintainer. Häufig wird "Squash and merge" genutzt: Aus allen Commits des Pull Requests wird ein einziger Commit, dessen Titel der Pull-Request-Titel ist. Daraus entstehen später die Release-Notizen ([Modul 09](09-wartung-und-releases.md)).

## Erst in die Testumgebung

Nach dem Merge geht die Änderung nicht sofort zu allen Nutzern. Sie landet zuerst in einer **Testumgebung**: einer eigenen Installation mit erfundenen Daten. Dort probierst du als Fachexperte aus, ob alles so funktioniert, wie du es dir vorgestellt hast. Erst ein späteres Release bringt die Änderung in die Produktion, also zu den echten Nutzern.

Für Karl heißt das: Nach dem Merge öffnet er die Test-Instanz des Wachbuchs, legt einen Fahrzeugcheck mit erfundenen Werten an und prüft, ob der Kilometerstand richtig angezeigt wird. Findet er einen Fehler, wird daraus ein neues Issue.

## Zusammenfassung

- Branch, Commit, Pull Request: Entwurf, Arbeitsschritt, Vorlage zur Prüfung.
- Vier Stufen: CI, KI-Review, Architekt, Security.
- Kommentare lesen, verstehen, umsetzen oder begründet ablehnen.
- Der Architekt darf Nein sagen, meist reicht Verkleinern.
- Nach dem Merge zuerst in die Testumgebung.

## Quellen

Stand 2026-11-12.

- [Using GitHub Copilot code review](https://docs.github.com/en/copilot/using-github-copilot/code-review/using-copilot-code-review)
- [Configuring automatic code review by GitHub Copilot](https://docs.github.com/en/copilot/using-github-copilot/code-review/configuring-automatic-code-review-by-copilot)
- [Adding repository custom instructions for GitHub Copilot](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [Review GitHub pull requests with Codex](https://learn.chatgpt.com/docs/third-party/github)
- [Use Claude Code in the cloud](https://code.claude.com/docs/en/claude-code-on-the-web)
- [GitHub Docs: About pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
