# Modul 04: Schauen, wie andere es lösen

Fast jedes Problem, das du hast, hatte schon jemand anderes. Bevor du etwas baust, lohnt sich ein Blick darauf, wie andere es gelöst haben. Das kostet eine Stunde und spart oft Tage.

## Warum recherchieren?

- **Bessere Ideen:** Andere haben Sonderfälle schon durchdacht, an die du noch nicht gedacht hast.
- **Bekannte Begriffe:** Du lernst, wie Dinge in der Branche üblicherweise heißen. Das macht dein Konzept verständlicher.
- **Ein besseres Datenmodell:** Wie andere ihre Daten aufteilen, ist ein guter Hinweis für dein eigenes (Modul 05).
- **Vorgaben finden:** Viele Fachgebiete haben Normen, Vorschriften oder Richtlinien. Die muss die Software einhalten, egal was du dir wünschst.
- **Vielleicht gar nicht bauen:** Manchmal gibt es schon eine fertige Lösung oder eine offene Schnittstelle. Dann ist "nicht bauen" die beste Entscheidung.

## Wo man schaut

| Quelle | Was man dort findet |
| --- | --- |
| Etablierte Produkte der Branche | Funktionen, Begriffe, Bildschirmaufbau (Webseiten, Handbücher, Demo-Videos, Testzugänge) |
| Open-Source-Projekte | Wie andere es technisch und im Datenmodell gelöst haben |
| Normen, Vorschriften, Richtlinien | Was zwingend erfasst oder nachgewiesen werden muss, und wie lange |
| Verbände und Fachforen | Was in der Praxis wirklich gebraucht wird, typische Probleme |
| Kollegen in anderen Organisationen | Wie sie es heute machen, auch auf Papier oder in Tabellen |

## Recherche mit einem Assistenten

Viele KI-Assistenten haben eine Funktion für ausführliche Recherche, oft "Deep Research" genannt. Der Assistent durchsucht dann selbstständig viele Webseiten und schreibt einen Bericht mit Quellenangaben (Quelle: Hersteller-Websites gängiger Assistenten, Stand: November 2026; Name und Umfang der Funktion unterscheiden sich je nach Anbieter).

So gehst du vor:

1. **Klare Frage stellen.** Nicht "Erzähl mir was über Feuerwehrsoftware", sondern eine konkrete Frage mit dem, was du wissen willst.
2. **Sagen, was du rausziehen willst.** Funktionen, Datenmodell, Abläufe, Begriffe, Vorschriften.
3. **Quellen verlangen.** "Gib zu jeder Aussage die Quelle an."
4. **Ergebnis als Tabelle verlangen.** Das macht den Vergleich einfach.
5. **Stichproben prüfen.** Öffne mindestens die wichtigsten Quellen selbst und schau, ob da wirklich steht, was der Assistent behauptet.

### Beispiel-Prompt für das Wachbuch

```text
Ich entwickle eine Verwaltungssoftware für eine Freiwillige Feuerwehr. Recherchiere, wie etablierte Feuerwehr-Verwaltungsprogramme und Open-Source-Lösungen Atemschutz-Nachweise führen.

Ich möchte wissen:
1. Welche Daten pro Atemschutzeinsatz und pro Übung erfasst werden
2. Ob Einsatzzeiten automatisch aus dem Einsatzbericht übernommen werden
3. Wie Korrekturen und Stornierungen behandelt werden
4. Wie die arbeitsmedizinische Untersuchung abgebildet und geschützt wird
5. Welche Vorschriften oder Richtlinien vorgeben, was nachgewiesen werden muss

Gib zu jeder Aussage die Quelle an. Fasse das Ergebnis in einer Tabelle zusammen. Kennzeichne deutlich, wenn du etwas nicht belegen kannst.
```

### Beispiel-Prompt für die Pension Seeblick

```text
Ich betreibe eine kleine Pension mit acht Zimmern und eine eigene Buchungs-App. Recherchiere, wie übliche Hotel-Verwaltungssysteme (PMS, Property Management System) Buchungen, Zimmer und Preise abbilden.

Ich möchte wissen:
1. Wie Zimmer, Zimmerkategorien und Buchungen zusammenhängen
2. Wie Preise modelliert werden (Saison, Wochentag, Mindestaufenthalt)
3. Wie Stornierungen und Umbuchungen behandelt werden
4. Welche Gastdaten gesetzlich erfasst werden müssen und wie lange sie aufbewahrt werden müssen

Gib zu jeder Aussage die Quelle an und fasse alles in einer Tabelle zusammen.
```

## Was du aus der Recherche mitnimmst

Konzentriere dich auf vier Dinge:

- **Funktionen:** Was können die anderen? Was davon brauchst du wirklich?
- **Datenmodell:** Welche "Dinge" gibt es (z. B. Einsatz, Trupp, Geräteträger, Gerät) und wie hängen sie zusammen? Gibt es Stornieren statt Löschen?
- **Abläufe:** In welcher Reihenfolge passiert was, wer macht welchen Schritt?
- **Begriffe:** Wie heißen die Dinge in der Branche? Nutze diese Begriffe im Konzept.

