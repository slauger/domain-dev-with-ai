# Modul 19: Gut zusammenarbeiten

Software entsteht nicht nur aus Code, sondern aus vielen kleinen Gesprächen: Fragen, Antworten, Kommentare, Entscheidungen. In diesem Modul geht es darum, wie diese Gespräche gut laufen. Du lernst, wie man gute Fragen stellt, asynchron arbeitet, Feedback gibt und annimmt, Neue einarbeitet und mit Meinungsverschiedenheiten umgeht.

## Warum das im Ehrenamt besonders wichtig ist

Im Ehrenamt ist der Engpass selten der Code. Der Coding-Agent schreibt Code schnell. Knapp ist etwas anderes:

- **Wenig Zeit:** Alle arbeiten neben Familie, Beruf und Dienst in der Wehr am Wachbuch. Oft bleibt eine halbe Stunde am Abend.
- **Unterschiedliche Hintergründe:** Karl kennt den Atemschutz, Peter die Architektur, Jonas die KI-Werkzeuge. Jeder benutzt andere Wörter für dieselbe Sache.
- **Meist asynchron:** Asynchron heißt: nicht gleichzeitig. Man schreibt in ein Issue, einen Kommentar oder einen Chat, und die Antwort kommt Stunden oder Tage später. Treffen, bei denen alle gleichzeitig da sind, sind selten.
- **Der IT-Experte ist geteilt:** Peter betreut neben dem Wachbuch noch andere Projekte. Jede unklare Frage kostet ihn Zeit, die anderswo fehlt.

Deshalb gilt: **Die Kommunikation ist der Flaschenhals, nicht der Code.** Eine gut gestellte Frage spart allen eine Runde Hin und Her. Bei Antworten, die nur einmal pro Woche kommen, ist eine gesparte Runde eine gesparte Woche.

## Gute Fragen stellen

### Bevor du fragst

Viele Fragen beantworten sich in wenigen Minuten selbst. Das schont die Zeit der anderen und du kommst schneller weiter:

1. **In der Dokumentation suchen:** Projektdokumentation, Issues und geschlossene Pull Requests. Vielleicht hatte jemand dasselbe Problem schon.
2. **Den Lernbegleiter oder das Nachschlagewerk fragen:** Ein KI-Assistent, der die Schulung oder das Projekt kennt, erklärt Begriffe und Abläufe ([Lernbegleiter](tutor/README.md), [Nachschlagewerk einrichten](nachschlagewerk-einrichten.md)).
3. **Im [Glossar](glossar.md) nachschlagen:** Viele Fragen sind eigentlich Fragen nach einem Begriff.

Das heißt nicht, dass du nicht fragen darfst. Fragen ist erwünscht. Aber eine Frage, die zeigt, was du schon versucht hast, bekommt schneller eine gute Antwort.

### So ist eine gute Frage aufgebaut

| Teil | Was hineingehört | Beispiel aus dem Wachbuch |
| --- | --- | --- |
| Ziel | Was willst du erreichen? | "Ich will, dass das nächste Prüfdatum automatisch berechnet wird." |
| Kontext | Wo bist du, woran arbeitest du? | "Issue #57, Branch `feat/pruefdatum`, lokal auf meinem Rechner." |
| Was du versucht hast | Schritte, Prompts, Dokumentation | "Ich habe den Agenten gebeten, einen Test zu schreiben, und die Doku zum Datenmodell gelesen." |
| Was passiert ist | Was du gesehen hast, statt was du erwartet hast | "Der Test schlägt fehl, das Datum ist einen Tag zu früh." |
| Genaue Fehlermeldung | Wörtlich kopiert, als Text, nicht abgetippt | `AssertionError: expected 2027-03-01, got 2027-02-28` |
| Bildschirmfoto | Nur wenn es hilft, ohne persönliche Daten | Ausschnitt aus der Test-Umgebung mit erfundenen Daten |
| Link | Zum Issue, Pull Request oder CI-Lauf | "Siehe CI-Lauf im PR #61." |
| Was du brauchst | Entscheidung, Hinweis oder Review? | "Ich brauche einen Hinweis, wo ich suchen soll." |

