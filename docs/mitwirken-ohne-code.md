# Mitwirken ohne Code

Nicht jeder, der eine Software verbessern will, muss selbst mit einem Coding-Agenten bauen. Die meisten guten Hinweise kommen von Menschen, die die Software einfach benutzen: Karl am Handy im Gerätehaus, seine Kameraden bei der Übung, Anna an der Rezeption der Pension Seeblick. Dieses Kapitel zeigt, wie man ohne Technikwissen mitarbeitet, und was mit einer Meldung danach passiert.

## Die vier Stufen der Mitarbeit

Mitarbeit hat Stufen. Jede Stufe ist wertvoll, keine ist "nur". Man kann auf Stufe 1 bleiben und trotzdem einer der wichtigsten Mitwirkenden sein.

| Stufe | Was du tust | Was du brauchst | Beispiel |
| --- | --- | --- | --- |
| 1 Melden | Fehler melden, Wünsche beschreiben, offene Fragen beantworten | ein Konto auf der Projektplattform (z. B. GitHub) und einen Browser | Karl meldet, dass die Prüffrist eines Atemschutzgeräts falsch angezeigt wird |
| 2 Nachschlagen | einen KI-Assistenten fragen, der Dokumentation und Code kennt | etwa 20 Minuten Einrichtung, siehe [Nachschlagewerk einrichten](nachschlagewerk-einrichten.md) | Karl fragt: "Wann gilt eine Atemschutz-Unterweisung als abgelaufen?" |
| 3 Mitbauen | mit einem Coding-Agenten Änderungen bauen und einen Pull Request öffnen | die Module 02 bis 08 dieser Schulung | Karl baut die Erinnerung für fällige Geräteprüfungen |
| 4 Reviewen und Testen | neue Versionen auf der Test-Umgebung ausprobieren und fachlich prüfen | Zugang zur Test-Umgebung, siehe [Fachliche Prüfung](fachliche-pruefung.md) | Karl prüft, ob die neue Fahrzeugmaske am Handy mit Handschuhen bedienbar ist |

Stufe 4 steht nicht zufällig am Ende: Sie setzt kein Programmieren voraus, aber viel Fachwissen. Ein Domänenexperte, der eine Änderung gegen die echte Praxis prüft, findet Fehler, die kein automatischer Test findet.

## Stufe 1: Melden

Auf Stufe 1 gibt es drei Wege. Für jeden gibt es ein Formular (ein sogenanntes Issue-Formular): Man klickt auf "Neues Issue", wählt das passende Formular und füllt Felder aus. Man muss weder Git noch Markdown können. Vorlagen für diese Formulare liegen in [vorlagen/github/](vorlagen/github/README.md).

### Einen Fehler melden

Etwas funktioniert nicht so, wie es soll. Das Formular fragt drei Dinge:

1. **Was wolltest du tun?** Der Weg zum Fehler sagt oft mehr als das Ergebnis, denn der Fehler liegt häufig unterwegs. Beispiel: "Ich wollte nach der Übung die Teilnehmer eintragen."
2. **Was ist stattdessen passiert?** Möglichst wörtlich, also genau die Meldung, die auf dem Bildschirm stand. Beispiel: "Es kam die Meldung 'Speichern fehlgeschlagen', und die Liste war wieder leer."
3. **Wo in der Software?** Eine Auswahlliste, z. B. "Mitglieder", "Dienstzeiten", "Fahrzeuge", "Geräteprüfungen". "Weiß ich nicht" ist eine gültige Antwort.

**Ein Bildschirmfoto ist Gold wert.** Es zeigt in einer Sekunde, wofür ein Absatz Text nicht reicht. Man zieht es einfach in das Formularfeld.

**Aber: keine persönlichen Daten im Bildschirmfoto.** Issues sind oft für viele Menschen sichtbar, manchmal sogar öffentlich. Auf einem Bildschirmfoto aus dem Wachbuch stehen schnell Namen, Telefonnummern, Geburtstage oder Hinweise auf Gesundheit (z. B. die Atemschutz-Tauglichkeit). Vor dem Hochladen deshalb:

