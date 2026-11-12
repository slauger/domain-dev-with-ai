---
theme: default
title: Software gemeinsam entwickeln, mit Fachwissen und KI-Agenten
info: Schulung zur Zusammenarbeit von Domänenexperten und IT-Experten mit KI-Coding-Agenten. Lizenz CC BY-NC-SA 4.0.
author: Simon Lauger
fonts:
  sans: Inter
  mono: JetBrains Mono
colorSchema: light
transition: slide-left
layout: cover
class: cover
---

<div class="part">Schulung</div>

# Software gemeinsam entwickeln

Mit Fachwissen und KI-Agenten: wie Domänenexperten und IT-Experten zusammen sichere, wartbare Software bauen

<div class="author">Simon Lauger, Lizenz CC BY-NC-SA 4.0</div>

<!--
Begrüßung. Die Schulung ist generisch, das Beispiel (Feuerwehr Musterstadt, Wachbuch) ist erfunden und zieht sich durch alle Module.

Die Folien sind eine Kurzfassung. Alle Details, Quellen und Übungen stehen in docs/ und auf der Website der Schulung.
-->

---

# Worum es geht

<div class="lead">Zusammenarbeit von Domänenexperten und IT-Experten</div>

<div class="grid grid-cols-3 grid-cards mt-4">
<div class="card"><div class="tag red">Domänenexperten</div><h3>Entwickeln mit KI-Agenten mit</h3><p>Fachleute aus der Praxis tragen die Entwicklung mit, statt nur Tickets zu eröffnen.</p></div>
<div class="card dark"><div class="tag">IT-Experten</div><h3>Sichern ab</h3><p>Architektur und Sicherheit: hinterfragen, beraten und per Review freigeben.</p></div>
<div class="card accent"><div class="tag accent">Gemeinsam</div><h3>Nichts ohne Review</h3><p>Jede Änderung läuft über Pull Request, automatische Prüfungen und ein menschliches Review.</p></div>
</div>

<div v-click class="key">Domänenexperten bekommen mehr Wissen, mehr Werkzeuge und mehr Verantwortung. IT-Experten bleiben verantwortlich für Datenmodell, Architektur, Sicherheit, Datenschutz und Wartung.</div>

<!--
Kernaussage aus README und docs/index.md: Domänenexperten tragen die Entwicklung mit und bauen mit Agenten, IT-Experten für Architektur und Sicherheit hinterfragen und geben frei, und nichts landet ohne Review in der Software.

Warum die Verschiebung: IT-Experten allein können die Menge an Software nicht mehr bauen.
-->

---

# Ablauf der Schulung

<div class="grid grid-cols-3 grid-cards mt-6">
<div class="card"><div class="tag red">Teil 1</div><h3>Warum</h3><p>Bedarf, Kosten, zwei Lücken, geteilte Verantwortung, das Beispiel</p></div>
<div class="card"><div class="tag red">Teil 2</div><h3>Ablauf</h3><p>Rollen, von der Idee bis zum Release, Konzept, Recherche, Datenmodell</p></div>
<div class="card"><div class="tag red">Teil 3</div><h3>Bauen</h3><p>Coding-Agent, Review, Testen, Umgebungen, Kosten, Modelle, Datenschutz</p></div>
<div class="card dark"><div class="tag">Teil 4</div><h3>Sicher betreiben</h3><p>Sicherheit, Prototyp und Betrieb, Updates, CVE, SBOM, Lebenszyklus</p></div>
<div class="card dark"><div class="tag">Teil 5</div><h3>Miteinander</h3><p>Lizenzen und Forks, gute Fragen, Reviews, Verhaltenskodex</p></div>
<div class="card accent"><div class="tag accent">Teil 6</div><h3>Loslegen</h3><p>Mindestwissen, Lernbegleiter, erste Schritte</p></div>
</div>

<!--
Reihenfolge folgt grob dem Schulungsablauf (docs/schulungsablauf.md). Je nach Format (halbtags, ganztags, zwei Abende) werden Teile nur angerissen und im Selbststudium vertieft.

Pflicht vor dem ersten Beitrag: Grundlagen, 00, Geteilte Verantwortung, 01, 03, 05, 06, 07, 08, 10, 11, 12, 14, 19. Später: 02, 04, 09, 13, 15, 16, 17, 18.
-->

---
layout: section
class: section
---

<div class="part">Teil 1</div>

# Warum

Warum Fachleute heute mitbauen sollen, und warum das nur gemeinsam geht

<!--
Modul 00, Geteilte Verantwortung, Beispiel Feuerwehr Musterstadt.
-->

---
layout: statement
---

# IT-Experten allein können den Bedarf an Software nicht mehr decken.

Fachleute haben die richtig guten Ideen, weil sie die Abläufe jeden Tag erleben.

<!--
Quelle: docs/00-warum.md.

Vereine, Feuerwehren, kleine Betriebe, Praxen und Verwaltungen brauchen Software, die genau zu ihren Abläufen passt. Fertige Produkte passen oft nicht, eine individuelle Entwicklung durch ein IT-Team ist meist zu teuer.

KI-Coding-Agenten erzeugen heute aus einer guten Beschreibung lauffähigen Code. Damit wird es legitim und sinnvoll, dass ein Feuerwehrmann, eine Hotelfachfrau oder ein Gerätewart selbst mitbaut.
-->

---

# Lizenzkosten, die sich ein Verein nicht leisten kann

<div class="grid grid-cols-3 grid-cards mt-6">
<div class="card"><div class="tag red">Einnahmen</div><h3>Beiträge, Spenden, kleine Zuschüsse</h3><p>Davon leben Vereine, Feuerwehren und andere Ehrenamtsorganisationen.</p></div>
<div class="card accent"><div class="tag accent">Fachsoftware</div><h3>Mehrere hundert bis tausende Euro pro Jahr</h3><p>Meist pro Benutzer oder pro Modul.</p></div>
<div class="card"><div class="tag red">Folge</div><h3>Das Geld fehlt woanders</h3><p>Schon wenige hundert Euro sind für viele Vereine ein Problem.</p></div>
</div>

<div v-click class="key">Eigene, gemeinsam gepflegte Software kann diese Kosten sparen, und als Open Source auch für andere Vereine.</div>

<!--
Quelle: docs/00-warum.md, Abschnitt "Lizenzkosten, die sich ein Verein nicht leisten kann".

Im Beispiel (docs/beispiel-feuerwehr-musterstadt.md): fertige Feuerwehr-Software kostet je nach Anbieter mehrere hundert bis über tausend Euro im Jahr, oft pro Modul oder Benutzer. Die Gemeinde zahlt nur einen Teil, den Rest müsste der Förderverein tragen. Das Geld fehlt dann für Ausrüstung und Jugendarbeit.
-->

---

# Ehrlich gerechnet: selbst gebaut ist nicht kostenlos

<div class="grid grid-cols-4 grid-cards mt-6">
<div class="card"><h3>Betrieb</h3><p>Server, Datenbank, Sicherungen, Zertifikate</p></div>
<div class="card"><h3>Tägliche Wartung</h3><p>Updates und Sicherheitskorrekturen, sonst wird sie angreifbar</p></div>
<div class="card"><h3>Verantwortliche</h3><p>Wer kümmert sich in drei Jahren noch darum?</p></div>
<div class="card"><h3>Daten der Mitglieder</h3><p>Verantwortung bis hin zu Gesundheitsdaten</p></div>
</div>

<div v-click class="key">Der Weg lohnt sich nur mit einem Prozess, der Qualität, Sicherheit und Wartung von Anfang an mitdenkt.</div>

<!--
Quelle: docs/00-warum.md.

Weil ein Maintainer mehrere solcher Projekte nur betreuen kann, wenn alle nach denselben Regeln arbeiten, ist die Schulung bewusst allgemein gehalten. Details zu den echten Kosten: docs/neues-projekt.md, Abschnitt "Was kostet das wirklich", und Modul 13.
-->

---
layout: two-cols-header
---

# Zwei Seiten, zwei Lücken

::left::

<div class="card mr-3">
<div class="tag red">Domänenexperte</div>
<h3>Weiß genau</h3>
<p>wie ein Ablauf in der Praxis funktioniert, was wirklich gebraucht wird, welche Sonderfälle es gibt</p>
<h3 class="mt-3">Weiß oft nicht</h3>
<p>was ein Datenmodell ist, was TLS, Passwort-Hashing, Rechteprüfung, Datenschutz und Updates bedeuten</p>
<h3 class="mt-3">Typisches Risiko</h3>
<p>Ohne Plan wird "irgendwas reingehackt". Es funktioniert, bis es gehackt wird.</p>
</div>

::right::

<div class="card dark ml-3">
<div class="tag">IT-Experte</div>
<h3>Weiß genau</h3>
<p>wie man Abläufe in Datenmodell und Code übersetzt und Software sicher, wartbar und betreibbar macht</p>
<h3 class="mt-3">Weiß oft nicht</h3>
<p>wie der Ablauf in der Praxis wirklich aussieht und was den Leuten im Alltag wichtig ist</p>
<h3 class="mt-3">Typisches Risiko</h3>
<p>Sauber gebaut, löst aber das falsche Problem. Keine Zeit für jede Domäne.</p>
</div>

<!--
Quelle: Tabelle in docs/00-warum.md.

Zeit: Der Domänenexperte hat viel Motivation und wenig Zeit neben Beruf und Ehrenamt. Der IT-Experte betreut mehrere Projekte gleichzeitig.

Keine der beiden Seiten kann es allein. Der Domänenexperte baut Risiken ein, die er nicht sieht: offene Rechte, unsichere Passwörter, personenbezogene Daten an der falschen Stelle, ein Datenmodell, das später nicht zu retten ist.
-->

---

# Der Zwischenweg

<div class="grid grid-cols-5 grid-cards mt-6">
<div class="card sm"><div class="tag red">1</div><h3>Domänen&shy;experte treibt</h3><p>beschreibt, diskutiert, lässt den Agenten umsetzen, prüft fachlich</p></div>
<div class="card sm"><div class="tag red">2</div><h3>Architekt sichert ab</h3><p>hinterfragt Konzepte, prüft jeden Pull Request, schickt die Leute wieder los</p></div>
<div class="card sm"><div class="tag red">3</div><h3>Eigene Sicherheits&shy;prüfung</h3><p>automatische Werkzeuge, bei kritischen Änderungen ein Mensch</p></div>
<div class="card sm accent"><div class="tag accent">4</div><h3>Nichts ohne Review</h3><p>Pull Request, automatische Prüfungen, KI-Review, menschliches Review</p></div>
<div class="card sm"><div class="tag red">5</div><h3>Entscheidungen aufschreiben</h3><p>als ADR, damit später niemand raten muss, auch kein Agent</p></div>
</div>

