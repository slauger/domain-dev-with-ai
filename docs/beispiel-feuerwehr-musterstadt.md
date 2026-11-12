# Das Beispiel: Feuerwehr Musterstadt und das Wachbuch

Alle Module dieser Schulung nutzen dasselbe erfundene Beispiel. Diese Seite erzählt es als Geschichte: wer die Feuerwehr Musterstadt ist, warum sie eigene Software baut und wer dabei mitmacht. Die Rollen im Projekt (Domänenexperte, Architekt, Security) sind in [Modul 01](01-rollen-und-ablauf.md) beschrieben. Hier geht es um die Menschen dahinter.

Alle Personen, Orte und Zahlen sind erfunden. Ähnlichkeiten mit echten Feuerwehren sind gewollt, weil das Beispiel realistisch sein soll, aber es gibt keine Vorlage.

## Die Feuerwehr Musterstadt

Musterstadt ist eine Kleinstadt mit rund 8.000 Einwohnern und zwei Ortsteilen. Die Freiwillige Feuerwehr hat:

- **rund 70 aktive Mitglieder** in zwei Löschzügen, davon etwa 25 Atemschutzgeräteträger,
- **sechs Fahrzeuge**, darunter ein Hilfeleistungslöschfahrzeug (HLF 20), ein Tanklöschfahrzeug, eine Drehleiter und ein Mannschaftstransportwagen,
- **eine Jugendfeuerwehr** mit 18 Jugendlichen zwischen 12 und 17 Jahren,
- **eine Alters- und Ehrenabteilung**,
- **einen Förderverein** mit rund 200 Mitgliedern, der Feste organisiert, Spenden sammelt und Anschaffungen mitfinanziert, die die Gemeinde nicht bezahlt.

Wie in jeder Freiwilligen Feuerwehr kommen hier Menschen aus vielen Berufen zusammen. Für das Wachbuch zählt aber nur, was sie in der Feuerwehr tun und wissen.

## Warum ein eigenes Wachbuch?

Bisher läuft vieles auf Papier, in Tabellen und in Chatgruppen. Die Atemschutz-Nachweise stehen in einer Tabelle, die Prüftermine der Geräte in einem Ordner, die Dienstzeiten auf Anwesenheitslisten, die der Kommandant abends abtippt. Vieles wird doppelt gepflegt, und wenn jemand krank ist, findet niemand die aktuelle Fassung.

Fertige Feuerwehr-Software gibt es, aber sie kostet je nach Anbieter mehrere hundert bis über tausend Euro im Jahr, oft pro Modul oder pro Benutzer. Die Gemeinde zahlt nur einen Teil, den Rest müsste der Förderverein aus Mitgliedsbeiträgen und Spenden tragen. Dieses Geld fehlt dann für Ausrüstung und Jugendarbeit (mehr dazu in [Modul 00](00-warum.md)).

