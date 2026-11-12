# Fachliche Prüfung: mehr als "es funktioniert"

Eine Änderung kann alle automatischen Tests bestehen, vom Architekten freigegeben sein und trotzdem in der Praxis nicht taugen. Die Maske ist korrekt, aber am Handy mit Handschuhen nicht bedienbar. Der Ablauf ist sauber programmiert, aber er verlangt eine Nummer, die niemand im Kopf hat. Technisch korrekt heißt nicht praktisch brauchbar.

Dieses Kapitel zeigt, wie Domänenexperten eine Änderung fachlich prüfen. Das ist Stufe 4 der Mitarbeit (siehe [Mitwirken ohne Code](mitwirken-ohne-code.md)), und es ist der Teil des Reviews, den weder CI noch Architekt ersetzen können. Die Methoden funktionieren mit Menschen und auch mit einem KI-Assistenten, dem man eine Rolle gibt.

## Drei Blickwinkel

| Blickwinkel | Frage | Wer prüft |
| --- | --- | --- |
| Rollen-Prüfung (Persona-Review) | Ist das für **diese Person in dieser Lage** brauchbar? | Domänenexperte, ggf. mit KI-Assistent in einer Rolle |
| Ablauf- und Realitätsprüfung | Würde dieser **Ablauf** in einer echten Wehr bzw. Pension so funktionieren? | Domänenexperte |
| Sichtprüfung | Ist es in der **echten Oberfläche** verständlich umgesetzt? | wer auf der Test-Umgebung klickt und Bildschirmfotos macht |

Bei wichtigen Änderungen lohnen sich alle drei. Bei rein technischen Änderungen (z. B. ein Update einer Abhängigkeit ohne sichtbare Wirkung) braucht es meist keine fachliche Prüfung.

## Rollen-Prüfung: in die Haut einer echten Person schlüpfen

Bei einer Rollen-Prüfung schaut man bewusst **nicht** wie ein Entwickler auf die Software, sondern wie eine bestimmte Person in ihrem Alltag.

1. **Eine echte Rolle wählen.** Nicht "der Benutzer", sondern z. B. "Gruppenführerin, die nach dem Einsatz die Teilnehmer erfasst", "Gerätewart, der am Samstag die Atemschutzgeräte prüft", "Kommandant, der den Jahresbericht braucht", "Aushilfe an der Rezeption am ersten Tag".
2. **Eine realistische Lage ausdenken.** Die Software wird selten am ruhigen Schreibtisch benutzt. Typisch sind Zeitdruck, Handy statt PC, schlechtes Netz im Gerätehaus, Handschuhe, Lärm, Stress nach einem Einsatz, Unterbrechungen, wenig Übung mit der Software.
3. **Den Ablauf wirklich durchspielen.** Auf der Test-Umgebung klicken, Formulare ausfüllen, Fehler provozieren (leere Felder, falsche Eingaben, Netz weg). Bildschirmfotos machen. Echte Bedienung schlägt jede Beschreibung.
4. **Die Prüffragen beantworten** (siehe unten) und Auffälligkeiten notieren.

### Prüffragen

- Verstehe ich sofort, was zu tun ist?
- Finde ich die Funktion schnell, auch ohne Erklärung?
- Entspricht der Ablauf meiner echten Arbeit, in meiner Reihenfolge?
- Sind es unnötig viele Schritte?
- Fehlen Informationen, die ich für meine Rolle brauche?
- Sehe ich mehr, als ich sehen dürfte (Datenschutz)?
- Sind die Begriffe meine Begriffe, oder IT-Sprache?
- Ist nach dem Speichern eindeutig, was passiert ist?
- Kann ich versehentlich etwas Gefährliches tun, z. B. etwas löschen?
- Funktioniert es unter Zeitdruck, am Handy, für jemanden, der es nur zweimal im Jahr benutzt?

### Beispiel Wachbuch

Neue Funktion: Teilnehmer eines Einsatzes erfassen. Karl spielt die Rolle "Gruppenführer, 2 Uhr nachts, zurück im Gerätehaus, Handy, Handschuhe gerade ausgezogen, alle wollen nach Hause".

- Die Liste zeigt alle 80 Mitglieder alphabetisch. Karl muss lange scrollen. Befund: Wer heute im Dienstplan stand oder zuletzt teilgenommen hat, sollte oben stehen.
- Die Kästchen zum Ankreuzen sind sehr klein. Befund: Am Handy schwer zu treffen.
- Nach dem Speichern erscheint keine Bestätigung. Befund: Karl weiß nicht, ob es geklappt hat, und speichert ein zweites Mal.