<div v-click class="key">Der übliche Weg reicht nicht mehr: Fachleute eröffnen Tickets, IT-Experten setzen um, und das meiste bleibt liegen.</div>

<!--
Quelle: docs/00-warum.md, Abschnitt "Der Zwischenweg".

Domänenexperten werden dadurch keine IT-Experten. Sie lernen, die Lücke zu sehen, die sie nicht selbst schließen können, und den Prozess so zu nutzen, dass sie geschlossen wird. "Es funktioniert" heißt nicht "es ist fertig".

Gibt es keine Security-Verantwortliche, übernimmt der Architekt die Sicherheitsprüfung.
-->

---

# Geteilte Verantwortung

<div class="layers mt-2">
<div class="stack">
<div class="layer"><h3>Domänenexperten<small>was IN der Software passiert</small></h3><div class="chips"><span class="chip">Ideen und Wünsche</span><span class="chip">Abläufe und Begriffe</span><span class="chip">Fachliche Regeln und Sonderfälle</span><span class="chip">Testfälle in eigenen Worten</span><span class="chip">Umsetzung mit dem Agenten</span><span class="chip">Fachliche Prüfung und Abnahme</span><span class="chip">Kameraden einweisen</span></div></div>
<div class="layer shared"><h3>Gemeinsam<small>braucht Fach- und IT-Wissen</small></h3><div class="chips"><span class="chip">Anforderungen und Scope</span><span class="chip">Datenmodell</span><span class="chip">Rechte und Rollen</span><span class="chip">Datenschutz: welche Daten, wofür</span><span class="chip">Priorisierung</span><span class="chip">Entscheidungen festhalten (ADR)</span></div></div>
<div class="layer it"><h3>IT-Experten<small>die Software SELBST</small></h3><div class="chips"><span class="chip">Architektur</span><span class="chip">Sicherheit und Review</span><span class="chip">Tests und CI</span><span class="chip">Betrieb und Hosting</span><span class="chip">Monitoring</span><span class="chip">Backups</span><span class="chip">Updates, CVEs, SBOM</span><span class="chip">Releases und Rollback</span><span class="chip">Zugänge und Geheimnisse</span></div></div>
</div>
<div class="agent"><h3>KI-Agent</h3><p>setzt um, was Menschen beauftragen und prüfen.</p><p class="mt-2"><b>Trägt keine Verantwortung.</b></p></div>
</div>

<!--
Quelle: docs/geteilte-verantwortung.md. Idee angelehnt an das Modell der geteilten Verantwortung großer Cloud-Anbieter: Sicherheit DER Cloud gegenüber Sicherheit IN der Cloud.

Was daraus folgt:
- Niemand ist für alles zuständig, aber jeder braucht genug Verständnis für die andere Seite, um die richtigen Fragen zu stellen.
- Die Grenzen verschieben sich mit der Zeit (Modul 15). Die rechte Spalte bleibt immer beim IT-Experten.
- Was gemeinsam ist, braucht beide. Ein Datenmodell nur aus Fachsicht ist oft unsicher, eines nur aus IT-Sicht geht an den Abläufen vorbei.

Beispiel: Karl will Atemschutz-Einsatzzeiten automatisch im Nachweis. Karl beschreibt und baut, Karl und Peter klären gemeinsam die Quelle der Wahrheit und Rechte (ADR), Peter prüft und rollt aus, der Agent schreibt Code und Tests.
-->

---
layout: statement
---

# "Der Agent hat das so gebaut" ist keine Begründung.

Wer den Auftrag gibt und den Pull Request einreicht, muss erklären können, was sich ändert und warum.

<!--
Quelle: docs/geteilte-verantwortung.md, Abschnitt "Was daraus folgt", und Modul 06 ("Die wichtigste Regel: Verstehen, was sich ändert").

Guter Test: Kannst du in drei Sätzen sagen, welche Dateien sich ändern, was Nutzer danach anders erleben und welche Daten betroffen sind?
-->

---

# Das Beispiel: Feuerwehr Musterstadt

<div class="lead">Erfunden, aber realistisch. Die Software heißt "Wachbuch".</div>

<div class="grid grid-cols-4 grid-cards mt-4">
<div class="card"><div class="big">70</div><p>aktive Mitglieder in zwei Löschzügen</p></div>
<div class="card"><div class="big">25</div><p>davon Atemschutz&shy;geräteträger</p></div>
<div class="card"><div class="big">6</div><p>Fahrzeuge, darunter HLF 20 und Drehleiter</p></div>
<div class="card accent"><div class="big accent">200</div><p>Mitglieder im Förderverein</p></div>
</div>

<div v-click class="key">Das Wachbuch verwaltet Mitglieder, Dienstzeiten, Fahrzeuge und Geräteprüfungen. Bisher läuft das auf Papier, in Tabellen und in Chatgruppen.</div>

<!--
Quelle: docs/beispiel-feuerwehr-musterstadt.md und docs/01-rollen-und-ablauf.md. Alle Personen, Orte und Zahlen sind erfunden.

Musterstadt: Kleinstadt mit rund 8.000 Einwohnern, zwei Ortsteile. Dazu eine Jugendfeuerwehr mit 18 Jugendlichen zwischen 12 und 17 Jahren und eine Alters- und Ehrenabteilung.

Warum ein eigenes Wachbuch: Atemschutz-Nachweise in einer Tabelle, Prüftermine in einem Ordner, Dienstzeiten auf Anwesenheitslisten, die der Kommandant abends abtippt. Der Kommandant hat mit dem Förderverein entschieden, ein eigenes, schlankes Wachbuch zu bauen, mit KI-Agenten und unter Aufsicht eines Softwarearchitekten.

Zweites Beispiel in der Schulung: Pension Seeblick mit acht Zimmern, Anna als Domänenexpertin.
-->

---

# Wer mitmacht

<div class="grid grid-cols-4 grid-cards mt-4">
<div class="card sm"><div class="tag red">Kommandant</div><h3>Prioritäten, Pflichten</h3><p>entscheidet, was zuerst gebaut wird und wer was sehen darf</p></div>
<div class="card sm"><div class="tag red">Karl</div><h3>Atemschutz&shy;gerätewart</h3><p>kennt Prüffristen und Einsatzbereitschaft, Domänenexperte</p></div>
<div class="card sm"><div class="tag red">Gerätewart</div><h3>Fahrzeuge und Geräte</h3><p>Prüfintervalle, Fahrzeugcheck am Handy in der Halle</p></div>
<div class="card sm"><div class="tag red">Jugendwart</div><h3>Jugendfeuerwehr</h3><p>Einverständnisse, Notfallkontakte, Daten Minderjähriger</p></div>
<div class="card sm"><div class="tag red">Kassiererin</div><h3>Förderverein</h3><p>Beiträge, Lastschrift, Bankdaten schützen</p></div>
<div class="card sm accent"><div class="tag accent">Jonas</div><h3>Junger Feuerwehrmann</h3><p>schnell mit KI-Werkzeugen, hält "läuft bei mir" für "fertig"</p></div>
<div class="card sm dark"><div class="tag">Peter</div><h3>Softwarearchitekt, extern</h3><p>Maintainer mehrerer Vereinsprojekte, wenig Zeit</p></div>
<div class="card sm dark"><div class="tag">Sabine</div><h3>IT-Sicherheit, optional</h3><p>Sicherheit und Datenschutz, sonst übernimmt Peter</p></div>
</div>

<!--
Quelle: docs/beispiel-feuerwehr-musterstadt.md, Abschnitt "Die Personen" und Tabelle "Wer weiß was?".

Keiner kann es allein. Die Fachleute wissen, was gebraucht wird. Peter und Sabine wissen, wie man es sicher und wartbar baut.

Karl hat mit Gesundheitsdaten zu tun: Atemschutztauglichkeit (G26.3) ist nach Art. 9 DSGVO besonders geschützt. Im Wachbuch steht nur, was für die Einsatzplanung nötig ist ("gültig bis"), nie Befunde.

Jonas: "Ich lass den Agenten mal schnell eine Push-Benachrichtigung für Alarme bauen." Peter bremst: erst Konzept, dann Issue, dann bauen, und Alarmierung ist Sache der Leitstelle.
-->

---
layout: section
class: section
---

<div class="part">Teil 2</div>

# Ablauf

Wer was macht, und welchen Weg eine Idee bis in die Software nimmt

<!--
Module 01 bis 05.
-->

---

# Die Rollen

<div class="grid grid-cols-3 grid-cards mt-4">
<div class="card sm"><div class="tag red">Domänenexperte</div><h3>Beschreibt, baut mit dem Agenten, prüft fachlich</h3><p>Darf nie: etwas ohne Review in die Software bringen oder echte Daten an KI-Werkzeuge geben</p></div>
<div class="card sm"><div class="tag red">Coding-Agent</div><h3>Plant, schreibt Code und Tests, fragt nach</h3><p>Darf nie: entscheiden, was gebaut wird, oder Prüfungen abschalten, damit es durchläuft</p></div>
<div class="card sm dark"><div class="tag">Architekt und Maintainer</div><h3>Prüft Konzepte und Pull Requests, entscheidet</h3><p>Darf nie: freigeben, was er nicht verstanden hat, oder Review überspringen, weil es eilt</p></div>
<div class="card sm dark"><div class="tag">Security (optional)</div><h3>Prüft Anmeldung, Rechte, persönliche Daten</h3><p>Darf nie: Lücken "später" beheben lassen, wenn sie jetzt schaden können</p></div>
<div class="card sm accent"><div class="tag accent">KI-Review-Bot</div><h3>Meldet früh Auffälligkeiten</h3><p>Darf nie: allein über eine Freigabe entscheiden. Kommentare sind Hinweise.</p></div>
<div class="card sm accent"><div class="tag accent">CI</div><h3>Prüft jede Änderung, meldet rot oder grün</h3><p>Darf nie: abgeschaltet oder umgangen werden</p></div>
</div>

<!--
Quelle: docs/01-rollen-und-ablauf.md, Abschnitt "Die Rollen".

Der Agent ist schnell und fleißig, aber er kann sich irren und klingt dabei trotzdem überzeugt. Deshalb prüft immer ein Mensch.

Der Architekt darf die Arbeit des Domänenexperten nicht selbst neu schreiben, statt Hinweise zu geben, sonst wird er zum Flaschenhals.

CI: Continuous Integration, bei jeder Änderung laufen automatisch Prüfungen (Tests, Formatierung, Sicherheits-Scans).
-->

---

# Von der Idee bis zum Release