Der letzte Punkt wird oft vergessen, ist aber der wichtigste. Peter kann in zwei Minuten einen Hinweis geben. Für ein Review braucht er eine halbe Stunde. Für eine Entscheidung muss er vielleicht erst mit dem Kommandanten sprechen. Wenn er weiß, was du brauchst, kann er seine Zeit richtig einplanen.

### Vorher und nachher

Jonas schreibt abends in den Projekt-Chat:

> Hilfe, geht nicht. Der Agent hat das kaputt gemacht. Kann mal jemand schauen?

Peter weiß nicht, was "das" ist, wo es kaputt ist und was Jonas schon probiert hat. Er muss zurückfragen, und die Antwort kommt am nächsten Abend. Zwei Tage sind weg.

Dieselbe Frage, gut gestellt, als Kommentar im Pull Request:

> - **Ziel:** Fahrzeugcheck soll den Kilometerstand speichern (Issue #43).
> - **Problem:** Nach dem Speichern ist das Feld wieder leer. Der Test `test_fahrzeugcheck_kilometerstand` ist rot.
> - **Fehlermeldung:** `IntegrityError: NOT NULL constraint failed: fahrzeugcheck.kilometerstand`
> - **Versucht:** Den Agenten gefragt, er hat das Feld im Formular ergänzt, aber der Fehler bleibt. Die Migration habe ich nicht angefasst.
> - **Ich brauche:** einen Hinweis, ob mir eine Migration fehlt. Kein Review nötig, eilt nicht.

Peter liest das in einer Minute und antwortet: "Ja, die Migration fehlt. Lass den Agenten eine erzeugen und schau dir an, was sie tut." Fertig.

### Wo fragen?

| Ort | Wofür | Nicht für |
| --- | --- | --- |
| Issue | Fragen zum Thema des Issues, fachliche Klärungen, Entscheidungen | Plaudern, Fragen ohne Bezug |
| Kommentar im Pull Request | Fragen zu einer bestimmten Stelle im Code oder zu einem Review-Kommentar | Grundsatzfragen, die das ganze Vorhaben betreffen (die gehören ins Issue) |
| Chat | kurze, schnelle Absprachen, "bist du gerade da?" | Entscheidungen und Ergebnisse, die man später wiederfinden muss |
| Privater Meldeweg | **Sicherheitslücken**, nie öffentlich (siehe `SECURITY.md` im Projekt und [Modul 08](08-sicherheit.md)) | alles andere |

Zwei Regeln dazu:

- **Ein Thema pro Frage.** Wer drei Fragen in eine Nachricht packt, bekommt meist nur auf die erste eine Antwort.
- **Antworten zurücktragen.** Wenn im Chat oder am Telefon etwas geklärt wurde, schreib es kurz ins Issue oder in die Dokumentation: "Geklärt mit Peter: Die Migration fehlte, ist jetzt im PR." Sonst stellt der Nächste dieselbe Frage, und das Wissen steckt nur in einem Chatverlauf, den niemand findet.

## Asynchron arbeiten

Asynchron arbeiten heißt: Jeder arbeitet, wenn er Zeit hat, und das Gespräch läuft schriftlich weiter. Damit das funktioniert:

- **Schreib so, dass man in zwei Minuten antworten kann.** Alles, was der andere braucht, steht in der Nachricht: Ziel, Link, konkrete Frage. Keine Rätsel, kein "siehe oben im Chat".
- **Erwähne Menschen gezielt.** Mit `@name` bekommt jemand eine Benachrichtigung. Nutze das bewusst: `@peter` bei einer Architekturfrage, `@karl` bei einer Atemschutzfrage. Nicht alle auf einmal erwähnen, sonst fühlt sich keiner zuständig.
- **Keine sofortige Antwort erwarten.** Ein Tag ist im Ehrenamt schnell. Wer dringend eine Antwort braucht, schreibt das dazu und sagt, warum.
- **Antwortzeiten vereinbaren.** Das Team legt gemeinsam fest, was normal ist, z. B.: "Fragen in Issues werden innerhalb von drei Tagen beantwortet, Reviews innerhalb einer Woche." Dann weiß jeder, wann Nachfragen angebracht ist.
- **Status im Issue aktuell halten.** Ein kurzer Satz reicht: "Bin dran, Test ist grün, PR kommt am Wochenende." Oder: "Komme diese Woche nicht dazu." So muss niemand nachfragen.

## Reviews: Feedback geben

Ein Review-Kommentar wird oft Tage später gelesen, ohne Tonfall und ohne Gesicht. Was beim Sprechen freundlich gemeint ist, kann geschrieben hart wirken. Deshalb:

- **Freundlich:** Der andere hat seine Freizeit investiert. Sag auch, was gut ist.
- **Konkret:** Nicht "das ist unschön", sondern "in Zeile 42 wird das Datum ohne Zeitzone gespeichert".
- **Begründen:** Sag, **warum** etwas geändert werden soll. Wer den Grund versteht, macht den Fehler nicht noch einmal und kann den Agenten richtig anleiten.
- **Gewicht kennzeichnen:** Unterscheide, was geändert werden muss und was nur ein Vorschlag ist. Bewährt haben sich Präfixe am Anfang des Kommentars (angelehnt an [Conventional Comments](https://conventionalcomments.org/), Stand: 2026-11-12):

| Präfix | Bedeutung | Beispiel |
| --- | --- | --- |
| `Muss:` | Ohne diese Änderung kein Merge | "Muss: Die Rechteprüfung fehlt auf dem Server. Sonst kann jeder die Prüfdaten ändern." |
| `Vorschlag:` | Wäre besser, entscheidet der Autor | "Vorschlag: Die Funktion könnte `naechste_pruefung` heißen, dann ist klarer, was sie tut." |
| `Frage:` | Der Reviewer will etwas verstehen, keine Kritik | "Frage: Warum 12 Monate? Steht das so in der Vorschrift?" |
| `Kleinigkeit:` | Tippfehler, Formulierung, unwichtig | "Kleinigkeit: Tippfehler in der Überschrift." |
| `Lob:` | Was gut gelungen ist | "Lob: Die Testfälle mit abgebrochener Übung sind sehr gut." |

### Ein harter Kommentar, freundlich umgeschrieben

So nicht:

> Das ist Quatsch. Warum speicherst du das Untersuchungsergebnis? Hast du Modul 14 nicht gelesen?

So besser:

> Muss: Hier wird das Ergebnis der Untersuchung gespeichert. Das ist ein Gesundheitsdatum und besonders geschützt (Art. 9 DSGVO, siehe [Modul 14](14-ki-und-datenschutz.md)). Für die Einsatzplanung reicht "gültig bis". Kannst du das Feld entfernen und nur das Datum speichern? Wenn du magst, schauen wir es uns am Donnerstag kurz gemeinsam an.

Der Inhalt ist derselbe, und die Änderung ist genauso verbindlich. Aber Karl versteht, warum, und weiß, was er tun soll.

## Reviews: Feedback annehmen

- **Es geht um den Code, nicht um dich.** Ein Kommentar sagt "diese Stelle hat ein Problem", nicht "du bist schlecht".
- **Nachfragen ist normal.** Wenn du einen Kommentar nicht verstehst, frag. Niemand erwartet, dass Karl weiß, was eine Migration ist.
- **Mehrere Runden sind normal.** Auch erfahrene Entwickler brauchen oft zwei oder drei Runden, bis ein Pull Request passt. Das ist kein Scheitern, sondern der Ablauf.
- **Der Agent hilft beim Umsetzen, aber du musst es verstehen.** Du kannst dem Coding-Agenten den Kommentar geben und um eine Erklärung und einen Vorschlag bitten (siehe [Modul 07](07-pull-request-und-review.md#auf-review-kommentare-antworten)). Bevor du die Änderung einreichst, musst du erklären können, was sich geändert hat und warum.
- **Der Architekt darf Nein sagen und erklärt warum.** Peter trägt die Verantwortung für die Software als Ganzes. Ein Nein ist kein Misstrauen. Umgekehrt gehört zu jedem Nein eine Begründung und, wo möglich, ein Weg, wie es doch geht.

Jonas lernt das gerade: Sein erster großer Pull Request kam mit zwölf Kommentaren zurück. Er war kurz frustriert und wollte den Agenten einfach "alle Kommentare umsetzen" lassen. Peter hat ihn gebeten, zu jedem Kommentar in einem Satz zu antworten, was er geändert hat. Beim dritten Kommentar hat Jonas gemerkt, dass der Agent eine Prüfung einfach gelöscht hatte, statt den Fehler zu beheben.

## Der Verhaltenskodex

Ein **Verhaltenskodex** (englisch Code of Conduct) ist eine kurze Vereinbarung, wie man im Projekt miteinander umgeht. Man braucht ihn nicht, solange alles gut läuft. Man braucht ihn, wenn es einmal nicht gut läuft, und dann ist es zu spät, ihn erst zu schreiben.

Ein Verhaltenskodex regelt typischerweise:

- **Respekt:** freundlicher Umgang, auch bei Meinungsverschiedenheiten, Kritik an der Sache statt an Personen.
- **Was nicht geht:** Beleidigungen, Belästigung, Bloßstellen, das Veröffentlichen privater Daten anderer.
- **Wie man meldet:** an wen man sich wenden kann, vertraulich, wenn etwas vorgefallen ist.
- **Was dann passiert:** abgestufte Folgen, von einem Hinweis bis zum Ausschluss aus dem Projekt.

Viele Open-Source-Projekte nutzen den [Contributor Covenant](https://www.contributor-covenant.org/version/2/1/code_of_conduct/) als Vorlage (Stand: 2026-11-12). GitHub zeigt eine Datei `CODE_OF_CONDUCT.md` im Repository automatisch als Verhaltenskodex an ([Quelle](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-code-of-conduct-to-your-project), Stand: 2026-11-12). Eine kurze deutsche Fassung zum Übernehmen liegt im Starter-Bausatz: [starter/CODE_OF_CONDUCT.md](https://github.com/slauger/domain-dev-with-ai/blob/main/starter/CODE_OF_CONDUCT.md).

In einer Feuerwehr gibt es schon Regeln für den Umgang miteinander. Der Verhaltenskodex ersetzt sie nicht, sondern gilt zusätzlich für die Orte des Projekts: Issues, Pull Requests, Chat. Das ist wichtig, weil dort auch Menschen mitarbeiten, die nicht Mitglied der Wehr sind, wie Peter.

## Neue Mitwirkende einarbeiten

Wer neu dazukommt, weiß nicht, wo er anfangen soll, und traut sich oft nicht zu fragen. Was hilft:

- **Ein fester Ansprechpartner (Buddy oder Mentor):** Eine Person, die man alles fragen darf, auch "dumme" Fragen. Das muss nicht Peter sein. Karl kann Buddy für den Gerätewart sein, sobald er selbst ein paar Pull Requests gemacht hat.
- **Ein kleines erstes Issue:** Issues mit dem Label `good first issue` sind klein, gut beschrieben und haben keine Abhängigkeiten. GitHub hebt sie für Neue hervor ([Quelle](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels), Stand: 2026-11-12). Beispiel: "Tippfehler in der Fahrzeugübersicht korrigieren" oder "Beschriftung des Feldes Tankfüllstand verständlicher machen".
- **Eine gemeinsame Sitzung (Pairing):** Eine Stunde zusammen am Bildschirm, vor Ort oder per Video. Der Neue steuert, der Buddy schaut zu und erklärt. Danach kennt der Neue den ganzen Weg von Issue bis Pull Request.
- **Den ersten Merge feiern:** Ein kurzes "Willkommen, dein erster Beitrag ist drin!" im Pull Request oder im Chat. Das kostet nichts und motiviert sehr.
- **Aufschreiben, was unklar war:** Neue sehen Lücken in der Dokumentation, die alle anderen nicht mehr sehen. Bitte sie, diese Lücken zu melden oder gleich selbst zu ergänzen. Das ist oft der beste zweite Beitrag.

Der Jugendwart kommt neu ins Projekt. Karl wird sein Buddy. Sein erstes Issue ist klein: Die Überschrift "JF-Dienst" soll "Übungsabend Jugendfeuerwehr" heißen. Beim gemeinsamen Termin merkt er, dass in der Dokumentation nicht steht, wie man an die Test-Umgebung kommt. Das wird sein zweiter Beitrag.

## Entscheidungen und Meinungsverschiedenheiten

Meinungsverschiedenheiten sind normal und oft nützlich: Sie zeigen, dass jemand mitdenkt. Damit sie nicht liegen bleiben oder eskalieren:

- **Klar ist, wer was entscheidet.** Fachliche Fragen entscheiden die Domänenexperten, Fragen zur Software selbst die IT-Experten, manches gemeinsam ([Geteilte Verantwortung](geteilte-verantwortung.md)). Prioritäten legt der Kommandant fest.
- **Im Issue diskutieren, nicht im Flur.** Die Argumente stehen dann dort, wo man sie später findet. Wer nicht dabei war, kann nachlesen.
- **Entscheidungen aufschreiben.** Größere Entscheidungen als ADR (Architekturentscheidung, Vorlage: [vorlagen/adr.md](vorlagen/adr.md)), fachliche Fragen auf der Entscheidungsseite des Projekts ([Mitwirken ohne Code](mitwirken-ohne-code.md#eine-offene-frage-beantworten)). Ein Satz wie "Entschieden am 12.11., weil ..." spart später lange Diskussionen.
- **Eskalieren, wenn es festhängt.** Wenn zwei sich nach einer Runde Argumente nicht einig werden, entscheidet der Maintainer (bei Fragen zur Software) oder der Kommandant (bei Prioritäten und Zuständigkeiten). Eskalieren ist kein Petzen, sondern ein geregelter Weg.
- **Widersprechen, dann mittragen** (englisch "disagree and commit"): Du darfst anderer Meinung sein und das sagen. Wenn aber entschieden ist, trägst du die Entscheidung mit und arbeitest nicht dagegen. Neue Erkenntnisse sind ein Grund, die Frage wieder zu öffnen, alter Ärger nicht.

Beispiel: Der Gerätewart will den Fahrzeugcheck mit 20 Pflichtfeldern, Jonas will nur drei, weil es am Handy schnell gehen soll. Beide schreiben ihre Gründe ins Issue. Der Kommandant entscheidet: fünf Pflichtfelder, der Rest optional. Peter schreibt die Entscheidung ins Issue. Jonas hätte es lieber schlanker gehabt, baut es aber so.

## Zeit und Motivation im Ehrenamt

- **Kleine Aufgaben:** Ein Issue, das in einem Abend fertig wird, wird eher fertig als eines für drei Wochenenden. Große Vorhaben in kleine Issues teilen.
- **Abgeben und Pausieren ist in Ordnung.** Einsatz, Lehrgang, Familie, Urlaub: Jeder hat Phasen ohne Zeit. Wichtig ist nur, es zu sagen: "Ich komme die nächsten vier Wochen nicht dazu. Wer mag, kann übernehmen, mein Stand ist im Branch." Ein stilles Liegenlassen blockiert andere.
- **Kein Wissen nur in einem Kopf.** Wenn nur Karl weiß, wie die Prüffristen berechnet werden, steht das Projekt still, wenn Karl ausfällt. Deshalb: aufschreiben, in Pull Requests erklären, ab und zu zu zweit arbeiten.
- **Anerkennung zeigen:** Danke sagen, im Pull Request und bei der Dienstversammlung. Mitwirkende in den Release-Notizen nennen ([Modul 09](09-wartung-und-releases.md)), z. B. "Danke an Karl und den Gerätewart für den neuen Fahrzeugcheck". Auch wer nur Fehler gemeldet hat, verdient den Dank.

Die Kassiererin des Fördervereins arbeitet nur einmal im Quartal am Wachbuch mit, vor der Kassenprüfung. Das ist in Ordnung. Ihre Issues sind so klein geschnitten, dass sie an einem Abend fertig werden, und ihr Wissen über Beiträge steht in der Dokumentation, nicht nur in ihrem Kopf.

## Mit KI im Team arbeiten

KI-Werkzeuge verändern auch die Kommunikation. Ein paar Regeln:

- **Sag, wenn Text oder Code von der KI stammt, wo es wichtig ist.** Zum Beispiel: "Die Erklärung hat der Agent geschrieben, ich habe sie geprüft." Dann weiß der Leser, wie er sie einordnen soll. Für jede Zeile einzeln muss man das nicht kennzeichnen. Verantwortlich bist in jedem Fall du ([Geteilte Verantwortung](geteilte-verantwortung.md)).
- **Keine langen, ungeprüften KI-Antworten in Diskussionen kopieren.** Drei Seiten KI-Text in einem Issue kosten Peter zehn Minuten Lesezeit und enthalten vielleicht Fehler, die du selbst nicht bemerkt hast.
- **Zusammenfassen statt weiterleiten.** Lies die Antwort, prüfe sie und schreib in zwei, drei eigenen Sätzen, was du daraus mitnimmst. Wenn nötig, häng die lange Fassung als Datei an.
- **Die KI ersetzt nicht das Gespräch.** Ob eine Funktion für die Wehr sinnvoll ist, beantwortet keine KI. Das klärt man mit den Kameraden.

Jonas hatte im Issue zur Dienstzeiten-Auswertung eine lange Antwort eines Chatbots gepostet: fünf Absätze, zwei Tabellen, ein Datenbankschema. Peter hat freundlich zurückgefragt: "Was davon schlägst du vor, und hast du es geprüft?" Seitdem schreibt Jonas zuerst drei eigene Sätze und hängt die KI-Antwort nur bei Bedarf an.

## Checkliste

- [ ] Vor dem Fragen: Doku, Issues, Lernbegleiter und Glossar geprüft.
- [ ] Frage enthält Ziel, Kontext, Versuche, genaue Fehlermeldung, Link und was ich brauche.
- [ ] Bildschirmfotos ohne persönliche Daten.
- [ ] Ein Thema pro Frage, am richtigen Ort gestellt; Sicherheitslücken nur über den privaten Meldeweg.
- [ ] Antworten aus Chat oder Telefon ins Issue oder die Doku zurückgetragen.
- [ ] Menschen gezielt mit `@` erwähnt, Antwortzeiten respektiert, Status im Issue aktuell.
- [ ] Review-Kommentare freundlich, konkret, begründet und mit `Muss:`, `Vorschlag:` oder `Frage:` gekennzeichnet.
- [ ] Jeden Review-Kommentar verstanden und beantwortet, auch mit Hilfe des Agenten.
- [ ] Verhaltenskodex im Projekt vorhanden, Meldeweg eingetragen.
- [ ] Neue haben einen Buddy und ein `good first issue`.
- [ ] Entscheidungen im Issue diskutiert und schriftlich festgehalten.
- [ ] Pausen und Übergaben im Issue angekündigt.
- [ ] Mitwirkenden gedankt, in den Release-Notizen genannt.
- [ ] KI-Antworten geprüft und zusammengefasst, nicht ungeprüft eingefügt.

## Kurz zusammengefasst

- Im Ehrenamt ist Kommunikation der Engpass, nicht der Code.
- Gute Fragen sagen, was du willst, was du versucht hast und was du brauchst.
- Asynchron arbeiten heißt: vollständig schreiben, gezielt erwähnen, Geduld haben, Status pflegen.
- Feedback ist freundlich, konkret, begründet und zeigt, was Pflicht und was Vorschlag ist.
- Ein Verhaltenskodex regelt den Umgang und den Meldeweg, bevor es Ärger gibt.
- Neue brauchen einen Buddy, ein kleines erstes Issue und Anerkennung.
- Entscheidungen werden diskutiert, aufgeschrieben und dann mitgetragen.

## Quellen

Stand 2026-11-12.

- [Contributor Covenant, Version 2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct/)
- [GitHub Docs: Adding a code of conduct to your project](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-code-of-conduct-to-your-project)
- [GitHub Docs: Encouraging helpful contributions to your project with labels](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels)
- [Open Source Guides: Your Code of Conduct](https://opensource.guide/code-of-conduct/)
- [Open Source Guides: Building Welcoming Communities](https://opensource.guide/building-community/)
- [Stack Overflow: How do I ask a good question?](https://stackoverflow.com/help/how-to-ask)
- [Eric S. Raymond: How To Ask Questions The Smart Way](http://www.catb.org/~esr/faqs/smart-questions.html)
- [Conventional Comments](https://conventionalcomments.org/)
