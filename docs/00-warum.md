# 00 Warum diese Schulung

## Software wird nicht mehr nur von IT-Experten gebaut

Der Bedarf an Software wird in den nächsten Jahren so groß, dass ihn IT-Experten allein nicht mehr decken können. Vereine, Feuerwehren, kleine Betriebe, Praxen und Verwaltungen brauchen Software, die genau zu ihren Abläufen passt. Fertige Produkte passen oft nicht, und eine individuelle Entwicklung durch ein IT-Team ist für sie meist zu teuer.

Gleichzeitig können KI-Coding-Agenten heute aus einer guten Beschreibung lauffähigen Code erzeugen. Damit wird es legitim und sinnvoll, dass ein Feuerwehrmann, eine Hotelfachfrau oder ein Gerätewart selbst an der Software mitbaut. Sie haben die richtig guten Ideen, weil sie die Abläufe jeden Tag erleben.

## Lizenzkosten, die sich ein Verein nicht leisten kann

Vereine, Feuerwehren und andere Ehrenamtsorganisationen finanzieren sich aus Mitgliedsbeiträgen, Spenden und kleinen Zuschüssen. Fachsoftware kostet oft mehrere hundert bis tausende Euro pro Jahr, meist pro Benutzer oder Modul. Schon wenige hundert Euro sind für viele Vereine ein Problem, und das Geld fehlt dann an anderer Stelle. Eigene, gemeinsam gepflegte Software kann diese Kosten sparen, und wenn sie als Open Source veröffentlicht wird, auch für andere Vereine.

Das gilt aber nur ehrlich gerechnet. Selbst gebaute Software ist nicht kostenlos:

- Sie braucht Betrieb: Server, Datenbank, Sicherungen, Zertifikate.
- Sie braucht tägliche Wartung: Updates von Abhängigkeiten und Sicherheitskorrekturen, sonst wird sie mit der Zeit angreifbar (siehe [Modul 09](09-wartung-und-releases.md)).
- Sie braucht Verantwortliche: Wer kümmert sich in drei Jahren noch darum, wenn die heutigen Mitwirkenden aufhören?
- Sie trägt Verantwortung für die Daten der Mitglieder, bis hin zu Gesundheitsdaten.

Darum lohnt sich der Weg nur mit einem Prozess, der Qualität, Sicherheit und Wartung von Anfang an mitdenkt. Genau den beschreibt diese Schulung. Und weil ein Maintainer mehrere solcher Projekte nur betreuen kann, wenn alle nach denselben Regeln arbeiten, ist die Schulung bewusst allgemein gehalten ([Neues Projekt aufsetzen](neues-projekt.md)).

## Zwei Seiten, zwei Lücken

| | Domänenexperte | IT-Experte |
| --- | --- | --- |
| Weiß genau | wie ein Ablauf in der Praxis funktioniert, was wirklich gebraucht wird, welche Sonderfälle es gibt, welche Begriffe gelten | wie man Abläufe in Datenmodelle und Code übersetzt, wie man Software sicher, wartbar und betreibbar macht |
| Weiß oft nicht | was ein Datenmodell ist, warum eine Entscheidung darin später teuer wird, was TLS, Passwort-Hashing, Rechteprüfung, Datenschutz und Updates bedeuten | wie der Ablauf in der Praxis wirklich aussieht, welche Ausnahmen es gibt, was den Leuten im Alltag wichtig ist |
| Typisches Risiko | Es wird ohne Plan "irgendwas reingehackt". Die Software funktioniert, bis sie gehackt wird oder die Daten nicht mehr stimmen | Beim Aufnehmen der Anforderungen gehen Details verloren. Die Software ist sauber gebaut, löst aber das falsche Problem |
| Zeit | viel Motivation, wenig Zeit neben Beruf und Ehrenamt | betreut mehrere Projekte gleichzeitig, kann sich nicht in jede Domäne tief einarbeiten |

Keine der beiden Seiten kann es allein. Der Domänenexperte ohne IT-Wissen baut Risiken ein, die er nicht sieht: offene Rechte, unsichere Passwörter, personenbezogene Daten an der falschen Stelle, ein Datenmodell, das später nicht mehr zu retten ist. Der IT-Experte ohne Domänenwissen baut eine sichere Software, die an den Abläufen vorbeigeht, und er hat nicht die Zeit, jede Domäne bis ins Detail zu lernen.

## Der Zwischenweg

Der übliche Weg reicht nicht mehr: Fachleute eröffnen Tickets, IT-Experten setzen um. Bei der Menge an Wünschen und der knappen Zeit der IT-Experten bleibt das meiste liegen, und unterwegs geht Fachwissen verloren. Domänenexperten müssen deshalb mehr Verantwortung für die Entwicklung übernehmen, und dafür brauchen sie mehr Wissen und die richtigen Werkzeuge.

Diese Schulung beschreibt einen Weg dazwischen:

1. **Der Domänenexperte treibt die Entwicklung.** Er beschreibt das Problem, diskutiert Lösungen, lässt einen Coding-Agenten umsetzen und prüft das Ergebnis fachlich. Das Wissen geht nicht verloren, weil es nicht erst übersetzt werden muss.
2. **Der IT-Experte (Architekt) sichert ab, statt alles selbst zu bauen.** Er hinterfragt Konzepte, bevor gebaut wird, prüft jeden Pull Request auf Architektur, Datenmodell und Sicherheit, gibt Tipps und schickt die Leute wieder los. So kann er mehrere Projekte betreuen.
3. **Sicherheit hat eine eigene Prüfung.** Automatische Werkzeuge prüfen jede Änderung; wo es sie gibt, schaut eine Security-Verantwortliche auf kritische Änderungen. Wo es sie nicht gibt, übernimmt das der Architekt.
4. **Nichts kommt ohne Review in die Software.** Jede Änderung läuft über einen Pull Request, automatische Prüfungen, ein KI-Review und ein menschliches Review.
5. **Entscheidungen werden aufgeschrieben.** Warum etwas so gebaut ist, steht in Architekturentscheidungen (ADRs), damit später niemand raten muss, auch kein Agent.

## Was die Schulung leisten soll

Nach der Schulung wissen Domänenexperten:

- wie sie eine Idee so beschreiben, dass ein Agent und ein Architekt damit arbeiten können,
- welche Fragen sie sich und dem Agenten stellen müssen, bevor gebaut wird,
- warum Datenmodell, Rechte, Datenschutz, Sicherheit und Updates keine Nebensache sind,
- wann sie den Architekten oder die Security-Verantwortliche fragen müssen,
- dass "es funktioniert" nicht heißt "es ist fertig".

Sie werden dadurch keine IT-Experten. Sie lernen, die Lücke zu sehen, die sie nicht selbst schließen können, und den Prozess so zu nutzen, dass sie geschlossen wird.