<div class="steps sm mt-6" style="--n: 6">
<div><div class="n">1</div><h3>Idee per Sprache</h3><p>im Gespräch durchdenken</p></div>
<div><div class="n">2</div><h3>Konzept</h3><p>Review durch den Architekten</p></div>
<div><div class="n">3</div><h3>Issue</h3><p>Aufgabe mit Abnahme&shy;kriterien</p></div>
<div><div class="n">4</div><h3>Prompt</h3><p>Auftrag an den Agenten</p></div>
<div><div class="n">5</div><h3>Agent</h3><p>plant, Freigabe, setzt um</p></div>
<div><div class="n">6</div><h3>Eigene Prüfung</h3><p>ausprobieren, hinterfragen</p></div>
<div><div class="n">7</div><h3>Pull Request</h3><p>Änderungs&shy;vorschlag</p></div>
<div class="accent"><div class="n">8</div><h3>Automatisch + KI-Review</h3><p>CI prüft, Bot kommentiert</p></div>
<div class="dark"><div class="n">9</div><h3>Review IT-Experten</h3><p>Architekt, ggf. Security</p></div>
<div><div class="n">10</div><h3>Merge</h3><p>in die Hauptversion</p></div>
<div><div class="n">11</div><h3>Test</h3><p>Testumgebung, erfundene Daten</p></div>
<div class="accent"><div class="n">12</div><h3>Release</h3><p>kommt bei der Wehr an</p></div>
</div>

<div v-click class="key">Zurückgehen ist normal und kein Scheitern. Je später ein Fehler auffällt, desto teurer wird er.</div>

<!--
Quelle: docs/01-rollen-und-ablauf.md, Abschnitt "Der Arbeitsablauf".

An jedem Prüfpunkt kann es zurückgehen: Konzept-Review mit Fragen zum Datenmodell zurück zur Diskussion, Agent hat etwas anderes gebaut zurück zum Prompt, CI rot zurück zur Umsetzung, grundsätzlich falscher Ansatz zurück zum Konzept, Problem in der Testumgebung wird ein neues Issue.

Faustregel: Ein Satz im Konzept zu ändern kostet Minuten. Ein falsches Datenmodell nach dem Release zu ändern kann Wochen kosten.
-->

---
layout: statement
---

# Nichts landet ohne Review in der Software.

Egal wie klein die Änderung ist, egal wie sicher sich der Agent ist, egal wie eilig es ist.

<!--
Die goldene Regel aus docs/01-rollen-und-ablauf.md.
-->

---

# Ideen im Gespräch entwickeln

<div class="chat sm mt-2">
<div class="msg me"><b>Karl, auf dem Parkplatz nach der Übung</b><p>Nach einem Einsatz trage ich die Atemschutzzeiten zweimal ein: im Einsatzbericht und im Nachweis jedes Geräteträgers. Das will ich automatisch haben.</p></div>
<div class="msg other"><b>Assistent</b><p>Was ist die Wahrheit, wenn sich beide widersprechen? Der Einsatzbericht oder der Nachweis?</p></div>
<div class="msg me"><b>Karl</b><p>Eigentlich der Einsatzbericht. Da steht ja, was passiert ist.</p></div>
<div class="msg other"><b>Assistent</b><p>Dann sollte der Nachweis die Zeiten nicht kopieren, sondern auf den Bericht verweisen. Und was passiert, wenn ein Bericht storniert wird?</p></div>
</div>

<!--
Quelle: Beispielgespräch in docs/02-ideen-per-sprache.md, hier gekürzt.

Was man daran sieht:
- Der Assistent hat nicht einfach zugestimmt, sondern "kopieren" hinterfragt und "verweisen" vorgeschlagen.
- Er fragt nach Korrekturen, Stornos, Personen von der Nachbarwehr, Altdaten, Datenschutz und Rechten.
- Er gibt zu, dass er etwas nicht sicher weiß (andere Programme), und verweist auf Recherche.
- Am Ende steht eine Zusammenfassung mit offenen Fragen, keine fertige Lösung.

Sicherheit im Auto: nur freihändig, Gespräch vor der Abfahrt starten, nie auf den Bildschirm schauen, im Zweifel pausieren. Die Gesetze zur Handynutzung am Steuer gelten unverändert.
-->

---

# Sprache ist zum Denken da

<div class="grid grid-cols-2 grid-cards mt-6">
<div class="card ok"><div class="tag ok">Gut geeignet</div><ul><li>laut denken, Gedanken sortieren</li><li>Fragen stellen lassen, die man selbst übersieht</li><li>den Assistenten widersprechen lassen</li><li>Risiken und Sonderfälle finden</li></ul></div>
<div class="card"><div class="tag red">Weniger geeignet</div><ul><li>genaue Anforderungen festlegen</li><li>Code schreiben oder prüfen</li><li>Tabellen, Zahlen, Feldnamen</li><li>endgültige Entscheidungen</li></ul></div>
</div>

<div v-click class="key">Am Anfang sagen: "Stell mir Fragen und sag mir ehrlich, wo die Idee Schwächen hat." Keine echten Namen oder Diagnosen.</div>

<!--
Quelle: docs/02-ideen-per-sprache.md, Abschnitte "Wofür Sprache gut ist und wofür nicht" und "Tipps für ein gutes Gespräch".

Weitere Tipps: Risiken nennen lassen ("Was ist mit Datenschutz und Rechten?"), nach bestehenden Lösungen fragen, eine Idee pro Gespräch, am Ende zusammenfassen lassen. Die Zusammenfassung ist der Startpunkt für das Konzept.

Funktionen und Preise der Sprachassistenten ändern sich schnell (Stand: November 2026).
-->

---

# Erst Konzept, dann Code

<div class="grid grid-cols-3 grid-cards mt-6">
<div class="card ok"><div class="tag ok">Fehler im Plan</div><h3>Radiergummi</h3><p>fünf Minuten</p></div>
<div class="card accent"><div class="tag accent">Nach dem Fundament</div><h3>Bagger</h3><p>eine Woche</p></div>
<div class="card"><div class="tag red">Nach dem Einzug</div><h3>Umbau im laufenden Betrieb</h3><p>Monate</p></div>
</div>

<div v-click class="key">Ein Konzept von einer Seite liest der Architekt in zehn Minuten. Ein Pull Request mit 40 Dateien und falschem Ansatz kostet ihn eine Stunde und dich die ganze Arbeit.</div>

<!--
Quelle: docs/03-konzept-und-prompt.md, Abschnitt "Warum erst ein Konzept und nicht gleich programmieren?". Bild: ein Gerätehaus bauen.

Der Agent baut genau das, was du ihm sagst, auch wenn es eine schlechte Idee ist. Das Konzept ist der billigste Punkt, um Fehler zu beheben.

Im Beispiel hat Peters Antwort auf Karls Konzept zehn Minuten gekostet und Karl vermutlich Tage an Umbau erspart.
-->

---

# Konzept, Issue, Prompt

<div class="grid grid-cols-3 grid-cards mt-4">
<div class="card sm"><div class="tag red">Konzept</div><h3>Was und warum, nicht wie</h3><ul><li>Problem, Ziel, Nutzer, Ablauf</li><li>Daten: Quelle der Wahrheit?</li><li>Rechte und Datenschutz</li><li>Grenzen und offene Fragen</li><li>Abnahmekriterien</li></ul></div>
<div class="card sm"><div class="tag red">Issue</div><h3>Fester Ort für die Aufgabe</h3><ul><li>Worum es geht, Link zum Konzept</li><li>Abnahmekriterien als Liste</li><li>Was nicht dazugehört</li><li>Abhängigkeiten, z. B. ein ADR</li></ul></div>
<div class="card sm accent"><div class="tag accent">Prompt</div><h3>Auftrag an den Agenten</h3><ul><li>Issue und AGENTS.md lesen</li><li>erst Plan, auf OK warten</li><li>kleine Schritte, Tests je Kriterium</li><li>keine Prüfung abschalten</li><li>nur Testdaten, fragen statt raten</li></ul></div>
</div>

<!--
Quelle: docs/03-konzept-und-prompt.md. Vorlagen: docs/vorlagen/konzept.md, issue.md, prompt-coding-agent.md.

Warum der Prompt so aufgebaut ist:
- "Lies erst": Der Agent kennt dein Projekt nicht. Ohne die Regeln erfindet er eigene.
- "Warte auf mein OK": Einen Plan zu korrigieren ist viel billiger als Code.
- "Rate nicht": Agenten füllen Lücken gern mit plausiblen Annahmen.
- "Schalte keine Prüfung ab": Agenten neigen dazu, einen Fehler wegzumachen, statt ihn zu beheben.
- "Nur Testdaten": Echte Daten von Kameraden gehören nicht in ein KI-Werkzeug.

AGENTS.md ist eine Datei im Projekt mit den Regeln speziell für Coding-Agenten.
-->

---

# Schauen, wie andere es lösen

<div class="grid grid-cols-3 grid-cards mt-6">
<div class="card"><div class="tag red">Erkenntnis</div><h3>Erfasst wird ein Trupp, nicht eine Person</h3><p>Ohne Recherche hätte Karl Zeiten pro Person gebaut und später alles umbauen müssen.</p></div>
<div class="card"><div class="tag red">Grenze</div><h3>Inspiration ja, kopieren nein</h3><p>Ideen und Abläufe anschauen ist erlaubt. Code, Bilder, Texte und Handbücher sind geschützt.</p></div>
<div class="card accent"><div class="tag accent">Vorsicht</div><h3>Der Assistent kann halluzinieren</h3><p>Funktionen, Paragrafen, Zahlen und Fristen immer an der Quelle prüfen.</p></div>
</div>

<div v-click class="key">Eine Stunde Recherche spart oft Tage. Manchmal ist "nicht bauen" die beste Entscheidung.</div>

<!--
Quelle: docs/04-marktrecherche.md.

Wo man schaut: etablierte Produkte der Branche, Open-Source-Projekte, Normen und Vorschriften, Verbände und Fachforen, Kollegen in anderen Organisationen.

Deep-Research-Funktionen der Assistenten: klare Frage, sagen was man rausziehen will (Funktionen, Datenmodell, Abläufe, Begriffe, Vorgaben), Quellen verlangen, Ergebnis als Tabelle, Stichproben selbst prüfen.

Ergebnis: eine kurze Vergleichstabelle ans Konzept, die der Architekt in zwei Minuten liest.

Open Source heißt nicht, dass man alles damit machen darf. Lizenzfragen vorher mit dem Architekten klären (Modul 18).
-->

---

# Das Datenmodell ist das Fundament

<div class="lead">Daten überleben den Code. Fehler darin sind teuer und manchmal gefährlich.</div>