- den Ausschnitt so wählen, dass nur das Problem zu sehen ist,
- Namen und andere persönliche Angaben schwärzen (am Handy z. B. mit dem Stift-Werkzeug der Fotos-App),
- wenn möglich den Fehler auf der Test-Umgebung nachstellen, dort gibt es nur erfundene Daten,
- im Zweifel kein Bild, sondern eine Beschreibung.

### Einen Wunsch beschreiben

Etwas fehlt oder ist umständlich. Wichtig ist hier: **Beschreibe, was du erreichen willst, nicht wie es gebaut werden soll.** Wie es gebaut wird, klären Maintainer und Coding-Agent. Was die Praxis braucht, weißt nur du.

| Weniger hilfreich | Hilfreich |
| --- | --- |
| "Baut einen roten Button oben rechts mit der Anzahl der fälligen Prüfungen." | "Ich möchte beim Öffnen sofort sehen, ob diesen Monat eine Geräteprüfung fällig ist." |
| "Die Teilnehmerliste braucht ein Dropdown." | "Nach der Übung muss ich 25 Leute eintragen. Das dauert am Handy zehn Minuten." |

Die nützlichste Frage im Formular ist die zweite: **Wie machst du es heute, und was ist daran mühsam?** Der Umweg von heute zeigt, wie dringend der Wunsch ist und was die Lösung können muss. Karl schreibt zum Beispiel: "Ich führe nebenher eine Excel-Liste mit den Prüfterminen, weil ich im Wachbuch nicht nach Fälligkeit sortieren kann."

### Eine offene Frage beantworten

Manches lässt sich nicht aus der Software heraus entscheiden, sondern nur aus der Praxis. Solche Fragen sammelt der Maintainer auf einer **Entscheidungsseite** (oft eine Seite in der Projektdokumentation oder eine Liste von Issues mit einem eigenen Label). Jede Frage hat dort:

- **Kontext:** worum es geht und warum die Frage jetzt aufkommt,
- **Optionen:** die möglichen Antworten,
- **Folgen:** was jede Option für die Software und die Praxis bedeutet.

Beispiel aus dem Wachbuch: "Zählt eine abgebrochene Übung als Dienstzeit? Option A: ja, voll. Option B: ja, aber nur die tatsächliche Dauer. Option C: nein. Folge von B: Wer die Übung einträgt, muss die Endzeit angeben."

Die Antwort gibt man über das Formular "Antwort auf eine offene Frage". Das wertvollste Feld ist die Begründung aus der Praxis: Der Maintainer kennt die Software, du kennst den Alltag.

**Deine Antwort wird nicht automatisch übernommen.** Peter sieht sie an und trägt sie ein. Das ist kein Misstrauen. Eine Antwort kann an einer Stelle etwas umwerfen, die von außen nicht sichtbar ist, etwa eine Regel, die an drei anderen Stellen mitgedacht wurde, oder eine Datenschutzfrage. Außerdem können zwei Personen dieselbe Frage unterschiedlich beantworten. Deshalb geht jede Antwort durch eine verantwortliche Hand, und die Entscheidung wird schriftlich festgehalten (bei größeren Fragen als Architekturentscheidung, siehe [Modul 05](05-datenmodell.md)).

## Die vier Regeln

1. **Ein Thema, eine Meldung.** Zwei Fehler in einer Meldung heißt fast immer: Einer wird vergessen, weil die Meldung nach dem ersten geschlossen wird. Lieber zweimal melden. Das kostet dich eine Minute.
2. **Du musst nichts einschätzen.** Keine Dringlichkeit, keinen Lösungsvorschlag, keine Fachbegriffe aus der IT. Beschreib es so, wie du es einem Kameraden erzählen würdest. Die Einordnung ist Aufgabe des Maintainers.
3. **Lieber einmal zu viel.** "Das ist bestimmt kein Fehler" ist fast immer falsch. Wenn dich etwas stutzen lässt, lässt es den Nächsten auch stutzen, und genau das ist die wichtige Information.
4. **Du musst nichts nachhalten.** Keinen Status pflegen, nichts schließen, nicht nachfragen. Wenn jemand etwas von dir braucht, kommt eine Rückfrage in deiner Meldung, und du bekommst eine Benachrichtigung.

