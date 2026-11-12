# Modul 18: Lizenzen, Forks und Recht

Wer Software baut, arbeitet ständig mit Werken anderer: Bibliotheken, Code-Schnipsel aus dem Internet, Texte, Bilder, Vorschläge des KI-Agenten. Und wer selbst etwas veröffentlicht, gibt anderen Rechte daran. In diesem Modul lernst du, was Lizenzen sind, welche Arten es gibt, was ein Fork ist, was bei KI-erzeugtem Code zu beachten ist und wer im Verein am Ende verantwortlich ist.

**Wichtig:** Dieses Modul ist **keine Rechtsberatung**. Es gibt einen vereinfachten Überblick, damit du Risiken erkennst und die richtigen Fragen stellst. Für echte Entscheidungen (Lizenz wählen, fremden Code übernehmen, Streit mit einem Fork) entscheiden der Vorstand und, wenn nötig, eine rechtliche Beratung.

**Stand: 2026-11-12.** Bedingungen von Plattformen und KI-Anbietern ändern sich, und die Rechtslage zu KI ist noch in Bewegung. Alle Angaben mit Quelle, unsichere Punkte sind mit **bitte prüfen** markiert.

## Das Beispiel

Jonas, der junge Feuerwehrmann, will im Wachbuch eine Kalenderansicht für die Prüftermine. Er findet auf GitHub ein passendes Projekt, kopiert 400 Zeilen, löscht den Kopf mit dem Namen des Autors ("braucht doch keiner") und öffnet einen Pull Request. Peter, der externe Softwarearchitekt, stoppt ihn im Review: "Woher kommt der Code? Welche Lizenz hat er?" Jonas: "Der war öffentlich, also frei." Genau dieser Satz ist falsch. Dieses Modul erklärt, warum.

## Warum das wichtig ist