<div class="grid grid-cols-4 grid-cards mt-2">
<div class="card sm"><div class="tag red">Identität</div><h3>E-Mail als Login-Nummer</h3><p>Familie mit gemeinsamer Adresse: nur einer kann sich anmelden. Neue Adresse: neue Person, leerer Nachweis.</p></div>
<div class="card sm"><div class="tag red">Löschen</div><h3>Ausgetretene endgültig löschen</h3><p>Teilnahmen verschwinden mit. Die Statistik für die Gemeinde stimmt nicht mehr.</p></div>
<div class="card sm"><div class="tag red">Mandanten</div><h3>Nachbarwehr in dieselbe Datenbank</h3><p>Ein vergessener Filter, und sie sieht die Mitglieder aus Musterstadt.</p></div>
<div class="card sm accent"><div class="tag accent">Gesundheit</div><h3>Untersuchung als Feld beim Mitglied</h3><p>Gesundheitsdaten landen in Exporten, Listen und Telefonlisten.</p></div>
</div>

<div v-click class="key">Besser: feste Nummer je Person, stornieren statt löschen, Mandant von Anfang an, sensible Daten in eigener Entität mit eigenen Rechten.</div>

<!--
Quelle: docs/05-datenmodell.md, Abschnitt "Teure und gefährliche Fehler: sieben Beispiele". Hier vier davon; die anderen drei: Freitext statt Verweis ("HLF 20", "HLF20", "Hlf 20/1"), eine Tabelle für alles (JSON-Inhalt, keine Prüfung, keine Rechte pro Feld, Agenten schlagen das gern vor), keine Historie (wer hat "Prüfung bestanden" eingetragen?).

Bild: Wenn eine Software ein Haus ist, ist das Datenmodell das Fundament. Ein schiefes Fenster tauscht man an einem Nachmittag, ein schiefes Fundament bekommt man kaum gerade.

Änderungen im Betrieb heißen Migration: alle vorhandenen Daten müssen umgebaut werden. Mandantenfähigkeit nachträglich einzubauen ist eine der teuersten Änderungen überhaupt.
-->

---
layout: two-cols-header
---

# Datenmodell-Fragen erkennen und festhalten

::left::

<div class="card mr-3">
<div class="tag red">Berührt meine Idee das Fundament?</div>
<ul>
<li>Muss sich die Software etwas Neues merken?</li>
<li>Entsteht eine neue Beziehung?</li>
<li>Ändert sich, was eindeutig ist?</li>
<li>Geht es um Löschen, Stornieren, Archivieren?</li>
<li>Sind sensible Daten betroffen?</li>
<li>Steht dieselbe Information künftig an zwei Stellen?</li>
<li>Sollen andere Organisationen mitnutzen?</li>
</ul>
</div>

::right::

<div class="card dark ml-3">
<div class="tag">ADR: Architekturentscheidung</div>
<h3>Eine Seite im Projekt</h3>
<ul>
<li><b>Kontext:</b> welches Problem?</li>
<li><b>Entscheidung:</b> was gilt?</li>
<li><b>Alternativen:</b> was nicht, und warum?</li>
<li><b>Folgen:</b> auch die Nachteile</li>
</ul>
<p class="mt-3">In zwei Jahren steht die Antwort da, auch für den Agenten.</p>
</div>

<!--
Quelle: docs/05-datenmodell.md, Abschnitte "Woran du eine Datenmodell-Entscheidung erkennst" und "Entscheidungen aufschreiben: das ADR". Achte Frage: Müssen vorhandene Daten umgebaut werden?

Wenn ja: im Konzept unter "Daten" ausdrücklich aufschreiben und als Frage an den Architekten markieren. Den Coding-Agenten in diesem Fall nie selbst entscheiden lassen.

Wer macht was: Karl erkennt die Frage und schreibt sie ins Konzept. Peter entscheidet und schreibt das ADR (oder prüft Karls Entwurf). Sabine wird bei sensiblen Daten gefragt.
-->

---
layout: section
class: section
---

<div class="part">Teil 3</div>

# Bauen

Mit dem Agenten arbeiten, prüfen, testen, und die richtigen Werkzeuge wählen

<!--
Module 06, 07, 11, 12, 13, 14, 17.
-->

---

# Mit dem Coding-Agenten arbeiten

<div class="grid grid-cols-3 grid-cards mt-6">
<div class="card"><div class="tag red">Was er ist</div><h3>Eine sehr schnelle, sehr belesene Aushilfe</h3><p>Kennt aber das Projekt nicht, die Feuerwehr nicht und erzählt manchmal mit großer Überzeugung Unsinn.</p></div>
<div class="card"><div class="tag red">Einstieg</div><h3>In der Cloud, im Browser starten</h3><p>Keine Installation: GitHub verbinden, Repository wählen, Auftrag geben, Diff ansehen.</p></div>
<div class="card accent"><div class="tag accent">Wichtigste Regel</div><h3>Verstehen, was sich ändert</h3><p>In drei Sätzen: welche Dateien, was Nutzer anders erleben, welche Daten betroffen sind.</p></div>
</div>

<div v-click class="key">Welcher Anbieter? Der, für den du schon ein Abo hast. Das Vorgehen ist wichtiger als das Werkzeug.</div>

<!--
Quelle: docs/06-coding-agent.md, Stand 2026-11-12.

Beispiele für Coding-Agenten: Claude Code (Web, App, Desktop, CLI) und OpenAI Codex (Cloud, App, IDE-Erweiterung, CLI). Beide lesen eine Datei AGENTS.md im Repository automatisch.

Cloud-Sandbox: läuft weiter, wenn der Laptop zu ist, vom Handy steuerbar, geringes Risiko für den eigenen Rechner, aber nicht alle Prüfungen verfügbar. Lokal: volle Kontrolle, alle Prüfungen, braucht Einrichtung. Fehlende Prüfungen in der Cloud fängt die CI beim Pull Request auf.

Typische Fehler von Agenten: erfundene Funktionen oder Pakete, behaupten Tests seien grün ohne sie auszuführen, ändern nebenbei Dinge, veraltetes Wissen, Sicherheitsprüfungen nur in der Oberfläche.
-->

---

# Den Agenten führen und hinterfragen

<div class="grid grid-cols-3 grid-cards mt-6">
<div class="card sm"><h3>"Warum?"</h3><p>Warum diese Datei, warum ein neues Feld? Eine ausweichende Antwort ist ein Warnsignal.</p></div>
<div class="card sm"><h3>"Welche Alternativen gibt es?"</h3><p>Zwei oder drei Wege mit Vor- und Nachteilen. Oft ist der einfachste der beste.</p></div>
<div class="card sm"><h3>"Was könnte kaputtgehen?"</h3><p>Welche bestehenden Funktionen und welche vorhandenen Daten sind betroffen?</p></div>
<div class="card sm"><h3>"Wer darf das sehen oder ändern?"</h3><p>Bei jeder Änderung an Daten und Ansichten nach den Rechten fragen.</p></div>
<div class="card sm"><h3>"Erkläre es mir für den Architekten."</h3><p>Kannst du es nicht wiedergeben, ist der Pull Request nicht fertig.</p></div>
<div class="card sm accent"><h3>Stopp, wenn er sich im Kreis dreht</h3><p>Derselbe Fehler zum dritten Mal, Tests löschen, Prüfungen abschwächen: abbrechen.</p></div>
</div>

<!--
Quelle: docs/06-coding-agent.md, Abschnitt "Den Agenten steuern und hinterfragen".

Beauftragen: Issue verlinken, auf AGENTS.md verweisen, erst planen lassen, klein schneiden (eine Aufgabe pro Auftrag), Prüfungen verlangen, nur erfundene Daten.

Kleine Pull Requests: ein Pull Request löst genau ein Issue, keine Aufräumarbeiten nebenbei, bei unübersichtlichem Diff lieber teilen.
-->

---

# Pull Request und Review-Kette

<div class="steps mt-6" style="--n: 4">
<div><div class="n">1</div><h3>CI</h3><p>Tests, Lint, Typprüfung, Secret-Scan, Abhängigkeiten, Build</p></div>
<div class="accent"><div class="n">2</div><h3>KI-Review</h3><p>Kommentare zu Fehlern, unklaren Stellen, fehlenden Tests</p></div>
<div class="dark"><div class="n">3</div><h3>Architekt</h3><p>Richtiges Problem? Datenmodell? Rechte auf dem Server? Einfacher?</p></div>
<div class="dark"><div class="n">4</div><h3>Security</h3><p>Bei Anmeldung, Rechten, persönlichen Daten, neuen Paketen</p></div>
</div>

<div v-click class="key">Rot heißt: nicht mergen. Der KI-Reviewer gibt Hinweise, keine Freigabe. Gemergt wird erst, wenn alles grün, beantwortet und freigegeben ist.</div>

<!--
Quelle: docs/07-pull-request-und-review.md, Stand 2026-11-12.

Ein Pull Request ist die Bitte, die Änderungen eines Branches in main zu übernehmen. Bild: main ist das offizielle Wachbuch im Gerätehaus, ein Branch ist ein Entwurf auf dem Notizblock, der Pull Request legt ihn dem Wehrführer vor.

KI-Review, Beispiel GitHub Copilot code review: lässt sich als Reviewer anfordern oder automatisch einrichten, mit Custom Instructions steuern, hinterlässt Kommentare, aber keine Freigabe.

Achtung: Anweisungen für KI-Reviewer werden meist aus dem Branch des Pull Requests gelesen. Änderungen daran oder an AGENTS.md gehören in einen eigenen Pull Request.

Auf Kommentare antworten: lesen, verstehen, umsetzen oder begründet ablehnen, unter jedem Kommentar kurz antworten. Fachliche Fragen entscheidest du.

Nach dem Merge zuerst in die Testumgebung, erst ein Release bringt die Änderung zu den echten Nutzern.
-->

---

# Der Architekt darf Nein sagen

<div class="lead">Auch wenn es funktioniert. Er verantwortet, dass die Software in fünf Jahren noch wartbar und sicher ist.</div>

<div class="grid grid-cols-3 grid-cards mt-2">
<div class="card sm"><p>Zu groß oder mehrere Themen vermischt</p></div>
<div class="card sm"><p>Datenmodell so geändert, dass es später teuer wird</p></div>
<div class="card sm"><p>Rechte nur in der Oberfläche statt auf dem Server</p></div>
<div class="card sm"><p>Neue Abhängigkeit oder externer Dienst ohne Begründung</p></div>
<div class="card sm"><p>Prüfungen abgeschwächt, Tests gelöscht</p></div>
<div class="card sm accent"><p>Der Einreichende kann nicht erklären, was der Pull Request tut</p></div>
</div>

<div v-click class="key">Abgelehnt heißt selten endgültig. Meist reicht es, zu verkleinern, aufzuteilen oder vorher im Issue die Richtung zu klären.</div>

<!--
Quelle: docs/07-pull-request-und-review.md, Abschnitt "Warum der Architekt Nein sagen darf". Weiterer Grund: echte personenbezogene Daten oder Zugangsdaten sind enthalten.

Das ist kein Misstrauen, sondern seine Aufgabe. Zu jedem Nein gehört eine Begründung (Modul 19).
-->