### Mit einem KI-Assistenten als Rolle

Man kann einem KI-Assistenten eine Rolle geben, z. B.: "Du bist Maschinist in einer kleinen freiwilligen Feuerwehr, 45 Jahre alt, nutzt das Handy sicher, aber ungeduldig. Hier sind Bildschirmfotos des neuen Ablaufs zur Fahrzeugmeldung. Geh ihn Schritt für Schritt durch und beantworte die Prüffragen." Das findet oft Dinge, die man selbst übersieht. Aber: Der Assistent rät, wie die Praxis aussieht. Seine Befunde sind Hinweise, die ein Mensch mit echter Erfahrung bewertet. Und: nur Bildschirmfotos mit Testdaten verwenden.

## Ablauf- und Realitätsprüfung

Hier geht es nicht um eine Person, sondern um den **Ablauf selbst**. Ein Ablauf ist nicht automatisch sinnvoll, nur weil er technisch funktioniert oder so im Konzept stand. Die Kernfrage:

**Würde dieser Ablauf in einer echten Feuerwache (bzw. einer echten Pension) so funktionieren? Welche Informationen hat die handelnde Person in diesem Moment wirklich?**

### Typischer Fehler: Abläufe um technische Nummern herum

Software arbeitet intern mit Nummern (IDs). Menschen nicht. Ein Ablauf darf nicht verlangen, dass jemand eine interne Nummer kennt.

| Technisch (schlecht) | Natürlich (gut) |
| --- | --- |
| "Mitglieds-ID eingeben" | Name eintippen, Vorschläge erscheinen |
| "Fahrzeug-Nummer 17 wählen" | Funkrufname, z. B. "HLF 20" oder "Florian Musterstadt 42/1" |
| "Gerät-ID AS-00431" | Gerätenummer, die auf dem Gerät klebt, oder per Scan des Aufklebers |
| "Buchungsnummer eingeben" (Pension) | Gastname, Zimmernummer, Anreisedatum |

Interne Nummern sind im Datenmodell völlig in Ordnung. In der Oberfläche sollten sie selten auftauchen. Wenn sie gebraucht werden, dann als eine Möglichkeit von mehreren.

### Nicht noch einmal fragen, was die Software schon weiß

Wenn Karl die Geräteprüfung aus der Detailseite eines Atemschutzgeräts startet, darf die Software nicht noch einmal fragen, welches Gerät gemeint ist. Wenn Anna aus der Ansicht von Zimmer 4 eine Reinigung einträgt, sollte Zimmer 4 schon ausgewählt sein. Vorhandenen Zusammenhang übernehmen, sinnvolle Vorgaben setzen (z. B. heutiges Datum, angemeldete Person als Prüfer).

### Leitfragen

- **Ausgangslage:** Wer startet den Ablauf, warum, in welcher Lage? Was weiß die Person jetzt, was nicht?
- **Eingaben:** Kennt die Person das, was verlangt wird, wirklich? Könnte die Software es selbst wissen?
- **Reihenfolge:** Entspricht die Reihenfolge dem echten Ablauf? Wird etwas zu früh verlangt?
- **Entscheidungen:** Weiß die Person, welche Option richtig ist? Ist die Entscheidung für ihre Rolle überhaupt wichtig, oder wird eine technische Frage an sie weitergereicht?
- **Abschluss:** Ist klar, was passiert ist und was als Nächstes zu tun ist? Sehen auch andere Beteiligte den neuen Stand?

### Die Anforderung selbst hinterfragen

Auch eine aufgeschriebene Anforderung kann falsch sein. Aber nicht jeder darf sie einfach ändern.

| Befund | Vorgehen |
| --- | --- |
| Die Umsetzung ist offensichtlich unpraktisch, die Idee dahinter stimmt | als Verbesserung melden (Fehler oder Bedienproblem) |
| Die Anforderung ist vermutlich veraltet | als Befund melden, Dokumentation wird korrigiert |
| Die Änderung würde den Ablauf grundsätzlich verändern | nicht selbst entscheiden, sondern als offene Frage an den Maintainer |

### Die goldene Frage

Bei jeder fachlichen Prüfung mindestens einmal bewusst fragen: **Wenn ich diese Aufgabe gerade wirklich im Gerätehaus erledigen müsste, würde ich erwarten, dass die Software so funktioniert?** Ist die Antwort "nein" oder "eher nicht", lohnt es sich herauszufinden, warum.

## Befunde einordnen

Nicht jeder Befund führt zu einer Änderung. Damit der Maintainer gut entscheiden kann, wird jeder Befund eingeordnet.