- **Urheberrecht entsteht automatisch.** Wer Code, Texte oder Bilder schafft, hat daran das Urheberrecht, ohne Anmeldung und ohne Copyright-Zeichen. Computerprogramme sind in Deutschland ausdrücklich geschützt ([§ 2 UrhG](https://www.gesetze-im-internet.de/urhg/__2.html), [§ 69a UrhG](https://www.gesetze-im-internet.de/urhg/__69a.html)).
- **Öffentlich heißt nicht frei.** Dass ein Projekt auf GitHub für alle sichtbar ist, erlaubt nur, es anzusehen und auf GitHub zu forken. Das regeln die Nutzungsbedingungen von GitHub ([GitHub Terms of Service](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service), Abschnitt D.5). Kopieren, ändern und in eigene Software einbauen darfst du nur, wenn eine Lizenz es erlaubt.
- **Keine Lizenz heißt: alle Rechte vorbehalten.** Ohne Lizenz gilt das normale Urheberrecht, der Autor behält alle Rechte ([GitHub Docs: Licensing a repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository), [choosealicense.com: No License](https://choosealicense.com/no-permission/)). Code ohne Lizenz ist für das eigene Projekt tabu, außer der Autor erlaubt es schriftlich.

Eine **Lizenz** ist eine Erlaubnis des Urhebers: Du darfst das Werk unter bestimmten Bedingungen nutzen. Hältst du die Bedingungen nicht ein, hast du keine Erlaubnis.

## Die wichtigsten Lizenzarten

**Open Source** heißt: Der Quellcode ist offen und die Lizenz erlaubt Nutzung, Änderung und Weitergabe für jeden Zweck. Die Open Source Initiative pflegt dafür eine Definition und eine Liste geprüfter Lizenzen ([opensource.org/osd](https://opensource.org/osd), [opensource.org/licenses](https://opensource.org/licenses)). **Copyleft** heißt: Wer das Werk verändert weitergibt, muss es unter derselben Lizenz weitergeben.

| Art | Beispiele | Was erlaubt ist | Was das für dein Projekt heißt |
| --- | --- | --- | --- |
| **Freizügig** (permissive) | MIT, Apache-2.0, BSD | fast alles: nutzen, ändern, weitergeben, verkaufen, auch in geschlossener Software | Einbauen ist meist unproblematisch. Copyright-Hinweis und Lizenztext müssen erhalten bleiben. Apache-2.0 regelt zusätzlich Patente und verlangt, Änderungen zu kennzeichnen. |
| **Schwaches Copyleft** | LGPL, MPL-2.0 | nutzen und einbinden auch in Software mit anderer Lizenz | Änderungen **an der Bibliothek selbst** müssen unter derselben Lizenz offengelegt werden, dein eigener Code nicht. Details unterscheiden sich, **bitte prüfen**. |
| **Starkes Copyleft** | GPL-2.0, GPL-3.0 | nutzen, ändern, weitergeben | Gibst du Software weiter, die GPL-Code enthält, muss das **Gesamtwerk** unter der GPL stehen und der Quellcode mitgeliefert werden. |
| **Netzwerk-Copyleft** | AGPL-3.0 | wie GPL | Wie GPL, aber die Pflicht zur Offenlegung gilt auch, wenn Nutzer die Software nur **über das Netz** benutzen, z. B. als Web-Anwendung ([gnu.org: License list](https://www.gnu.org/licenses/license-list.html)). Für ein Web-Werkzeug wie das Wachbuch besonders wichtig. |
| **Creative Commons** | CC BY, BY-SA, BY-NC, BY-ND und Kombinationen wie BY-NC-SA | Texte, Bilder, Folien nutzen je nach Bausteinen | BY: Urheber nennen. SA: Bearbeitungen unter gleicher Lizenz. NC: nicht kommerziell. ND: keine Bearbeitungen. **Nicht für Code gedacht**, das empfiehlt Creative Commons selbst ([CC FAQ](https://creativecommons.org/faq/), [CC-Lizenzen](https://creativecommons.org/share-your-work/cclicenses/)). |
| **Gemeinfrei / CC0** | CC0, Unlicense | alles, ohne Bedingungen | Frei nutzbar. Ein völliger Verzicht auf das Urheberrecht ist in Deutschland so nicht möglich; CC0 hat dafür eine Ersatzregel ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)). |

Achtung bei **NC** (nicht kommerziell): Eine solche Lizenz ist **keine Open-Source-Lizenz**, weil die Open-Source-Definition verbietet, bestimmte Einsatzbereiche wie kommerzielle Nutzung auszuschließen ([opensource.org/osd](https://opensource.org/osd), Kriterium 6). Was genau "kommerziell" ist, ist oft unklar, z. B. bei einem Verein, der Eintritt für ein Fest nimmt (**bitte prüfen**).

Eine gute, verständliche Übersicht mit Rechten und Pflichten jeder Lizenz bietet [choosealicense.com](https://choosealicense.com/licenses/), einen Vergleich in Tabellenform der [Anhang](https://choosealicense.com/appendix/). Deutschsprachige Informationen zu Open-Source-Recht sammelt das [ifrOSS](https://www.ifross.org/) (Institut für Rechtsfragen der Freien und Open Source Software).

## Man darf die Autoren nicht einfach entfernen

Fast jede Lizenz, auch die freizügigste, verlangt: **Der Copyright-Hinweis und der Lizenztext bleiben erhalten.** Das ist der Preis für die Nutzung. Nicht erlaubt ist zum Beispiel:

- Einen Code-Schnipsel aus einem Blog oder einem GitHub-Projekt **ohne Lizenz** in das Wachbuch kopieren.
- Den **Kopf einer Datei** mit Autor und Lizenz löschen, wie Jonas es getan hat.
- Ein fremdes Projekt herunterladen, umbenennen und **unter eigenem Namen** neu veröffentlichen.
- Eine GPL-Bibliothek einbauen und den Quellcode trotzdem nicht herausgeben, obwohl die Software weitergegeben wird.

Richtig geht es so: Lizenz prüfen, Hinweise stehen lassen, Herkunft im Pull Request nennen ("Kalender-Logik übernommen aus Projekt X, MIT-Lizenz, Hinweis in `NOTICE` ergänzt"). Bei Unklarheit fragt man Peter, bevor der Code im Repository landet. Für Jonas heißt das: Das Kalender-Projekt steht unter MIT, also darf er es nutzen, aber nur mit dem Hinweis auf den Autor. Noch besser: Er bindet es als Abhängigkeit ein, statt Code zu kopieren (siehe unten).

## Die andere Seite: Wer veröffentlicht, gibt Rechte ab

Wenn der Verein das Wachbuch unter einer Lizenz veröffentlicht, gilt diese Lizenz auch für ihn. Er muss damit leben:

- **Andere dürfen nutzen, ändern und forken.** Bei freizügigen Lizenzen dürfen sie das Wachbuch sogar **verkaufen** oder in ein kommerzielles Produkt einbauen, solange der Hinweis bleibt.
- **Eine Lizenz lässt sich für bereits veröffentlichte Versionen nicht zurückholen.** Wer Version 1.0 unter MIT bekommen hat, darf sie weiter nutzen, auch wenn Version 2.0 eine andere Lizenz bekommt.
- **Später wechseln ist schwer**, sobald andere mitgeschrieben haben. Jeder Beitragende ist Urheber seines Teils. Für einen Lizenzwechsel müssten alle zustimmen, oder ihr Code wird ersetzt.
- **Ideen und Namen schützt eine Lizenz nicht.** Jemand darf die Idee "digitales Wachbuch" frei nachbauen. Namen und Logos schützt das **Markenrecht**, nicht das Urheberrecht. Ob sich eine Marke lohnt, ist eine eigene Frage (**bitte prüfen**).

### Welche Lizenz für die eigene Vereinssoftware?

| Ziel des Vereins | Passende Richtung |
| --- | --- |
| Andere Wehren sollen es möglichst einfach nutzen dürfen, auch Firmen | freizügig (MIT oder Apache-2.0) |
| Verbesserungen sollen zurück an die Allgemeinheit fließen, auch bei Web-Betrieb | Copyleft (GPL oder, für Web-Anwendungen, AGPL) |
| Niemand soll damit Geld verdienen | Creative Commons NC passt nicht gut zu Code und ist keine Open-Source-Lizenz; hier ist rechtliche Beratung nötig |

### Ein echtes Beispiel: die zwei Lizenzen dieser Schulung

Diese Schulung selbst nutzt zwei Lizenzen (siehe [README](https://github.com/slauger/domain-dev-with-ai#lizenz)):

- **Schulungsinhalte** (Texte in `docs/`, Folien) stehen unter **CC BY-NC-SA 4.0**: Jeder darf sie nutzen, weitergeben und anpassen, wenn der Urheber genannt wird, die Nutzung nicht kommerziell ist und Bearbeitungen unter derselben Lizenz stehen. Für kommerzielle Nutzung muss man vorher fragen.
- **Vorlagen und Skripte zum Kopieren** (`starter/`, `docs/vorlagen/`, `scripts/`) stehen unter der **MIT-Lizenz**: Sie sollen in echten Projekten landen, auch kommerziellen und Open-Source-Projekten.

Warum zwei? Die Texte sind das eigentliche Werk, das nicht einfach als kostenpflichtiger Kurs weiterverkauft werden soll. Die Vorlagen dagegen sind nur nützlich, wenn man sie ohne Bedenken in jedes Projekt kopieren darf. Eine NC-Lizenz auf Vorlagen würde jedes Projekt, das Geld verdient, sofort in rechtliche Unsicherheit bringen. Und CC ist für Code nicht gedacht, MIT schon.

## Forks

Ein **Fork** ist eine eigene Kopie eines fremden Repositories auf der Plattform ([Glossar](glossar.md), [GitHub Docs: Fork a repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo)). Das Original heißt **Upstream**. Im Fork kann man frei arbeiten und Änderungen per **Pull Request aus dem Fork** an das Original vorschlagen. Grundlagen zu Pull Requests stehen in [Modul 07](07-pull-request-und-review.md).

**Forks sind normal und gut.** In der Open-Source-Welt ist der Fork der übliche Weg, bei fremden Projekten mitzumachen. Eine Wehr im Nachbarlandkreis kann das Wachbuch forken, an ihre Abläufe anpassen und gute Verbesserungen zurückschicken. Genau das will Open Source.

**Forks aktuell halten:** Ein Fork bleibt nicht automatisch auf dem Stand des Originals. Man holt die Änderungen aus dem Upstream regelmäßig nach, auf GitHub z. B. per Knopf "Sync fork" ([GitHub Docs: Syncing a fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)). Je länger man wartet, desto mehr Konflikte entstehen.

**Forks privater Repositories** folgen eigenen Regeln ([GitHub Docs: Permissions and visibility of forks](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/about-permissions-and-visibility-of-forks)):

- Forks privater Repositories sind ebenfalls privat. Die Sichtbarkeit lässt sich nicht einzeln ändern.
- Organisationen und Repository-Admins können das Forken privater Repositories verbieten.
- Die Besitzer des Upstreams können alle Forks im Netzwerk lesen.
- Verliert jemand den Zugriff auf das private Repository, werden seine privaten Forks gelöscht. **Lokale Kopien auf seinem Rechner bleiben aber bestehen.** Wer ausscheidet, hat den Code also womöglich noch.
- Wird ein privates Repository gelöscht, werden seine privaten Forks mitgelöscht.

**Öffentlich bleibt öffentlich:** Wird ein öffentliches Repository später privat gemacht, bleiben bestehende Forks und Kopien anderer bestehen ([GitHub Docs: Licensing a repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository)). Was einmal mit Lizenz veröffentlicht war, ist draußen.

**"Feindliche" Forks:** Manchmal ist jemand mit der Richtung eines Projekts unzufrieden und führt einen Fork als eigenes Konkurrenzprojekt weiter. Das ist ärgerlich, aber erlaubt, wenn die Lizenz es erlaubt, und bei jeder Open-Source-Lizenz tut sie das. Der Fork muss die Lizenzbedingungen einhalten (Hinweise behalten, bei Copyleft den Quellcode offenlegen). Er darf aber **nicht den Namen und das Logo** so verwenden, dass er wie das Original wirkt, wenn diese geschützt sind (**bitte prüfen**).

## Abhängigkeiten

Jede Bibliothek, die das Wachbuch nutzt ([Modul 09](09-wartung-und-releases.md#was-sind-abhängigkeiten)), hat eine eigene Lizenz, und die transitiven Abhängigkeiten auch. Die Lizenzen müssen **zueinander passen** (Lizenzkompatibilität). Beispiele:

- MIT- oder Apache-2.0-Bibliothek in einem GPL-Projekt: in der Regel kein Problem. Achtung: Apache-2.0 ist mit GPL-3.0 vereinbar, laut Free Software Foundation aber **nicht mit GPL-2.0** ([gnu.org: License list](https://www.gnu.org/licenses/license-list.html)).
- GPL-Bibliothek in einem Apache-2.0-Projekt: problematisch. Wird die Software weitergegeben, müsste das Gesamtwerk unter die GPL.
- AGPL-Bibliothek in einer Web-Anwendung: Die Offenlegungspflicht greift schon bei Nutzung über das Netz.

**Automatisch prüfen lassen:** Niemand liest hunderte Lizenzen von Hand.

- **SBOM** (Software-Stückliste, [Modul 16](16-vom-prototyp-zum-betrieb.md#sbom-die-zutatenliste-der-software)) enthält auch die Lizenz jedes Pakets, meist als SPDX-Kennung wie `MIT` oder `GPL-3.0-only` ([SPDX License List](https://spdx.org/licenses/)).
- **Lizenz-Scanner** in der CI vergleichen die Lizenzen mit einer erlaubten Liste und schlagen Alarm.
- **GitHub Dependency Review** zeigt in Pull Requests Lizenzinformationen neuer Abhängigkeiten. Die zugehörige Action kann mit einer Erlaubt- oder Verboten-Liste von Lizenzen arbeiten; für öffentliche Repositories ist sie verfügbar, für private nur mit kostenpflichtigen Sicherheitsfunktionen ([GitHub Docs: About dependency review](https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/about-dependency-review), **bitte prüfen** für den eigenen Tarif).

**Wer entscheidet:** Neue Abhängigkeiten entscheidet der Architekt, bei größeren Fragen als ADR ([Modul 10](10-standards.md#adrs-architekturentscheidungen)). Darin steht auch die Lizenz und warum sie passt. Der Agent darf nicht einfach Pakete hinzufügen ([Modul 08](08-sicherheit.md#unbekannte-pakete-und-typosquatting)).

## KI-erzeugter Code und Texte

**Wem gehört, was die KI erzeugt?** Nach deutschem Recht ist nur eine "persönliche geistige Schöpfung" geschützt ([§ 2 Abs. 2 UrhG](https://www.gesetze-im-internet.de/urhg/__2.html)). Rein KI-erzeugte Ergebnisse sind daher **nach überwiegender Auffassung nicht urheberrechtlich geschützt**. Wo ein Mensch prägend mitwirkt, auswählt, umarbeitet und zusammenfügt, kann für diesen Anteil Schutz entstehen. Eine höchstrichterliche Klärung gibt es bisher nicht, die Abgrenzung ist im Einzelfall schwierig ([IHK Braunschweig: KI-Nutzung im Unternehmen und Urheberrecht](https://www.ihk.de/braunschweig/beratung-und-service/rechtsthemen/wirtschaftsrecht-von-a-bis-z/ki-nutzung-im-unternehmen-und-urheberrecht-6234898), **bitte prüfen**). Für das Wachbuch heißt das praktisch: Der Verein kann KI-Code nutzen, aber er kann nicht sicher sein, an jedem Teil ein eigenes Urheberrecht zu haben.

**Was die Anbieter sagen:** Anthropic überträgt in den kommerziellen Bedingungen seine Rechte an den Ausgaben (soweit vorhanden) an den Kunden und sagt unter Bedingungen Schutz bei Ansprüchen Dritter wegen Verletzung geistigen Eigentums zu ([Anthropic Commercial Terms](https://www.anthropic.com/legal/commercial-terms)). OpenAI überträgt in seinen Nutzungsbedingungen ebenfalls seine Rechte am Output an den Nutzer ([OpenAI Terms of Use](https://openai.com/policies/terms-of-use/)). Wichtig: Der Anbieter kann nur Rechte übertragen, die er hat. Ob am Output überhaupt ein Urheberrecht besteht und ob er fremde Rechte verletzt, klärt das nicht. Bedingungen ändern sich, **bitte prüfen**.

**Das Risiko: wörtlich kopierter Code.** Ein Modell kann bekannten, lizenzierten Code nahezu wörtlich wiedergeben, z. B. eine bekannte Funktion aus einem GPL-Projekt, ohne Hinweis auf Herkunft und Lizenz. GitHub Copilot bietet dafür einen Filter, der Vorschläge mit Übereinstimmungen zu öffentlichem Code blockiert, oder einen Hinweis mit Fundstelle und Lizenz ("Code Referencing") ([GitHub Blog: Code referencing](https://github.blog/news-insights/product-news/code-referencing-now-generally-available-in-github-copilot-and-with-microsoft-azure-ai), **bitte prüfen**, was das eigene Werkzeug bietet).

**Was du tust:**

- Jeden KI-Vorschlag im Review lesen, wie jeden anderen Code ([Modul 07](07-pull-request-und-review.md)).
- Lizenz-Scanner und Duplikat-Filter nutzen, wo es sie gibt.
- **Keinen großen, unbekannten Code** in den Agenten kopieren mit "bau das ins Wachbuch ein". Herkunft und Lizenz kommen nicht mit.
- Wird ein Ergebnis auffällig lang und fertig, z. B. eine komplette Bibliothek: nachfragen, ob es sie schon als Paket gibt, und die nehmen.

## Beiträge: wem gehört der beigesteuerte Code?

Wer zum Wachbuch beiträgt, bleibt Urheber seines Teils und stellt ihn unter die Lizenz des Projekts. Damit das klar ist, nutzen Projekte eine von zwei Methoden:

- **DCO** (Developer Certificate of Origin): Mit der Zeile `Signed-off-by: Name <E-Mail>` im Commit bestätigt der Beitragende, dass er den Beitrag selbst erstellt hat oder ihn weitergeben darf und ihn unter der Projektlizenz einreicht. Git setzt die Zeile mit `git commit --signoff` ([developercertificate.org](https://developercertificate.org/)).
- **CLA** (Contributor License Agreement): ein eigener Vertrag, den man vor dem ersten Beitrag unterschreibt. Oft räumt man darin dem Projektträger weitere Rechte ein, z. B. für einen späteren Lizenzwechsel. Mehr Aufwand, für ein Vereinsprojekt meist überdimensioniert (**bitte prüfen**).

Deshalb stehen Lizenz und Beitragsregeln **von Anfang an** im Repository: `LICENSE` und `CONTRIBUTING.md` ([Modul 10](10-standards.md#dokumentation)). Wer beiträgt, weiß dann vorher, worauf er sich einlässt, und das Projekt muss später niemanden nachträglich fragen.

## Haftung und Verantwortung im Verein

- **Wer verantwortlich ist:** Betreibt der Verein das Wachbuch mit echten Mitgliederdaten, ist **der Verein** Verantwortlicher im Sinne der DSGVO ([Modul 08](08-sicherheit.md#die-dsgvo-in-kurzform), [Modul 14](14-ki-und-datenschutz.md)). Für ihn handelt der **Vorstand**. Ob der Träger der Feuerwehr (die Gemeinde) oder der Förderverein betreibt, muss klar festgelegt sein (**bitte prüfen**).
- **Ehrenamtliche Vorstände** haften dem Verein gegenüber nur bei Vorsatz oder grober Fahrlässigkeit, wenn sie unentgeltlich oder für höchstens 3.300 Euro im Jahr tätig sind ([§ 31a BGB](https://www.gesetze-im-internet.de/bgb/__31a.html)). Gegenüber Dritten gelten andere Regeln (**bitte prüfen**).
- **"Ohne Gewähr" in Lizenzen:** Fast alle Open-Source-Lizenzen enthalten einen Gewährleistungs- und Haftungsausschluss ("AS IS"). Wie weit er in Deutschland wirkt, ist begrenzt, etwa bei Vorsatz (**bitte prüfen**). Für den Verein heißt das: Fremde Bibliotheken kommen ohne Garantie, und das eigene Wachbuch, das andere Wehren nutzen, auch.
- **Versicherung:** Ob die Vereinshaftpflicht oder eine D&O- bzw. Vermögensschadenversicherung Schäden durch Software, Datenpannen oder Urheberrechtsverletzungen abdeckt, klärt der Vorstand mit dem Versicherer (**bitte prüfen**). Die Kassiererin des Fördervereins kennt die bestehenden Verträge.

Für echte Entscheidungen gilt: **rechtlich prüfen lassen.** Der Kommandant entscheidet nicht allein, Karl als Domänenexperte nicht, und der Agent schon gar nicht.

## Checkliste

- [ ] Ich übernehme keinen fremden Code ohne geprüfte Lizenz, auch nicht "nur ein paar Zeilen".
- [ ] Copyright-Hinweise und Lizenztexte bleiben stehen, die Herkunft steht im Pull Request.
- [ ] Neue Abhängigkeiten schlage ich vor, der Architekt entscheidet (mit Lizenz im ADR).
- [ ] Ich achte besonders auf GPL und AGPL, wenn das Projekt eine andere Lizenz hat.
- [ ] CC-Lizenzen nutze ich für Texte und Bilder, nicht für Code.
- [ ] KI-Vorschläge prüfe ich im Review, lange fertige Code-Blöcke hinterfrage ich.
- [ ] Ich kopiere keinen großen unbekannten Code in den Agenten.
- [ ] Unser Projekt hat `LICENSE` und `CONTRIBUTING.md`, Beiträge sind per DCO oder CLA geregelt.
- [ ] Ich weiß: Was mit Lizenz veröffentlicht ist, lässt sich nicht zurückholen.
- [ ] Wer verantwortlich ist und ob eine Versicherung greift, hat der Vorstand geklärt.
- [ ] Bei echten Rechtsfragen holt der Verein rechtlichen Rat ein.

## Zusammenfassung

- Urheberrecht entsteht automatisch. Öffentlich ist nicht frei, ohne Lizenz ist alles verboten.
- Freizügig (MIT, Apache, BSD), schwaches Copyleft (LGPL, MPL), starkes Copyleft (GPL), Netzwerk-Copyleft (AGPL), Creative Commons für Texte, CC0 für fast alles.
- Hinweise auf Autoren und Lizenzen bleiben immer stehen.
- Wer veröffentlicht, gibt Rechte ab und kann sie nicht zurückholen. Forks sind normal.
- Lizenzen der Abhängigkeiten müssen passen, Werkzeuge prüfen das automatisch.
- Rein KI-erzeugter Code ist nach überwiegender Auffassung nicht geschützt, kann aber fremden Code enthalten.
- Dieses Modul ist keine Rechtsberatung.

## Quellen

Alle abgerufen am 2026-11-12. Bedingungen und Rechtslage ändern sich, **bitte prüfen**.

- [choosealicense.com: Lizenzen](https://choosealicense.com/licenses/), [Anhang](https://choosealicense.com/appendix/), [No License](https://choosealicense.com/no-permission/)
- [Open Source Initiative: Open Source Definition](https://opensource.org/osd) und [Lizenzliste](https://opensource.org/licenses)
- [Creative Commons: Lizenzen](https://creativecommons.org/share-your-work/cclicenses/), [FAQ](https://creativecommons.org/faq/), [CC0](https://creativecommons.org/publicdomain/zero/1.0/)
- [GNU: Various Licenses and Comments about Them](https://www.gnu.org/licenses/license-list.html)
- [SPDX License List](https://spdx.org/licenses/)
- [ifrOSS: Institut für Rechtsfragen der Freien und Open Source Software](https://www.ifross.org/)
- GitHub Docs: [Licensing a repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository), [Fork a repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo), [Syncing a fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork), [Permissions and visibility of forks](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/about-permissions-and-visibility-of-forks), [About dependency review](https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/about-dependency-review), [Terms of Service](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service)
- [GitHub Blog: Code referencing in GitHub Copilot](https://github.blog/news-insights/product-news/code-referencing-now-generally-available-in-github-copilot-and-with-microsoft-azure-ai)
- [Anthropic: Commercial Terms](https://www.anthropic.com/legal/commercial-terms), [OpenAI: Terms of Use](https://openai.com/policies/terms-of-use/)
- [Developer Certificate of Origin](https://developercertificate.org/)
- [IHK Braunschweig: KI-Nutzung im Unternehmen und Urheberrecht](https://www.ihk.de/braunschweig/beratung-und-service/rechtsthemen/wirtschaftsrecht-von-a-bis-z/ki-nutzung-im-unternehmen-und-urheberrecht-6234898)
- Gesetze: [§ 2 UrhG](https://www.gesetze-im-internet.de/urhg/__2.html), [§ 69a UrhG](https://www.gesetze-im-internet.de/urhg/__69a.html), [§ 31a BGB](https://www.gesetze-im-internet.de/bgb/__31a.html)