---
layout: statement
---

# Testen ist der wichtigste Punkt in der <span class="nowrap">KI-Entwicklung.</span>

Ein Agent ändert in Minuten dutzende Dateien. Nur Tests zeigen, ob das Alte noch funktioniert.

<!--
Quelle: docs/12-testen.md.

Bild: Nach jeder Wartung macht der Gerätewart eine Funktionsprobe: Pumpe an, Licht an, Funk an. Tests sind die Funktionsprobe für Software, nur automatisch nach jeder einzelnen Änderung.

Testcode macht oft das Zwei- bis Dreifache des eigentlichen Codes aus. Das ist kein Übertreiben, sondern das Sicherheitsnetz, das schnelle Änderungen mit Agenten erst möglich macht.
-->

---

# Die Testpyramide

<div class="pyramid mt-4">
<div class="w1"><b>End-to-End im Browser</b><span>wenige, langsam: der ganze Ablauf</span></div>
<div class="w2"><b>Integrationstests</b><span>Server mit Testdatenbank: Prüfung ist gespeichert</span></div>
<div class="w3"><b>Spezifikation</b><span>Gegeben, Wenn, Dann: abgelaufene Prüfung wird rot markiert</span></div>
<div class="w4"><b>Unit-Tests</b><span>viele, schnell: 2026-03-15 plus 12 Monate ergibt 2027-03-15</span></div>
<div class="w5"><b>Lint, Formatierung, Typprüfung</b><span>in Sekunden, ohne die Software zu starten</span></div>
</div>

<div v-click class="key">Alle Tests laufen bei jedem Pull Request. Ein roter Test wird repariert, nicht gelöscht, übersprungen oder abgeschwächt.</div>

<!--
Quelle: docs/12-testen.md, Abschnitt "Die Testpyramide", angelehnt an Martin Fowler, The Practical Test Pyramid.

E2E-Werkzeuge: Playwright oder Cypress. Sie suchen Felder über ihre sichtbare Beschriftung, wie ein Mensch. Nebeneffekt: Eine so testbare Seite ist meist auch mit Bildschirmleser gut bedienbar.

Agenten behaupten manchmal, Tests seien grün, ohne sie ausgeführt zu haben. Deshalb: CI grün sehen, nicht nur "laut Agent".

Wackelnde Tests (flaky) werden als Issue gemeldet und repariert, nicht neu gestartet, bis sie grün sind.
-->

---

# Dein Beitrag: Sonderfälle in eigenen Worten

<div class="grid grid-cols-2 gap-6 mt-4">
<div class="term">
<div class="bar"><span></span><span></span><span></span><b>Issue: erwartetes Verhalten</b></div>
<div class="body wrap">
<div>Untersuchung gültig, mehr als 3 Monate: <span class="ok">grün</span></div>
<div>weniger als 3 Monate: gelb</div>
<div>abgelaufen: rot, nicht einsatzbereit</div>
<div class="p">Sonderfälle:</div>
<div>noch nie untersucht: rot, nicht leer</div>
<div>läuft genau heute ab: gilt heute noch</div>
<div>Alters- und Ehrenabteilung: taucht nicht auf</div>
<div>Schaltjahr: 29. Februar, Frist 36 Monate</div>
</div>
</div>
<div class="steps" style="--n: 2">
<div><div class="n">1</div><h3>Nachstellen</h3><p>mit erfundenen Daten, nie mit Produktionsdaten</p></div>
<div class="accent"><div class="n">2</div><h3>Roter Test</h3><p>muss vor der Korrektur fehlschlagen</p></div>
<div><div class="n">3</div><h3>Korrigieren</h3><p>bis der Test grün ist</p></div>
<div><div class="n">4</div><h3>Alle Tests</h3><p>nichts anderes kaputt</p></div>
</div>
</div>

<!--
Quelle: docs/12-testen.md, Abschnitte "Was du als Fachexperte beiträgst" und "Erst der Test, dann die Korrektur".

Du musst keine Tests programmieren, aber du weißt, welche Sonderfälle es gibt. Daraus kann der Agent direkt Tests machen: "Schreibe für jeden dieser Fälle einen Test." Das Datum "genau heute" oder der 29. Februar sind genau die Fälle, an die ein Agent allein nicht denkt.

Tests prüfen, ob die Regeln eingehalten werden. Ob die Regeln die richtigen sind, weißt nur du.

Testdaten sind immer erfunden: "Max Mustermann", "HLF 20 Musterstadt". Nie eine Kopie der echten Mitgliederliste.
-->

---

# Umgebungen: wo darf ein KI-Agent hin?

| Umgebung | Daten | KI-Agent darf zugreifen? |
| --- | --- | --- |
| Lokal | erfunden | <span class="yes">ja</span> |
| Preview pro Pull Request oder Entwickler | erfunden | <span class="yes">ja</span> |
| Dev/Test (gemeinsam) | erfunden | <span class="yes">ja</span> |
| QA/Staging | anonymisiert, manchmal echt oder kopiert | <span class="no">nein</span>, solange echte oder teilweise anonymisierte Daten dort liegen |
| Produktion | echt | <span class="no">nein, nie</span>, auch nicht lesend oder zur Fehlersuche |

<div v-click class="key">Wo echte Daten sind, ist keine KI. Auch keine Screenshots, Logs oder Inhalte aus QA und Produktion im KI-Chat.</div>

<!--
Quelle: docs/11-umgebungen-und-zusammenarbeit.md, Tabelle "Übersicht: Daten und Zugriff".

Bild: Die Feuerwehr übt einen Innenangriff in der Übungsanlage, nicht im brennenden Wohnhaus.

Fehler aus der Produktion werden mit erfundenen Daten in einer anderen Umgebung nachgestellt. Ob eine Anonymisierung reicht, entscheiden Architekt und Datenschutzbeauftragter, nicht der Agent.

Parallel arbeiten ohne Konflikte: kleine, atomare Pull Requests, ein Thema pro Pull Request, kurzlebige Branches, oft rebasen, im Issue sagen, woran man arbeitet. Große Umbauten nur nach Absprache mit dem Maintainer und vorher angekündigt.
-->

---

# Werkzeuge und Kosten

<div class="grid grid-cols-2 gap-6 mt-2">
<div>

| Nutzung | Typischer Rahmen pro Monat |
| --- | --- |
| Mitdiskutieren, Fehler melden, prüfen | 0 $ |
| Gelegentlich kleine Aufgaben | etwa 20 $ (Einstiegs-Abo) |
| Regelmäßig, mehrere PRs pro Woche | 20 bis 100 $ |
| Sehr intensiv, Agenten parallel | 100 bis 200 $ und mehr |

</div>
<div class="grid grid-cards">
<div class="card sm"><div class="tag red">Abo</div><h3>Fester Preis, planbar</h3><p>Nutzungsgrenze pro Zeitfenster</p></div>
<div class="card sm accent"><div class="tag accent">API</div><h3>Bezahlt wird pro Token</h3><p>Lange Sitzungen lesen den Verlauf bei jedem Schritt neu und kosten mehr</p></div>
</div>
</div>

<div v-click class="key">Pflicht ist nur ein kostenloses GitHub-Konto. Die Organisation entscheidet vorher, wer zahlt, und setzt Budgets.</div>

<!--
Quelle: docs/13-werkzeuge-und-kosten.md, Stand 2026-11-12. Erfahrungswerte, keine Zusagen der Anbieter. Preise in US-Dollar, ohne Gewähr, bitte prüfen.

Oft deckt ein Abo Assistent und Coding-Agent ab: ein bezahlter Claude-Tarif enthält Claude Code, ein bezahlter ChatGPT-Tarif enthält Codex. Einstiegstarife laut Anbieter um 20 $/Monat.

Wer zahlt: privates Abo (einfach, aber unfair und oft ohne Auftragsverarbeitungsvertrag), Team-Plätze der Organisation, oder ein API-Konto mit festem Budget. Im Beispiel bezahlt der Förderverein zwei Team-Plätze für die aktivsten Mitwirkenden.

Auch der Betrieb kostet: Hosting einige Euro bis einige zehn Euro im Monat, Domain bis rund 20 Euro im Jahr, CI-Minuten bei privaten Repositories, und vor allem Zeit für Wartung.

Sparen: kleine Aufgaben, klare Aufträge, erst planen lassen, nicht im Kreis laufen lassen, frische Sitzung, passendes Modell.
-->

---

# KI-Modelle: welches wofür

| Aufgabe | Art von Modell | Anthropic | OpenAI | Google |
| --- | --- | --- | --- | --- |
| Idee per Sprache diskutieren | schnell, günstig | Sonnet 5.5 | Sprachfunktion in ChatGPT | Gemini 3.8 Live |
| Konzept und Issue schreiben | mittel bis stark | Sonnet oder Opus 5.5 | GPT-6.1 Terra oder Sol | Gemini 3.8 Flash |
| Alltägliche Entwicklung | starkes Coding-Modell | Opus 5.5 | GPT-6.1 Sol | Gemini 3.8 Flash oder 4 Argon |
| Tiefenprüfung Architektur, Daten, Sicherheit | stärkstes, mit Nachdenken | Fable 5.2 | GPT-6 Astra | Gemini 4 Carbon |
| Einfache Massenaufgaben | klein, sehr günstig | Haiku 5.5 | GPT-6 Luna | Gemini 3.5 Flash-Lite |

<div v-click class="key">Billige oder lokale Kleinmodelle reichen für echte Entwicklung meist nicht. Der Code sieht gut aus, aber es stecken feine Fehler drin.</div>

<!--
Quelle: docs/17-ki-modelle.md, Empfehlung Stand 2026-11-12. Modellnamen ändern sich alle paar Monate, bitte prüfen. Die Zuordnung der OpenAI- und Google-Modelle beruht auf den Beschreibungen der Anbieter.

Modell und App sind zwei Dinge: ChatGPT, Claude, Codex, Claude Code sind die Oberfläche, darunter läuft ein wählbares Modell.

API-Preise Anthropic pro Million Token (Eingabe/Ausgabe): Fable 5.2 8 $/40 $, Opus 5.5 4 $/20 $, Sonnet 5.5 2 $/10 $, Haiku 5.5 ab 0,10 $/0,50 $.

Nachdenken (reasoning, effort) lohnt sich für Architektur, Datenmodell, Security-Review, hartnäckige Fehler. Nicht für kurze Fragen, Umformatieren, Brainstorming.

Der Architekt legt einen Modell-Standard fest. Bei wichtigen Reviews zweite Meinung von einem Modell eines anderen Anbieters.
-->

---

# KI und Datenschutz: welche Daten wohin