Ein Beispiel, was Karl finden könnte: In vielen Programmen wird nicht der einzelne Geräteträger am Einsatz erfasst, sondern ein **Trupp** mit Truppführer und Truppmann, mit gemeinsamen Zeiten. Das ist eine wichtige Erkenntnis für das Datenmodell. Ohne Recherche hätte Karl vielleicht Zeiten pro Person gebaut und später alles umbauen müssen.

Bei der Pension könnte Anna lernen, dass übliche Systeme zwischen **Zimmerkategorie** (z. B. "Doppelzimmer Seeblick") und **konkretem Zimmer** (z. B. "Zimmer 3") unterscheiden. Gebucht wird die Kategorie, das konkrete Zimmer wird später zugeteilt. Das macht Umbuchungen viel einfacher.

## Fallstricke

### Inspiration ja, kopieren nein

- **Ideen und Abläufe** darf man sich anschauen und eigene, ähnliche Lösungen bauen. Dass ein Programm einen Atemschutz-Nachweis hat, ist kein Geheimnis.
- **Code, Bilder, Icons, Texte, Handbücher** anderer Produkte dürfen nicht übernommen werden. Sie sind urheberrechtlich geschützt.
- **Bildschirmaufbau** als Anregung ist in Ordnung. Eine pixelgenaue Kopie nicht.
- **Testzugänge** haben oft Nutzungsbedingungen. Lies sie, bevor du Bildschirmfotos machst oder weitergibst.

### Lizenzen bei Open Source

Open Source heißt, dass der Code öffentlich ist. Es heißt nicht, dass man alles damit machen darf. Jedes Open-Source-Projekt hat eine Lizenz, die regelt, was erlaubt ist. Manche Lizenzen erlauben fast alles, andere verlangen, dass man den eigenen Code dann auch offenlegt. Willst du Code oder eine Bibliothek aus einem Open-Source-Projekt übernehmen, frag vorher den Architekten. Er prüft, ob die Lizenz passt.

### Der Assistent kann sich irren

KI-Assistenten können Dinge erfinden, die plausibel klingen, aber falsch sind. Man nennt das "Halluzinieren". Das betrifft besonders:

- Funktionen bestimmter Produkte ("Programm X kann Y")
- Paragrafen und Normen ("Laut Vorschrift Z muss ...")
- Zahlen, Fristen, Preise

Deshalb: Jede wichtige Aussage an der Quelle prüfen. Eine Quelle, die nicht existiert oder etwas anderes sagt, ist ein Warnsignal für den ganzen Bericht. Vorschriften immer im Original nachlesen, nicht nur in der Zusammenfassung.

### Nicht zu viel wollen

Etablierte Produkte haben oft hunderte Funktionen, entwickelt über viele Jahre. Du brauchst nicht alle. Nimm mit, was dein konkretes Problem löst, und schreib den Rest höchstens als "spätere Idee" auf.

## Das Ergebnis: eine kurze Vergleichstabelle

Das Ergebnis der Recherche ist keine lange Abhandlung, sondern eine kurze Tabelle, die du ans Konzept hängst. Peter kann sie in zwei Minuten lesen.

### Vorlage

```markdown
## Vergleich: <Thema>

Recherchiert von: <Name>, Stand: <Datum>

| Aspekt | Lösung A | Lösung B | Lösung C | Unser Vorschlag |
| --- | --- | --- | --- | --- |
| Funktion ... | | | | |
| Datenmodell ... | | | | |
| Ablauf ... | | | | |
| Begriffe | | | | |
| Vorgaben / Vorschriften | | | | |

Quellen:
1. <Link oder Dokument, Datum des Abrufs>
2. ...

Erkenntnisse für unser Konzept:
- ...

Nicht übernommen, weil:
- ...
```

### Beispiel (verkürzt)

| Aspekt | Programm A | Programm B | Open-Source-Lösung | Unser Vorschlag |
| --- | --- | --- | --- | --- |
| Erfassung am Einsatz | pro Trupp | pro Person | pro Trupp | pro Trupp |
| Übernahme in Nachweis | automatisch | von Hand | automatisch | automatisch, als Verweis |
| Korrektur / Storno | Storno-Kennzeichen | Löschen | Storno-Kennzeichen | Storno-Kennzeichen |
| Untersuchungsdaten | eigener Bereich mit Rechten | im Personenprofil | eigener Bereich | eigener Bereich, klären mit Sabine |

Die Programme heißen hier bewusst "A" und "B". In deiner echten Recherche stehen dort die Namen und die Quellen.

## Checkliste

- [ ] konkrete Recherchefrage gestellt
- [ ] Funktionen, Datenmodell, Abläufe, Begriffe und Vorgaben herausgezogen
- [ ] wichtige Aussagen an der Quelle geprüft
- [ ] nichts kopiert außer Ideen; Lizenzfragen mit dem Architekten geklärt
- [ ] Vergleichstabelle ans Konzept gehängt

Weiter mit [Modul 05: Das Datenmodell ist das Fundament](05-datenmodell.md).