| Art | Beispiel Wachbuch | Was meist passiert |
| --- | --- | --- |
| Fehler | Speichern bei 30 Teilnehmern bricht ab | wird behoben, hohe Priorität, wenn ein Kernablauf betroffen ist |
| Bedienproblem (UX) | Kästchen am Handy zu klein | wird verbessert, wenn an einer echten Rolle und Lage festgemacht |
| Fehlende Funktion | keine Sortierung nach Fälligkeit | wird als Wunsch aufgenommen, ggf. erst fachlich geklärt |
| Rechteproblem | Jugendwart sieht Tauglichkeitsdaten aller Mitglieder | wird mit Security bzw. Datenschutz geklärt, oft dringend |
| Verbesserung | zuletzt genutzte Fahrzeuge oben anzeigen | wird umgesetzt, wenn der Nutzen klar ist |
| Persönlicher Geschmack | "Ich hätte lieber Blau statt Rot" | rechtfertigt meist **keine** Änderung, wird geparkt |

Die Einordnung "persönlicher Geschmack" ist keine Abwertung. Sie schützt die Software davor, mit jeder Meinung umgebaut zu werden.

## Der Architekt gleicht ab

Rollen-Prüfungen treffen keine Entscheidungen. Peter bewertet jeden Befund gegen:

- die bestehenden Anforderungen und Entscheidungen,
- **andere Rollen:** Was der Gruppenführerin hilft, kann den Gerätewart stören,
- Datenschutz und Sicherheit (gemeinsam mit Sabine, falls es sie gibt),
- Aufwand und Nutzen,
- Einheitlichkeit der Software,
- **Zielkonflikte**.

Beispiel: Die Gruppenführerin möchte in der Teilnehmerliste sehen, wer atemschutztauglich ist. Das hilft im Einsatz. Die Tauglichkeit ist aber eine Gesundheitsangabe. Peter und Sabine lösen den Konflikt nicht blind zugunsten einer Rolle, sondern z. B. so: Angezeigt wird nur "AGT ja/nein", nicht das Datum der Untersuchung, und nur für Führungskräfte. Ist der Konflikt grundsätzlich, wird er als offene Frage festgehalten.

## Definition of Done: wann eine Änderung fertig ist

"Definition of Done" (kurz DoD) ist eine Liste von Bedingungen, die erfüllt sein müssen, bevor eine Änderung als fertig gilt. Code geschrieben heißt nicht fertig.

- [ ] Das fachliche Ziel ist erreicht, aus Sicht der Anwender, nicht nur "der Code läuft".
- [ ] Der Ablauf ist vollständig: keine halben Abläufe, keine Knöpfe ohne Funktion.
- [ ] Sonderfälle und Fehlerfälle sind bedacht, nicht nur der Normalfall.
- [ ] Es gibt passende automatische Tests. Bei einer Fehlerkorrektur gibt es einen Test, der **vor** der Korrektur fehlschlug.
- [ ] Alle automatischen Prüfungen (CI) sind grün.
- [ ] Die Dokumentation ist angepasst, wenn sich fachliches Verhalten ändert.
- [ ] Wurde eine Entscheidung getroffen (Datenmodell, Architektur, Rechte), gibt es eine Architekturentscheidung (ADR).
- [ ] Der Pull Request ist vom Maintainer, bei Sicherheitsbezug auch von Security, freigegeben.
- [ ] Die Änderung läuft auf der Test-Umgebung.
- [ ] Ein Domänenexperte hat sie dort fachlich geprüft, bei sichtbaren Änderungen auch in der Rolle, die sie benutzt (nicht nur als Administrator).

Der letzte Punkt ist wichtig: Entwickler testen meist mit allen Rechten. Kein Gruppenführer hat alle Rechte. Viele Fehler zeigen sich erst, wenn man mit den Rechten einer echten Rolle prüft.

## Kurz zusammengefasst

- "Es funktioniert" ist der Anfang der Prüfung, nicht das Ende.
- Rollen-Prüfung: echte Rolle, echte Lage, echt durchklicken.
- Ablaufprüfung: natürliche Eingaben statt Nummern, nichts doppelt fragen, die goldene Frage stellen.
- Befunde einordnen, Geschmack führt meist zu keiner Änderung.
- Der Architekt gleicht Befunde mit anderen Rollen, Datenschutz und Aufwand ab.
- Fertig ist eine Änderung erst, wenn die Definition of Done erfüllt ist, inklusive fachlicher Prüfung auf der Test-Umgebung.