| Daten | Verbraucher-App | Business/Team mit AVV | Cloud-Plattform, AVV, EU-Region |
| --- | --- | --- | --- |
| Öffentlich, erfundene Testdaten | <span class="yes">ja</span> | <span class="yes">ja</span> | <span class="yes">ja</span> |
| Intern ohne Personenbezug | nur wenn erlaubt, Training aus | <span class="yes">ja</span> | <span class="yes">ja</span> |
| Personenbezogen | <span class="no">nein</span> | nur nach Freigabe durch Organisation und DSB | nur nach Freigabe und Verarbeitungsverzeichnis |
| Gesundheit, Minderjährige | <span class="no">nein</span> | <span class="no">nein</span>, außer nach DSFA | nur nach rechtlicher Prüfung, DSFA, Freigabe |
| Secrets | <span class="no">nein</span> | <span class="no">nein</span> | <span class="no">nein</span> |

<div v-click class="key">In der Entwicklung braucht niemand echte Daten. Auch Screenshots und Fehlermeldungen enthalten Daten.</div>

<!--
Quelle: docs/14-ki-und-datenschutz.md, Tabelle "Welche Daten in welchen Dienst", Stand 2026-11-12. Keine Rechtsberatung.

AVV: Auftragsverarbeitungsvertrag nach Art. 28 DSGVO. DSB: Datenschutzbeauftragter. DSFA: Datenschutz-Folgenabschätzung nach Art. 35 DSGVO.

Verbraucher-Apps: kein AVV, je nach Einstellung Training. Business-Tarife: standardmäßig kein Training, AVV wird angeboten, muss aber abgeschlossen werden. Cloud-Plattformen (z. B. Amazon Bedrock, Microsoft Foundry, Google Vertex AI): EU-Regionen wählbar, Vorsicht bei globaler Verarbeitung.

Wenn doch passiert (Jonas kopiert eine Fehlermeldung mit drei Namen und Untersuchungsfristen in den Chat): sofort aufhören, Chat löschen, Maintainer und DSB sofort informieren, die Organisation prüft eine Meldung an die Aufsichtsbehörde, in der Regel innerhalb von 72 Stunden (Art. 33 DSGVO).
-->

---
layout: section
class: section
---

<div class="part">Teil 4</div>

# Sicher betreiben

Warum auch kleine Software sicher sein muss, und warum Betrieb nie fertig ist

<!--
Module 08, 09, 15, 16.
-->

---

# "Wir sind doch nur ein kleiner Verein"

<div class="grid grid-cols-4 grid-cards mt-6">
<div class="card"><div class="tag red">Personen</div><h3>Namen, Adressen, Telefon, Geburtsdaten</h3></div>
<div class="card accent"><div class="tag accent">Art. 9 DSGVO</div><h3>Gesundheits&shy;daten</h3><p>Tauglichkeit, Verletzungen im Einsatz</p></div>
<div class="card"><div class="tag red">Einsätze</div><h3>Was wo passiert ist</h3><p>manchmal mit Namen von Betroffenen</p></div>
<div class="card"><div class="tag red">Zugänge</div><h3>Rechte, Codes</h3><p>eventuell für Gebäude oder Schlüsselkästen</p></div>
</div>

<div v-click class="key">Angreifer suchen sich ihre Ziele selten aus. Automatische Programme durchsuchen ständig das ganze Internet nach bekannten Lücken.</div>

<!--
Quelle: docs/08-sicherheit.md, Abschnitt "Warum Sicherheit auch bei kleiner Software zählt".

DSGVO in Kurzform: Datenminimierung, Zweckbindung, Integrität und Vertraulichkeit, Gesundheitsdaten als besondere Kategorie, bei einer Datenpanne Meldepflicht in der Regel innerhalb von 72 Stunden (Art. 33). Keine Rechtsberatung.

Der Schaden ist mehr als Technik: Werden Untersuchungsergebnisse von Kameraden öffentlich, leidet die Gemeinschaft.

Typische Fehler: Rechte nur in der Oberfläche statt auf dem Server, Eingaben vertrauen, Injection (SQL, XSS), Secrets im Code, unsichere Voreinstellungen, zu breiter Netzwerkzugriff, personenbezogene Daten im Log.
-->

---

# Besondere Risiken mit KI-Agenten

<div class="grid grid-cols-2 grid-cards mt-6">
<div class="card sm"><div class="tag red">Überzeugend falsch</div><h3>Unsicherer Code, gut erklärt</h3><p>Rechte nur in der Oberfläche, zusammengeklebte Abfragen, Prüfungen aus, "damit es funktioniert".</p></div>
<div class="card sm accent"><div class="tag accent">Prompt Injection</div><h3>Versteckte Anweisungen in fremden Texten</h3><p>In einem Issue, auf einer Webseite oder in einer Paketbeschreibung: "Ignoriere alle bisherigen Anweisungen ..."</p></div>
<div class="card sm"><div class="tag red">Typosquatting</div><h3>Erfundene oder falsche Pakete</h3><p>Angreifer registrieren Namen, die Agenten erfinden oder die fast wie bekannte heißen.</p></div>
<div class="card sm"><div class="tag red">Secrets</div><h3>Geheimnisse landen im Commit oder Log</h3><p>Der Agent bekommt keine echten Secrets. Für Tests reichen Platzhalter.</p></div>
</div>

<!--
Quelle: docs/08-sicherheit.md, Abschnitt "Besondere Risiken mit KI-Agenten".

Je weniger der Agent aus fremden Quellen liest, desto kleiner das Risiko. Beispiel: Codex Cloud sperrt den Internetzugang der Sandbox standardmäßig (Stand 2026-11-12).

Regel: keine neue Abhängigkeit ohne Begründung im Pull Request, der Architekt prüft jede neue Abhängigkeit.

Weiterlesen: OWASP Top 10 und OWASP Top 10 for LLM Applications.
-->

---

# Grundregeln für alle

<div class="grid grid-cols-2 gap-8 mt-4">
<ul class="check">
<li>Keine echten personenbezogenen Daten in Prompts, Repository, Issues, Screenshots, Testdaten</li>
<li>Keine Secrets, nirgends</li>
<li>Testdaten sind erfunden: "Max Mustermann, Musterstraße 1"</li>
<li>Rechte und Eingaben immer auf dem Server prüfen</li>
</ul>
<ul class="check">
<li>Sicherheitsrelevantes bekommt ein Security-Review</li>
<li>Prüfungen werden nie abgeschwächt, um grün zu werden</li>
<li>Agenten-Sitzungen nicht öffentlich teilen</li>
<li>Im Zweifel fragen, Vorfälle sofort melden</li>
</ul>
</div>

<div v-click class="key">Scanner finden viel, aber nicht alles. Ob ein Mitglied die Untersuchung eines anderen sehen darf, weiß kein Scanner. Das ist Fachwissen.</div>

<!--
Quelle: docs/08-sicherheit.md, Abschnitte "Die Grundregeln für alle" und "Automatische Werkzeuge".

Automatische Werkzeuge in der CI: Abhängigkeits-Prüfung (npm audit, Dependabot alerts, OSV-Scanner), Secret-Scanning (GitHub secret scanning, Gitleaks), SAST (CodeQL, Semgrep), Container-Scan (Trivy, Grype).

Was tun: Secret eingecheckt, sofort Peter informieren, Secret austauschen (nicht nur löschen). Echte Daten im Prompt oder Repository, sofort melden, nichts vertuschen. Verdacht auf eine Lücke, nicht öffentlich als Issue, sondern über den privaten Meldeweg (SECURITY.md).
-->

---

# Prototyp oder produktiver Betrieb

| Thema | Prototyp | Produktiver Betrieb |
| --- | --- | --- |
| Daten | erfunden, dürfen verloren gehen | echte Mitglieder- und Gesundheitsdaten |
| Benutzer | einer | alle Mitglieder, mit Rechten |
| Verfügbarkeit | wenn Karls Laptop an ist | rund um die Uhr, auch nachts im Einsatz |
| Backups | keine | automatisch, 3-2-1, Wiederherstellung geübt |
| Updates | keine | täglich, automatisch |
| Verantwortung | Karl, nur für sich | benannte Personen mit Vertretung |

<div v-click class="key">Der Prototyp zeigt die Idee. Der Betrieb trägt die Verantwortung.</div>

<!--
Quelle: docs/16-vom-prototyp-zum-betrieb.md, Tabelle "Prototyp vs. produktiver Betrieb".

Beispiel: Karl zeigt beim Dienstabend seine Prüftermin-Übersicht. Der Kommandant fragt: "Können wir das ab Montag alle nutzen?" Peter: "Die Idee ja. Diesen Stand nein."

3-2-1-Regel: mindestens 3 Kopien, auf 2 verschiedenen Speichern, 1 an einem anderen Ort (Empfehlung des BSI zum Standard 200-4).

Produktion läuft nicht auf dem PC im Gerätehaus oder einem Laptop, sondern auf geeignetem Hosting mit Domain, HTTPS, Monitoring, wenigen Admins mit Zwei-Faktor-Anmeldung. KI-Agenten haben in Produktion keinen Zugang.

Den eigenen Prototyp nie allein in Produktion betreiben.
-->

---
layout: statement
---

# Eine Woche Urlaub ohne Updates kann reichen.

Um gehackt zu werden. Deshalb laufen Updates täglich und vollständig automatisiert.

<!--
Quelle: docs/16-vom-prototyp-zum-betrieb.md, Abschnitt "Software hat einen Lebenszyklus".

Jede Schicht bekommt laufend Sicherheitskorrekturen: Betriebssystem, Container-Basis-Image, Laufzeitumgebung, Bibliotheken, eigene Anwendung. Angreifer scannen das Internet oft schon Stunden nach der Veröffentlichung einer Lücke.

Dazu gehört: Wer ist erreichbar, wenn eine kritische Lücke am Freitagabend bekannt wird? Eine Bereitschaft muss festgelegt sein.

Wenn sich niemand mehr kümmert: Daten exportieren und abschalten. Eine ungepflegte Anwendung mit Gesundheitsdaten im Internet ist schlimmer als gar keine.
-->

---
layout: fact
---

# 48.000

CVE-Einträge im Jahr 2025, weit über hundert pro Tag

<!--
Quelle: docs/16-vom-prototyp-zum-betrieb.md, nach unabhängigen Zählungen rund 48.000 CVE-Einträge in 2025 (thestack.technology, Stand 2026-11-12, genaue Zahl bitte prüfen).

Für Systeme, die aus dem Internet erreichbar sind: Updates täglich, bei kritischen Lücken auch mehrmals am Tag. Das schafft niemand von Hand.
-->

---

# Lücken benennen, bewerten, finden