## Was danach passiert

| Schritt | Wer | Was |
| --- | --- | --- |
| 1 Eingang | automatisch | Die Meldung bekommt das Label `aus-der-praxis`. Ein Label ist ein farbiges Schlagwort am Issue. Daran erkennt der Maintainer, dass die Meldung aus der Praxis kommt und nicht aus einer internen Prüfung. |
| 2 Sichtung (Triage) | Maintainer | Die Meldung wird gelesen, eingeordnet (Fehler, Wunsch, Frage), mit Dubletten abgeglichen und priorisiert. Meldungen aus der Praxis werden bevorzugt angesehen: Wer die Software täglich benutzt, findet die Fehler, die zählen. |
| 3 Nachstellen | Maintainer oder Domänenexperte mit Agent | Bevor etwas geändert wird, wird der Fehler nachgestellt, am besten auf der Test-Umgebung. Lässt er sich nicht nachstellen, kommt eine Rückfrage. Das ist kein Zweifel an dir, sondern die Voraussetzung dafür, dass die Korrektur wirklich greift. |
| 4 Korrektur | wer das Issue übernimmt, meist mit Coding-Agent | Zuerst wird ein automatischer Test geschrieben, der den Fehler zeigt, also **vor** der Korrektur fehlschlägt. Dann wird korrigiert, bis der Test grün ist. Sonst weiß niemand, ob wirklich etwas repariert wurde, und der Fehler kann später unbemerkt zurückkommen. |
| 5 Review | CI, Review-Bot, Maintainer | Die Korrektur läuft als Pull Request durch alle Prüfungen (siehe [Modul 07](07-pull-request-und-review.md)). |
| 6 Test-Umgebung | automatisch nach dem Merge | Die Korrektur landet auf der Test-Umgebung. Dort kannst du nachsehen, ob es jetzt passt. Das Issue verweist auf die Änderung. |

Bei **Antworten auf offene Fragen** ist der Weg anders: Sie werden nicht direkt umgesetzt, sondern vom Maintainer geprüft, eingetragen und dokumentiert. Erst danach kann daraus ein Issue zur Umsetzung werden.

## Gegen welchen Stand testest du?

Viele Projekte haben neben der echten Software (Produktion) eine **Test-Umgebung**: eine eigene Kopie der Software mit erfundenen Daten. Neue Änderungen kommen zuerst dorthin, manchmal mehrmals am Tag.

- Wer neue Funktionen ausprobieren oder eine Korrektur prüfen will, nutzt die Test-Umgebung.
- Wer im Alltag mit der echten Software einen Fehler findet, meldet ihn trotzdem. Im Formular gibt es ein Feld, wo der Fehler auftrat.
- Wenn ein gemeldeter Fehler schon behoben ist, ist das kein Problem. Der Maintainer sieht es und schreibt es in die Meldung.
- Auf der Test-Umgebung darf man nichts kaputtmachen können, was zählt. Sie enthält deshalb nur erfundene Daten, nie eine Kopie der echten Mitgliederliste.

## Lieber fragen als suchen

Wer die Dokumentation nicht durchlesen will, kann sich einen KI-Assistenten als Nachschlagewerk einrichten. Er kennt Dokumentation und Code und hilft auch beim Formulieren einer Meldung. Wie das geht, steht in [Nachschlagewerk einrichten](nachschlagewerk-einrichten.md).

## Kurz zusammengefasst

- Mitarbeit hat vier Stufen: Melden, Nachschlagen, Mitbauen, Reviewen und Testen. Jede zählt.
- Fehler: was wolltest du tun, was ist passiert, wo. Bildschirmfoto ja, persönliche Daten nein.
- Wunsch: was du erreichen willst und wie du es heute machst, nicht wie es gebaut wird.
- Antworten auf offene Fragen prüft und trägt der Maintainer ein.
- Ein Thema pro Meldung, nichts einschätzen, lieber einmal zu viel, nichts nachhalten.
- Jeder Fehler wird erst nachgestellt und mit einem Test belegt, bevor er korrigiert wird.