Deshalb hat der Kommandant gemeinsam mit dem Förderverein entschieden: Wir bauen ein eigenes, schlankes Wachbuch, Schritt für Schritt, mit Unterstützung von KI-Agenten und unter Aufsicht eines erfahrenen Softwarearchitekten. Ehrlich gerechnet ist das nicht kostenlos (siehe [Modul 13](13-werkzeuge-und-kosten.md) und [Ein Projekt vorbereiten](neues-projekt.md#was-kostet-das-wirklich)), aber die Wehr bestimmt selbst, was die Software kann.

## Die Personen

Jede Person bringt tiefes Fachwissen aus ihrer Aufgabe in der Feuerwehr mit. Keine von ihnen (außer Peter und Sabine) hat IT-Wissen, und das ist auch nicht nötig. Genau dafür gibt es den Ablauf aus [Modul 01](01-rollen-und-ablauf.md).

### Der Kommandant

**Aufgabe in der Feuerwehr:** Leitet die Wehr, ist gegenüber der Gemeinde verantwortlich, plant Ausbildung und Einsätze, sorgt dafür, dass gesetzliche Pflichten eingehalten werden (z. B. Fristen für Untersuchungen und Unterweisungen).

**Fachwissen, das er mitbringt:** Weiß, was die Wehr wirklich braucht, welche Nachweise die Gemeinde oder die Unfallkasse verlangen und wer in der Wehr welche Zuständigkeit hat.

**Was er über IT nicht weiß:** Wie Software gebaut, betrieben und abgesichert wird.

**Seine Rolle im Projekt:** Er legt die Prioritäten fest. Wenn drei Ideen gleichzeitig kommen, entscheidet er, was zuerst gebaut wird. Er entscheidet auch, wer im Wachbuch welche Daten sehen darf.

**Typische Idee:** "Ich will auf einen Blick sehen, wessen Atemschutz-Untersuchung in den nächsten drei Monaten abläuft, ohne Ergebnisse oder Diagnosen."

### Karl, Atemschutzgerätewart

**Aufgabe in der Feuerwehr:** Seit 20 Jahren aktiv, verantwortlich für die Atemschutzgeräte und Masken: Prüfungen, Wartung, Nachweise. Er führt auch die Liste, wer als Atemschutzgeräteträger einsatzbereit ist, also Belastungsübung und Unterweisung absolviert hat und dessen arbeitsmedizinische Untersuchung (G26.3) noch gültig ist.

**Fachwissen, das er mitbringt:** Prüffristen, Ablauf einer Geräteprüfung, was bei einer fehlgeschlagenen Prüfung passiert, wer wann wieder untersucht werden muss.

**Was er über IT nicht weiß:** Datenmodelle, Rechteprüfung, Datenschutzrecht.

**Wichtig:** Karl hat mit Gesundheitsdaten zu tun. Ob jemand atemschutztauglich ist, ist eine Information über die Gesundheit und nach Art. 9 DSGVO besonders geschützt. Im Wachbuch soll deshalb nur stehen, was für die Einsatzplanung nötig ist (z. B. "gültig bis"), nie Befunde. Mehr dazu in [Modul 08](08-sicherheit.md) und [Modul 14](14-ki-und-datenschutz.md).

**Typische Idee:** "Wenn ich eine Prüfung eintrage, soll das nächste Prüfdatum automatisch berechnet werden."

### Der Gerätewart

**Aufgabe in der Feuerwehr:** Kümmert sich um Fahrzeuge und Geräte außer dem Atemschutz: Leitern, Schläuche, Hydraulikgeräte, Stromerzeuger. Plant TÜV-Termine und Werkstattbesuche.

**Fachwissen, das er mitbringt:** Welche Geräte welche Prüfintervalle haben, was beim Fahrzeugcheck nach einem Einsatz kontrolliert wird, welche Mängel ein Fahrzeug außer Dienst stellen.

**Was er über IT nicht weiß:** Alles, was hinter dem Bildschirm passiert.

**Typische Idee:** "Beim Fahrzeugcheck nach dem Einsatz will ich den Kilometerstand und den Tankfüllstand eintragen, am besten am Handy direkt in der Halle."

### Der Jugendwart

**Aufgabe in der Feuerwehr:** Leitet die Jugendfeuerwehr, plant Übungsabende, Zeltlager und Leistungsabzeichen, ist Ansprechpartner für Eltern.

**Fachwissen, das er mitbringt:** Was bei Minderjährigen anders ist: Einverständniserklärungen der Eltern, Notfallkontakte, Fotoerlaubnis, Übergang in die Einsatzabteilung mit 16 bzw. 18 Jahren.

**Was er über IT nicht weiß:** Dass Daten von Kindern und Jugendlichen besonders vorsichtig behandelt werden müssen und was das technisch bedeutet.

**Typische Idee:** "Ich will die Anwesenheit beim Übungsabend auf dem Tablet abhaken, und es soll automatisch zählen, wer genug Stunden für das Leistungsabzeichen hat."

### Die Kassiererin des Fördervereins

**Aufgabe in der Feuerwehr:** Verwaltet die Kasse des Fördervereins: Mitgliedsbeiträge, Lastschriften, Spendenquittungen, Kassenprüfung.

**Fachwissen, das sie mitbringt:** Wie Beiträge eingezogen werden, welche Fristen gelten, was die Kassenprüfer sehen wollen, was eine Spendenquittung enthalten muss.

**Was sie über IT nicht weiß:** Dass Bankverbindungen besonders schützenswert sind und nicht in jede Tabelle gehören, und wie man Zugriffe protokolliert.

**Typische Idee:** "Ich will eine Liste, wer seinen Beitrag noch nicht bezahlt hat, ohne dass jeder im Wachbuch die Bankdaten sieht."

### Jonas, junger Feuerwehrmann (optional)

**Aufgabe in der Feuerwehr:** Vor zwei Jahren aus der Jugendfeuerwehr in die Einsatzabteilung gewechselt, Maschinist in Ausbildung.

**Fachwissen, das er mitbringt:** Weiß, wie die Jüngeren die Software nutzen würden, am Handy, schnell, ohne Anleitung.

**Was er über IT nicht weiß:** Mehr, als er glaubt. Jonas nutzt KI-Werkzeuge täglich und ist schnell. Manchmal übernimmt er Ergebnisse, ohne sie zu hinterfragen, und hält "es läuft bei mir" für "es ist fertig".

**Typische Idee:** "Ich lass den Agenten mal schnell eine Push-Benachrichtigung für Alarme bauen." Peter bremst ihn dann freundlich: Erst Konzept, dann Issue, dann bauen, und Alarmierung ist ohnehin Sache der Leitstelle.

Jonas ist im Beispiel, weil es solche Mitwirkenden überall gibt. Sein Tempo ist ein Gewinn, wenn der Ablauf mit Review und Tests ihn auffängt (siehe [Modul 12](12-testen.md)).

### Peter, Softwarearchitekt (extern)

Peter ist nicht Mitglied der Wehr. Er betreut ehrenamtlich mehrere Vereinsprojekte, darunter das Wachbuch, und ist der **Maintainer**: Er hat die Software technisch aufgesetzt, prüft Konzepte und Pull Requests und entscheidet, was hineinkommt. Er hat wenig Zeit. Deshalb ist ihm wichtig, dass alle nach denselben Regeln arbeiten. Vom Feuerwehralltag weiß er wenig und ist auf die anderen angewiesen.

### Sabine, IT-Sicherheit (optional)

Sabine arbeitet beruflich in der IT-Sicherheit und hilft dem Projekt ehrenamtlich bei Sicherheits- und Datenschutzfragen. Sie schaut auf Pull Requests, die Anmeldung, Rechte oder personenbezogene Daten betreffen. Die Rolle ist optional: Gibt es keine Sabine, übernimmt Peter ihre Aufgaben (siehe [Modul 01](01-rollen-und-ablauf.md#security-verantwortliche-z-b-sabine-optional)).

## Wer weiß was?

| Person | Weiß genau | Braucht Hilfe bei |
| --- | --- | --- |
| Kommandant | Prioritäten, Pflichten, Zuständigkeiten | Technik, Aufwand, Risiken |
| Karl | Atemschutz, Prüffristen, Einsatzbereitschaft | Datenmodell, Gesundheitsdaten schützen |
| Gerätewart | Fahrzeuge, Geräte, Prüfintervalle | wie aus einem Ablauf ein Formular wird |
| Jugendwart | Jugendarbeit, Eltern, Einverständnisse | Daten Minderjähriger, Rechte |
| Kassiererin | Beiträge, Lastschrift, Kassenprüfung | Schutz von Bankdaten |
| Jonas | Bedienung am Handy, KI-Werkzeuge | Gründlichkeit, Tests, Review |
| Peter | Architektur, Code, Betrieb | Feuerwehralltag |
| Sabine | Sicherheit, Datenschutz | Feuerwehralltag |

Keiner kann es allein. Die Fachleute wissen, was gebraucht wird. Peter und Sabine wissen, wie man es sicher und wartbar baut. Der Ablauf in dieser Schulung bringt beides zusammen.

## Wie es weitergeht

- Karls erste Idee und das Gespräch auf der Heimfahrt: [Modul 02](02-ideen-per-sprache.md)
- Vom Gespräch zum Konzept: [Modul 03](03-konzept-und-prompt.md)
- Wo das Wachbuch läuft und wie mehrere gleichzeitig daran arbeiten: [Modul 11](11-umgebungen-und-zusammenarbeit.md)
- Welche Daten in welches KI-Werkzeug dürfen: [Modul 14](14-ki-und-datenschutz.md)