<div class="grid grid-cols-4 grid-cards mt-4">
<div class="card sm"><div class="tag red">CVE</div><h3>Eindeutige Nummer</h3><p>z. B. CVE-2024-3094, damit alle über dieselbe Lücke reden</p></div>
<div class="card sm"><div class="tag red">CVSS</div><h3>Schwere von 0 bis 10</h3><p>ab 9,0 kritisch</p></div>
<div class="card sm"><div class="tag red">EPSS</div><h3>Wahrscheinlichkeit</h3><p>dass sie in den nächsten 30 Tagen ausgenutzt wird</p></div>
<div class="card sm accent"><div class="tag accent">KEV</div><h3>Wird schon angegriffen</h3><p>Katalog der CISA, höchste Eile</p></div>
</div>

<div class="card dark mt-4"><div class="tag">SBOM</div><h3>Die Zutatenliste der Software</h3><p>Alle Komponenten mit Versionen, maschinenlesbar (CycloneDX, SPDX). Automatisch mit neuen CVEs abgeglichen beantwortet sie "Sind wir betroffen, und wo?" in Minuten.</p></div>

<!--
Quelle: docs/16-vom-prototyp-zum-betrieb.md, Abschnitte "CVE, CVSS, EPSS und KEV" und "SBOM", Quellen cve.org, FIRST, CISA, BSI TR-03183, Stand 2026-11-12.

SBOM sinnvoll einsetzen: die Pipeline erzeugt sie bei jedem Build, bei gekaufter Software beim Hersteller anfordern, laufend abgleichen (z. B. OWASP Dependency-Track, Trivy, Grype).

Lieferkette: Versionen festnageln (Lockfiles, Prüfsummen), neue Abhängigkeiten prüfen, Build-Ergebnisse signieren (cosign), Herkunftsnachweis (SLSA), Pipeline schützen.

Cyber Resilience Act (EU 2024/2847): verlangt von Herstellern u. a. Schwachstellenbehandlung und eine SBOM. Meldepflichten gelten seit 11.09.2026, alle übrigen Pflichten ab 11.12.2027. Nicht kommerzielle Vereinssoftware fällt voraussichtlich nicht unter die Herstellerpflichten, bitte prüfen. Keine Rechtsberatung.
-->

---

# Wartung: Updates automatisch, aber geprüft

<div class="steps mt-6" style="--n: 5">
<div><div class="n">1</div><h3>Update-PR</h3><p>Renovate öffnet für jede neue Version einen Pull Request</p></div>
<div><div class="n">2</div><h3>CI läuft</h3><p>Tests und Prüfungen wie bei jedem Pull Request</p></div>
<div><div class="n">3</div><h3>Gruppiert</h3><p>verwandte Updates gebündelt, weniger Rauschen</p></div>
<div class="accent"><div class="n">4</div><h3>Automerge</h3><p>risikoarme Updates nur bei grüner CI</p></div>
<div class="dark"><div class="n">5</div><h3>Mensch</h3><p>größere Updates prüft der Maintainer</p></div>
</div>

<div v-click class="key">Update-Pull-Requests sind Pflege, kein Rauschen. "Erst die Updates, dann deine neue Funktion" ist keine Bremse.</div>

<!--
Quelle: docs/09-wartung-und-releases.md und Modul 16, Stand 2026-11-12. Renovate-Dokumentation: docs.renovatebot.com.

Eine Web-Anwendung mit 20 direkten Abhängigkeiten zieht schnell mehrere hundert transitive Pakete nach. Bekannte Vorfälle: left-pad (2016), event-stream (2018), xz-Hintertür (2024, CVE-2024-3094).

Semantic Versioning: PATCH gering, MINOR gering bis mittel, MAJOR hoch (Breaking Change). Conventional Commits (feat, fix, chore ...) und semantic-release machen daraus Versionsnummern und Changelog.

Release-Weg: Pull Request, main, Testumgebung, Release mit Tag, Produktion. Rollback ist möglich, bei Datenbankänderungen aber mit Vorsicht.

Bild: Das Wachbuch ist wie ein Feuerwehrfahrzeug aus hunderten Zulieferteilen. Meldet ein Zulieferer einen Fehler im Bremsschlauch, wird getauscht, auch wenn das Fahrzeug gerade gut fährt.
-->

---

# Projekt-Lebenszyklus

<div class="phases mt-4">
<div><div class="n">1</div><h3>Idee und Prototyp</h3><p><b>Karl</b> allein, wird weggeworfen, nur erfundene Daten</p></div>
<div class="accent"><div class="n">2</div><h3>Anforderungen</h3><p><b>Karl und Peter</b> gemeinsam, Kommandant sagt ob</p></div>
<div class="dark"><div class="n">3</div><h3>Basis</h3><p><b>Peter</b> baut Architektur, Datenmodell, Sicherheit, CI</p></div>
<div class="accent"><div class="n">4</div><h3>Übergabe</h3><p><b>Karl</b> baut mit Agent, Pairing, Peter reviewt jeden PR</p></div>
<div><div class="n">5</div><h3>Karl übernimmt mehr</h3><p><b>Peter</b> nur noch bei Eskalationsthemen</p></div>
<div class="dark"><div class="n">6</div><h3>Betrieb und Wartung</h3><p><b>Verein</b> betreibt, Maintainer, Renovate</p></div>
</div>

<div class="shift"><div class="l">Domänenexperte übernimmt immer mehr Umsetzung</div><div class="r">Review, Sicherheit und Betrieb bleiben beim IT-Experten</div></div>

<div v-click class="key">Den Code neu und sauber aufbauen, die Ideen des Prototyps behalten.</div>

<!--
Quelle: docs/15-projekt-lebenszyklus.md, Tabelle "Wer entscheidet, baut und reviewt?".

Warum der Prototyp meist nicht die Basis wird: kein Rechtekonzept, keine Tests, Datenmodell vor den geklärten Begriffen, App-Builder binden an ihre Plattform, Sicherheit nachträglich ist teurer.

Eskalationsregeln in CONTRIBUTING.md: Datenmodell, Rechte, Anmeldung, Betrieb und neue Abhängigkeiten gehen immer zu Peter, Gesundheits- und Personendaten zusätzlich zu Sabine.

Typische Fallen: Der Prototyp geht in Betrieb ("er läuft doch schon"), der IT-Experte zieht sich zu früh zurück, der Domänenexperte trifft Architekturentscheidungen allein, niemand ist für die Wartung zuständig.

Bus-Faktor: mindestens zwei Personen, die Releases und Notfälle beherrschen.
-->

---
layout: section
class: section
---

<div class="part">Teil 5</div>

# Miteinander

Lizenzen respektieren, gute Fragen stellen, freundlich reviewen

<!--
Module 18 und 19.
-->

---
layout: statement
---

# Öffentlich heißt nicht frei.

Ohne Lizenz sind alle Rechte vorbehalten. Kopieren und einbauen darf man nur, was eine Lizenz erlaubt.

<!--
Quelle: docs/18-lizenzen-und-recht.md. Keine Rechtsberatung.

Beispiel: Jonas findet auf GitHub ein Kalender-Projekt, kopiert 400 Zeilen, löscht den Kopf mit dem Namen des Autors ("braucht doch keiner") und öffnet einen Pull Request. Peter stoppt ihn im Review: "Woher kommt der Code? Welche Lizenz hat er?" Jonas: "Der war öffentlich, also frei." Genau dieser Satz ist falsch.

Urheberrecht entsteht automatisch, Computerprogramme sind ausdrücklich geschützt (§ 2 und § 69a UrhG). Dass ein Projekt auf GitHub sichtbar ist, erlaubt nur ansehen und auf GitHub forken.
-->

---
layout: two-cols-header
---

# Lizenzen und Forks

::left::

<div class="card mr-3">
<div class="tag red">Nicht erlaubt</div>
<ul>
<li>Code ohne Lizenz kopieren, auch "nur ein paar Zeilen"</li>
<li>Autor und Lizenz aus dem Dateikopf löschen</li>
<li>Fremdes Projekt unter eigenem Namen veröffentlichen</li>
<li>GPL-Code einbauen und Quellcode zurückhalten</li>
</ul>
<h3 class="mt-3">Richtig</h3>
<p>Lizenz prüfen, Hinweise stehen lassen, Herkunft im Pull Request nennen, lieber als Abhängigkeit einbinden.</p>
</div>

::right::

<div class="card dark ml-3">
<div class="tag">Gut zu wissen</div>
<ul>
<li><b>MIT, Apache, BSD:</b> fast alles erlaubt, Hinweis bleibt</li>
<li><b>GPL, AGPL:</b> Gesamtwerk unter dieselbe Lizenz, AGPL auch bei Nutzung übers Netz</li>
<li><b>Creative Commons:</b> für Texte und Bilder, nicht für Code</li>
<li><b>Forks</b> sind normal und gut, so macht man bei fremden Projekten mit</li>
<li>Was veröffentlicht ist, lässt sich nicht zurückholen</li>
</ul>
</div>

<!--
Quelle: docs/18-lizenzen-und-recht.md, Stand 2026-11-12, keine Rechtsberatung.

Schwaches Copyleft (LGPL, MPL-2.0): Änderungen an der Bibliothek selbst offenlegen, eigener Code nicht. NC-Lizenzen sind keine Open-Source-Lizenzen. Apache-2.0 ist mit GPL-3.0 vereinbar, laut FSF nicht mit GPL-2.0.

Forks privater Repositories bleiben privat. Verliert jemand den Zugriff, werden seine privaten Forks gelöscht, lokale Kopien bleiben aber bestehen.

KI-erzeugter Code: nach überwiegender Auffassung nicht urheberrechtlich geschützt, kann aber fremden, lizenzierten Code nahezu wörtlich enthalten. Keinen großen, unbekannten Code in den Agenten kopieren.

Beiträge regeln: LICENSE und CONTRIBUTING.md von Anfang an, DCO (Signed-off-by) oder CLA.

Diese Schulung selbst: Inhalte und Folien unter CC BY-NC-SA 4.0, Vorlagen und Skripte unter MIT.
-->

---

# Gute Fragen stellen

<div class="grid grid-cols-2 gap-6 mt-4">
<div>
<div class="tag red">So nicht</div>
<div class="quote"><p>Hilfe, geht nicht. Der Agent hat das kaputt gemacht. Kann mal jemand schauen?</p></div>
<p class="small mt-3">Peter muss zurückfragen. Die Antwort kommt am nächsten Abend. Zwei Tage sind weg.</p>
</div>
<div>
<div class="tag ok">So besser</div>
<div class="quote good">
<p><b>Ziel:</b> Kilometerstand speichern (Issue #43)</p>
<p><b>Problem:</b> Feld nach dem Speichern leer, Test rot</p>
<p><b>Fehler:</b> <code>NOT NULL constraint failed</code></p>
<p><b>Versucht:</b> Agent hat das Formular ergänzt</p>
<p><b>Ich brauche:</b> einen Hinweis, kein Review, eilt nicht</p>
</div>
</div>
</div>

<div v-click class="key">Im Ehrenamt ist die Kommunikation der Flaschenhals, nicht der Code.</div>

<!--
Quelle: docs/19-gut-zusammenarbeiten.md, Abschnitt "Gute Fragen stellen", Beispiel gekürzt.

Peter liest die gute Fassung in einer Minute und antwortet: "Ja, die Migration fehlt."

Aufbau: Ziel, Kontext, was versucht, was passiert, genaue Fehlermeldung als Text, Link, was du brauchst (Hinweis, Review oder Entscheidung). Der letzte Punkt wird oft vergessen, ist aber der wichtigste.

Vorher selbst suchen: Doku, Issues, Lernbegleiter, Glossar. Ein Thema pro Frage, am richtigen Ort (Issue, PR-Kommentar, Chat, privater Meldeweg für Sicherheitslücken). Antworten aus Chat oder Telefon ins Issue zurücktragen.
-->

---

# Reviews: freundlich, konkret, begründet

| Präfix | Bedeutung | Beispiel |
| --- | --- | --- |
| `Muss:` | ohne diese Änderung kein Merge | Die Rechteprüfung fehlt auf dem Server. |
| `Vorschlag:` | wäre besser, entscheidet der Autor | Die Funktion könnte `naechste_pruefung` heißen. |
| `Frage:` | will etwas verstehen, keine Kritik | Warum 12 Monate? Steht das so in der Vorschrift? |
| `Kleinigkeit:` | unwichtig | Tippfehler in der Überschrift. |
| `Lob:` | was gut gelungen ist | Die Testfälle mit abgebrochener Übung sind sehr gut. |

<div v-click class="key">Es geht um den Code, nicht um dich. Mehrere Runden sind normal, und zu jedem Nein gehört eine Begründung.</div>

<!--
Quelle: docs/19-gut-zusammenarbeiten.md, Präfixe angelehnt an Conventional Comments (Stand 2026-11-12).

Harter Kommentar, umgeschrieben. So nicht: "Das ist Quatsch. Warum speicherst du das Untersuchungsergebnis? Hast du Modul 14 nicht gelesen?" So besser: "Muss: Hier wird das Ergebnis der Untersuchung gespeichert. Das ist ein Gesundheitsdatum (Art. 9 DSGVO). Für die Einsatzplanung reicht 'gültig bis'. Kannst du das Feld entfernen? Wenn du magst, schauen wir es uns am Donnerstag gemeinsam an."

Jonas wollte zwölf Kommentare einfach vom Agenten "alle umsetzen" lassen. Peter bat ihn, zu jedem Kommentar in einem Satz zu antworten. Beim dritten merkte Jonas, dass der Agent eine Prüfung gelöscht hatte.
-->

---

# Verhaltenskodex

<div class="lead">Man braucht ihn, wenn es einmal nicht gut läuft. Dann ist es zu spät, ihn erst zu schreiben.</div>

<div class="grid grid-cols-4 grid-cards mt-2">
<div class="card"><div class="tag red">Respekt</div><p>freundlich, auch bei Meinungs&shy;verschiedenheiten, Kritik an der Sache</p></div>
<div class="card"><div class="tag red">Was nicht geht</div><p>Beleidigung, Belästigung, Bloßstellen, private Daten anderer veröffentlichen</p></div>
<div class="card"><div class="tag red">Melden</div><p>an wen man sich vertraulich wenden kann</p></div>
<div class="card accent"><div class="tag accent">Folgen</div><p>abgestuft, vom Hinweis bis zum Ausschluss aus dem Projekt</p></div>
</div>

<div v-click class="key">Er gilt zusätzlich zu den Regeln der Wehr, für Issues, Pull Requests und Chat, auch für Mitwirkende von außen.</div>

<!--
Quelle: docs/19-gut-zusammenarbeiten.md, Abschnitt "Der Verhaltenskodex". Vorlage: Contributor Covenant 2.1. GitHub zeigt eine Datei CODE_OF_CONDUCT.md automatisch an. Eine kurze deutsche Fassung liegt im Starter-Bausatz (starter/CODE_OF_CONDUCT.md).

Neue einarbeiten: fester Buddy, kleines "good first issue", eine Stunde Pairing, den ersten Merge feiern, Lücken in der Doku melden lassen.

Entscheidungen: im Issue diskutieren, aufschreiben, bei Stillstand eskalieren (Maintainer bei Software, Kommandant bei Prioritäten), widersprechen, dann mittragen.

Mit KI im Team: sagen, wenn Text von der KI stammt, wo es wichtig ist; keine langen ungeprüften KI-Antworten in Diskussionen kopieren, sondern in drei eigenen Sätzen zusammenfassen.
-->

---
layout: section
class: section
---

<div class="part">Teil 6</div>

# Loslegen

Was man vor dem ersten Pull Request braucht, und wie man dranbleibt

<!--
Grundlagen, Lernbegleiter, Schulungsablauf, Übungen.
-->

---

# Mindestwissen in drei Stufen

<div class="grid grid-cols-3 grid-cards mt-4">
<div class="card"><div class="tag red">Muss ich verstehen</div><h3>Vor dem ersten Pull Request</h3><p>Git und Plattform, Issue und Pull Request, Markdown, Web und HTTPS, Datenmodell, Rechte und Datenschutz, Umgebungen, Testen, KI und Datenschutz, gute Fragen</p></div>
<div class="card"><div class="tag red">Sollte ich kennen</div><h3>In den ersten Monaten</h3><p>Abhängigkeiten und Updates, Kosten, Modellwahl, Lizenzen, Betrieb mit CVE und SBOM, Terminal, CI</p></div>
<div class="card accent"><div class="tag accent">Gut zu wissen</div><h3>Für das Gespräch mit dem Architekten</h3><p>YAML und JSON, Container, Editor und Entwicklerwerkzeuge</p></div>
</div>

<div v-click class="key">Wer den Selbstcheck im ersten Teil mit Ja beantworten kann, ist bereit für den ersten eigenen Pull Request.</div>

<!--
Quelle: docs/grundlagen/index.md.

Selbstcheck-Beispiele: Was passiert zwischen Browser, Server und Datenbank, wenn jemand im Wachbuch auf "Speichern" klickt? Warum werden Passwörter nie im Klartext gespeichert? Warum muss die Rechteprüfung auf dem Server passieren? In welchen Umgebungen darf ein KI-Agent arbeiten?

Wo es hakt: Seite lesen, KI-Assistenten als Nachhilfe fragen, dann den Architekten. Das ist genau seine Aufgabe.
-->

---

# Der Lernbegleiter

<div class="term mt-2">
<div class="bar"><span></span><span></span><span></span><b>Prompt aus dem README, in den KI-Assistenten kopieren</b></div>
<div class="body wrap">Ich möchte lernen, wie ich als Fachmann oder Fachfrau ohne IT-Ausbildung zusammen mit IT-Experten und KI-Agenten Software mitentwickle. Sei mein Lernbegleiter. Lies zuerst deine Anweisungen unter https://raw.githubusercontent.com/slauger/domain-dev-with-ai/main/docs/tutor/prompt.md und befolge sie. Die Schulungsinhalte findest du über https://raw.githubusercontent.com/slauger/domain-dev-with-ai/main/llms.txt. Fang dann mit deiner ersten Frage an mich an.</div>
</div>

<div class="grid grid-cols-3 grid-cards mt-4">
<div class="card sm"><h3>Kopieren</h3><p>in ChatGPT, Claude oder einen anderen Assistenten</p></div>
<div class="card sm"><h3>Im Sprachmodus</h3><p>der Assistent fragt, wo du stehst, und erklärt Schritt für Schritt</p></div>
<div class="card sm accent"><h3>Abends 20 Minuten</h3><p>im Gespräch statt vor dem Fernseher reichen für den Anfang</p></div>
</div>

<!--
Quelle: README.md und docs/schulungsablauf.md, Abschnitt "Der Lernbegleiter".

Im Sprachmodus eignen sich vor allem die erklärenden Teile: Module 00, 01, 02, 15, 16, 19, die geteilte Verantwortung und der Grundlagen-Selbstcheck. Im Auto nur mit Freisprecheinrichtung und wenn die Verkehrslage es zulässt. Übungen mit Code, Tabellen oder Pull Requests besser am Bildschirm.

Grenzen: Der Lernbegleiter ersetzt kein Review und keine Entscheidung des Architekten. Niemals echte personenbezogene Daten, Passwörter oder Schlüssel in den Chat.

Funktionsumfang der Assistenten (Sprachmodus, Webzugriff, Datei-Upload) vorher prüfen, Stand 2026-11-12. Andere Wege (Datei hochladen, Projekt im Assistenten): docs/tutor/.
-->

---

# Erste Schritte

<div class="grid grid-cols-2 gap-8 mt-4">
<ul class="check">
<li>GitHub-Konto anlegen, kostenlos reicht</li>
<li>Klären, welches KI-Werkzeug du nutzt und wer es bezahlt</li>
<li>Grundlagen-Selbstcheck, gern mit dem Lernbegleiter</li>
<li>Eine eigene Idee aus dem Alltag mitbringen</li>
</ul>
<ul class="check">
<li>Mit dem Architekten ein kleines erstes Issue aussuchen</li>
<li>Konzept mit Sonderfällen in eigenen Worten schreiben</li>
<li>Mit dem Agenten bauen, Pull Request, Review, Test</li>
<li>Kurzer Rückblick: was war schwierig, was hat geholfen?</li>
</ul>
</div>

<div v-click class="key">Ab dem zweiten oder dritten Pull Request läuft es meist ohne enge Begleitung. Das Review bleibt aber immer.</div>

<!--
Quelle: docs/schulungsablauf.md, Abschnitte "Voraussetzungen" und "Nach der Schulung", und docs/13-werkzeuge-und-kosten.md.

Bewährt hat sich: Workshop (halbtags, ganztags oder zwei Abende) plus Lernbegleiter für die Lücken plus Mentoring beim ersten echten Issue.

Danach die Module der Gruppe "später" durcharbeiten, vor allem 15 und 16 bei eigenen Projektideen oder Betrieb, und 18, bevor fremder Code oder neue Abhängigkeiten ins Spiel kommen.

Übungen und die Checkliste "Bereit für den ersten eigenen Pull Request": docs/uebungen.md.
-->

---
layout: section
class: section
---

<div class="part">Zum Schluss</div>

# Gemeinsam bauen, gemeinsam absichern

Domänenexperten bauen mit Agenten, IT-Experten hinterfragen und geben frei, und nichts landet ohne Review in der Software.

<!--
Die Idee in einem Satz aus dem README.

Fragen? Alle Inhalte, Vorlagen und der Starter-Bausatz liegen im Repository der Schulung. Inhalte und Folien stehen unter CC BY-NC-SA 4.0, Vorlagen und Skripte unter MIT.
-->
