# Glossar

Die wichtigsten Begriffe rund um Software, KI-Agenten, Review, Sicherheit, Betrieb, Recht und Zusammenarbeit, alphabetisch und in einfachen Worten. Das Glossar ist auch als Wissensgrundlage für Assistenten gedacht: Wer eine Einsteigerfrage hat, kann es einem Assistenten (z. B. ChatGPT oder Claude) geben und sich Begriffe daraus erklären lassen, oder gleich den [Lernbegleiter](tutor/README.md) nutzen. Die Verweise "Siehe" führen zum Modul, in dem der Begriff ausführlich vorkommt.

Rechtliche Begriffe (Datenschutz, Lizenzen, Haftung) sind vereinfacht erklärt. Das ist keine Rechtsberatung.

**Abhängigkeit (Dependency):** Ein fertiger Baustein von anderen Entwicklern, den die eigene Software verwendet, z. B. für Datumsberechnungen. Eine Anwendung hat oft hunderte davon, auch indirekte, und alle müssen regelmäßig aktualisiert werden. Siehe: [Modul 09](09-wartung-und-releases.md).

**Abnahmekriterium:** Eine prüfbare Bedingung, die erfüllt sein muss, damit eine Aufgabe als erledigt gilt. Gute Abnahmekriterien lassen sich mit Ja oder Nein beantworten. Siehe: [Modul 03](03-konzept-und-prompt.md).

**ADR (Architecture Decision Record):** Eine kurze schriftliche Notiz zu einer wichtigen technischen Entscheidung: Frage, Möglichkeiten, Entscheidung, Begründung. ADRs erklären später, warum etwas so gebaut wurde. Siehe: [Modul 10](10-standards.md), [Vorlage](vorlagen/adr.md).

**AGENTS.md:** Eine Datei im Repository mit den Regeln für Coding-Agenten. Viele Agenten, z. B. Claude Code und Codex, lesen sie automatisch. Siehe: [Modul 06](06-coding-agent.md), [Modul 10](10-standards.md).

**Alerting (Alarmierung):** Der Teil des Monitorings, der bei einem Problem eine zuständige Person benachrichtigt, z. B. per Nachricht aufs Handy. Ein Alarm muss bei jemandem ankommen, der ihn auch bearbeiten kann, nicht in einem Postfach, das niemand liest. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Anonymisierung:** Daten so verändern, dass sie sich keiner echten Person mehr zuordnen lassen, z. B. indem Namen, Adressen und Gesundheitsangaben ersetzt werden. Nur Nachnamen wegzulassen reicht nicht. Ob eine Anonymisierung ausreicht, entscheiden Architekt und Datenschutzbeauftragter. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md), [Modul 14](14-ki-und-datenschutz.md).

**API (Schnittstelle):** Eine festgelegte Art, wie Programme miteinander sprechen. Die Oberfläche des Wachbuchs fragt z. B. über eine API beim Server die Liste der Fahrzeuge ab. Jede API-Anfrage muss auf dem Server auf Rechte geprüft werden. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Architekt (Softwarearchitekt):** Die Person, die den Aufbau einer Software verantwortet, Konzepte und Pull Requests prüft und entscheidet, was hineinkommt. Im Beispiel ist das Peter. Siehe: [Modul 01](01-rollen-und-ablauf.md).

**Assistent (Chat- oder Sprachassistent):** Ein KI-Programm, mit dem man schreibt oder spricht, z. B. ChatGPT oder Claude. Anders als ein Coding-Agent arbeitet er nicht selbst im Repository. Siehe: [Modul 02](02-ideen-per-sprache.md).

**Auftragsverarbeitung (AVV):** Ein Dienstleister verarbeitet personenbezogene Daten im Auftrag und nach Weisung einer Organisation, z. B. ein KI-Anbieter oder ein Hoster. Dafür braucht es einen Auftragsverarbeitungsvertrag (AVV, englisch DPA) nach Art. 28 DSGVO. Verbraucher-Apps haben keinen AVV, deshalb dürfen dort keine personenbezogenen Daten hinein. Siehe: [Modul 14](14-ki-und-datenschutz.md).

**Authentifizierung:** Die Prüfung, wer jemand ist, z. B. durch Benutzername und Passwort. Sie beantwortet die Frage "Wer bist du?". Siehe: [Modul 08](08-sicherheit.md).

**Autorisierung:** Die Prüfung, was jemand darf, nachdem klar ist, wer er ist. Sie beantwortet die Frage "Darfst du das?" und muss immer auf dem Server stattfinden. Siehe: [Modul 08](08-sicherheit.md).

**AVV:** Abkürzung für Auftragsverarbeitungsvertrag, siehe Auftragsverarbeitung.

**Backend:** Der Teil einer Anwendung, der auf dem Server läuft: Er speichert Daten, prüft Rechte und rechnet. Nutzer sehen ihn nicht direkt. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Backup (Sicherung):** Eine Kopie der Daten, mit der man sie nach einem Fehler oder Angriff wiederherstellen kann. Für den Betrieb gilt die 3-2-1-Regel: drei Kopien, zwei verschiedene Speicher, eine an einem anderen Ort. Ein Backup ist nur etwas wert, wenn die Wiederherstellung ausprobiert wurde. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md), [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Backup-Test:** Siehe Wiederherstellungstest.

**Bibliothek:** Eine Sammlung fertiger Funktionen, die man in die eigene Software einbindet, z. B. zum Rechnen mit Datumsangaben. Bibliotheken werden meist als Pakete installiert. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Bitbucket:** Eine Plattform für Git-Repositories, ähnlich wie GitHub, vor allem in Firmen verbreitet. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Branch:** Ein Arbeitszweig im Repository. Änderungen entstehen in einem eigenen Branch, ohne den Hauptstand `main` zu stören. Siehe: [Modul 07](07-pull-request-und-review.md), [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Breaking Change:** Eine Änderung, nach der Bestehendes nicht mehr wie gewohnt funktioniert. Sie führt zu einer neuen MAJOR-Version. Siehe: [Modul 09](09-wartung-und-releases.md).

**Browser:** Das Programm, mit dem man Webseiten und Web-Apps öffnet, z. B. Firefox, Chrome, Safari oder Edge. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Budget (Ausgabegrenze):** Ein fester Höchstbetrag pro Monat für nutzungsbasiert abgerechnete Dienste wie eine KI-API oder CI-Minuten. Ist er erreicht, stoppt die Nutzung. Immer zuerst Budget und Warnungen einrichten, dann loslegen. Siehe: [Modul 13](13-werkzeuge-und-kosten.md).

**Bus-Faktor:** Wie viele Personen ausfallen müssten, damit niemand mehr die Software versteht oder betreiben kann. Ist die Antwort "eine", ist das Projekt gefährdet. Siehe: [Modul 15](15-projekt-lebenszyklus.md).

**Changelog:** Eine Liste aller Änderungen je Version. Sie kann automatisch aus Commit-Nachrichten erzeugt werden. Siehe: [Modul 09](09-wartung-und-releases.md).

**CI/CD:** CI (Continuous Integration) heißt: Bei jedem Pull Request laufen automatisch Prüfungen wie Tests und Sicherheitsscans. CD (Continuous Delivery oder Deployment) heißt: Geprüfte Stände werden automatisch ausgeliefert, z. B. in die Testumgebung. Siehe: [Modul 07](07-pull-request-und-review.md), [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Client:** Das Programm, das bei einem Server etwas anfragt, z. B. der Browser oder eine App auf dem Handy. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Clone:** Eine vollständige Kopie eines Repositories auf den eigenen Rechner oder in eine Sandbox holen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Cloud-Sandbox:** Ein abgeschotteter Rechner beim Anbieter, auf dem ein Agent arbeitet, ohne den eigenen Rechner zu berühren. Für Einsteiger der einfachste Weg. Siehe: [Modul 06](06-coding-agent.md).

**Code of Conduct (Verhaltenskodex):** Eine Datei im Repository (oft `CODE_OF_CONDUCT.md`), die beschreibt, wie man im Projekt miteinander umgeht und was passiert, wenn sich jemand nicht daran hält. Sie gilt für Issues, Reviews und alle anderen Gespräche im Projekt. Siehe: [Modul 19](19-gut-zusammenarbeiten.md).

**Coding-Agent:** Ein KI-Werkzeug, das selbständig in einem Repository arbeitet: Dateien liest und ändert, Befehle ausführt und Pull Requests vorbereitet. Beispiele sind Claude Code und OpenAI Codex. Siehe: [Modul 06](06-coding-agent.md).

**Commit:** Ein gespeicherter Arbeitsschritt im Repository mit einer kurzen Nachricht, was geändert wurde. Siehe: [Modul 07](07-pull-request-und-review.md), [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Container:** Ein verpacktes Programm samt allem, was es zum Laufen braucht. Container laufen überall gleich, egal auf welchem Server. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Context Window:** Englisch für Kontextfenster, siehe dort.

**Conventional Commits:** Ein festes Muster für Commit-Nachrichten, z. B. `feat: neue funktion` oder `fix: fehler behoben`. Daraus können Maschinen Versionen und Changelogs ableiten. Siehe: [Modul 09](09-wartung-und-releases.md).

**Cookie:** Eine kleine Datei, die eine Webseite im Browser speichert, z. B. um sich zu merken, dass man angemeldet ist. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Copyleft:** Eine Eigenschaft mancher Open-Source-Lizenzen, z. B. der GPL: Wer die Software verändert und weitergibt, muss auch seine Änderungen unter derselben Lizenz und mit Quellcode weitergeben. Das schützt die Offenheit, kann aber mit anderen Lizenzen im eigenen Projekt kollidieren. Siehe: [Modul 18](18-lizenzen-und-recht.md).

**CRA (Cyber Resilience Act):** Ein EU-Gesetz (Verordnung (EU) 2024/2847), das Herstellern von Software und Geräten Pflichten zur Sicherheit auferlegt, z. B. Sicherheitsupdates, eine SBOM und die Meldung ausgenutzter Lücken. Nicht kommerzielle Vereinssoftware fällt voraussichtlich nicht unter die Herstellerpflichten (bitte prüfen). Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Cross-Platform:** Eine App, die mit einem gemeinsamen Code auf mehreren Systemen läuft, z. B. iPhone und Android. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**CVE (Common Vulnerabilities and Exposures):** Eine weltweit eindeutige Nummer für eine bekannte Sicherheitslücke, z. B. CVE-2024-3094. So reden alle über dieselbe Lücke. Jeden Tag kommen über hundert neue hinzu. Siehe: [Modul 09](09-wartung-und-releases.md), [Modul 16](16-vom-prototyp-zum-betrieb.md).

**CVSS (Common Vulnerability Scoring System):** Eine Punktzahl von 0 bis 10 für die Schwere einer Sicherheitslücke. Ab 9,0 gilt sie als kritisch. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**CycloneDX:** Eines der zwei verbreiteten, maschinenlesbaren Formate für eine SBOM. Das andere ist SPDX. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Cypress:** Ein Werkzeug für End-to-End-Tests, das die Anwendung im Browser bedient und prüft, was auf dem Bildschirm erscheint. Ähnlich wie Playwright. Siehe: [Modul 12](12-testen.md).

**Datenbank:** Ein Programm, das Daten geordnet speichert und schnell wiederfindet. Das Wachbuch speichert dort Mitglieder, Fahrzeuge und Prüfungen. Siehe: [Modul 05](05-datenmodell.md), [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Datenklasse:** Eine Einteilung von Daten nach Schutzbedarf: öffentlich, intern, personenbezogen und besondere Kategorien wie Gesundheitsdaten. Die Datenklasse entscheidet, in welchen KI-Dienst und in welche Umgebung Daten dürfen. Siehe: [Modul 14](14-ki-und-datenschutz.md).

**Datenminimierung:** Nur die Daten erheben, speichern und weitergeben, die für den Zweck wirklich nötig sind. Im Wachbuch z. B. "Untersuchung gültig bis" statt eines Befunds. Siehe: [Modul 14](14-ki-und-datenschutz.md).

**Datenmodell:** Die Beschreibung, welche Daten eine Software speichert und wie sie zusammenhängen. Fehler im Datenmodell sind später teuer zu korrigieren. Siehe: [Modul 05](05-datenmodell.md).

**Dependency:** Englisch für Abhängigkeit, siehe dort.

**Dependency-Track:** Ein freies Werkzeug von OWASP, das die SBOMs aller Systeme sammelt und laufend mit neuen CVEs abgleicht. So ist die Frage "Sind wir betroffen?" in Minuten beantwortet. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Deployment:** Das Ausliefern einer Software-Version auf einen Server, z. B. in die Testumgebung oder in die Produktion. Siehe: [Modul 09](09-wartung-und-releases.md), [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Diff:** Die Gegenüberstellung von altem und neuem Stand. Im Pull Request zeigt der Diff, welche Zeilen hinzugekommen oder weggefallen sind. Siehe: [Modul 07](07-pull-request-und-review.md).

**DNS:** Das "Telefonbuch des Internets". Es übersetzt einen Namen wie `wachbuch.example.org` in die Adresse des Servers. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Docker:** Das bekannteste Werkzeug, um Container zu bauen und zu starten. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Domain:** Der Name einer Webseite, z. B. `example.org`. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Domänenexperte:** Eine Person, die ein Fachgebiet aus der Praxis sehr gut kennt, z. B. Karl als Feuerwehrmann. In dieser Schulung treibt sie die Entwicklung mit Hilfe von Agenten. Siehe: [Modul 00](00-warum.md), [Modul 01](01-rollen-und-ablauf.md).

**DSFA (Datenschutz-Folgenabschätzung):** Eine Prüfung der Risiken, bevor eine Verarbeitung mit hohem Risiko beginnt, z. B. wenn Gesundheitsdaten in großem Umfang verarbeitet werden (Art. 35 DSGVO). Ob sie nötig ist, klärt der Datenschutzbeauftragte. Siehe: [Modul 14](14-ki-und-datenschutz.md).

**DSGVO:** Die Datenschutz-Grundverordnung der EU. Sie regelt, wie personenbezogene Daten verarbeitet werden dürfen, auch in Vereinen und Feuerwehren. Siehe: [Modul 08](08-sicherheit.md), [Modul 14](14-ki-und-datenschutz.md).

**Effort (Reasoning-Stufe, Nachdenk-Stufe):** Eine Einstellung, wie viel ein KI-Modell vor der Antwort nachdenken soll, z. B. niedrig, mittel oder hoch. Mehr Nachdenken bringt bei schweren Aufgaben bessere Ergebnisse, kostet aber Zeit und mehr Token. Siehe: [Modul 17](17-ki-modelle.md).

**Egress:** Verbindungen, die eine Anwendung nach außen ins Internet aufbaut. Aus Sicherheitsgründen werden sie so weit wie möglich beschränkt. Siehe: [Modul 08](08-sicherheit.md).

**End-to-End-Test (E2E):** Ein Test, der die Anwendung wie ein Nutzer bedient, z. B. im Browser anmelden, Formular ausfüllen, Ergebnis prüfen. Er ist langsamer als ein Unit-Test, prüft aber das Zusammenspiel aller Teile. Siehe: [Modul 12](12-testen.md).

**EPSS (Exploit Prediction Scoring System):** Eine Schätzung, wie wahrscheinlich eine Sicherheitslücke in den nächsten 30 Tagen tatsächlich ausgenutzt wird. Hilft zu entscheiden, welche Lücke zuerst geschlossen wird. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Flaky Test (wackelnder Test):** Ein Test, der mal grün und mal rot ist, ohne dass sich etwas geändert hat, oft wegen Zeitabhängigkeiten. Er ist gefährlich, weil man sich angewöhnt, rote Ergebnisse zu ignorieren, und wird deshalb als Issue gemeldet und repariert. Siehe: [Modul 12](12-testen.md).

**Fork:** Eine eigene Kopie eines fremden Repositories, z. B. auf GitHub. Aus einem Fork kann man Pull Requests an das Original stellen oder ein eigenständiges Projekt weiterentwickeln. Was man mit einem Fork tun darf, regelt die Lizenz des Originals. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md), [Modul 18](18-lizenzen-und-recht.md).

**Formatierung:** Das einheitliche Aussehen von Code: Einrückung, Leerzeichen, Zeilenlänge. Ein Formatierer macht das automatisch, damit Diffs nur echte Änderungen zeigen. Siehe: [Modul 12](12-testen.md).

**Framework:** Ein Grundgerüst für eine Anwendung, das vieles vorgibt und erledigt, z. B. wie Seiten aufgebaut und Anfragen verarbeitet werden. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Fremdschlüssel:** Ein Verweis in einer Tabelle auf einen Eintrag in einer anderen Tabelle, z. B. von einer Prüfung auf das geprüfte Gerät. Die Datenbank stellt so sicher, dass der Verweis gültig ist. Siehe: [Modul 05](05-datenmodell.md).

**Frontend:** Der Teil einer Anwendung, den Nutzer sehen und bedienen, z. B. die Seiten im Browser. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Full-Stack:** Frontend und Backend zusammen. Eine Full-Stack-Anwendung oder ein Full-Stack-Entwickler deckt beides ab. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Geteilte Verantwortung:** Das Modell dieser Schulung, wer wofür zuständig ist: Domänenexperten für das, was in der Software passiert (Abläufe, Regeln, fachliche Prüfung), IT-Experten für die Software selbst (Architektur, Sicherheit, Betrieb), manches wie das Datenmodell gemeinsam. Der KI-Agent trägt keine Verantwortung. Siehe: [Geteilte Verantwortung](geteilte-verantwortung.md).

**Git:** Das verbreitetste Werkzeug zur Versionskontrolle. Es speichert jede Änderung mit Autor, Zeit und Nachricht. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Gitea:** Eine schlanke Plattform für Git-Repositories, die man selbst betreiben kann. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**GitHub:** Die bekannteste Plattform für Git-Repositories, mit Issues, Pull Requests und automatischen Prüfungen (GitHub Actions). Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**GitLab:** Eine Plattform für Git-Repositories mit ähnlichen Funktionen wie GitHub, auch zum Selbstbetrieb. Pull Requests heißen dort Merge Requests. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**GPL (GNU General Public License):** Eine verbreitete Open-Source-Lizenz mit Copyleft. Wer GPL-Code in seine Software einbaut und diese weitergibt, muss in der Regel die ganze Software unter der GPL mit Quellcode weitergeben. Siehe: [Modul 18](18-lizenzen-und-recht.md).

**Haftung:** Die Pflicht, für einen Schaden einzustehen, z. B. wenn durch einen Softwarefehler Daten verloren gehen. Open-Source-Lizenzen schließen die Haftung so weit wie gesetzlich möglich aus, ganz ausschließen lässt sie sich nach deutschem Recht aber nicht (bitte prüfen). Wer Software für andere betreibt, sollte klären, wer im Schadensfall verantwortlich ist. Siehe: [Modul 18](18-lizenzen-und-recht.md).

**Halluzination:** Wenn ein KI-Modell etwas Falsches erfindet und es überzeugend darstellt, z. B. ein Paket oder eine Funktion, die es nicht gibt. Deshalb wird alles geprüft. Siehe: [Modul 06](06-coding-agent.md), [Modul 17](17-ki-modelle.md).

**Hash:** Ein "Fingerabdruck" einer Information, der sich nicht zurückrechnen lässt. Gleiche Eingabe ergibt immer denselben Hash.

**HTTP:** Die Sprache, in der Browser und Server Webseiten austauschen. Ohne Verschlüsselung kann jeder auf dem Weg mitlesen. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**HTTPS:** HTTP mit Verschlüsselung durch TLS. Erkennbar am Schloss im Browser. Für jede Anwendung mit Anmeldung oder persönlichen Daten Pflicht. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**IDE (Entwicklungsumgebung):** Ein Programm zum Schreiben von Code mit vielen Hilfen, z. B. VS Code. Viele Coding-Agenten gibt es auch als Erweiterung für eine IDE. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Incident (Störung):** Alles, was den Betrieb beeinträchtigt: Ausfall, Datenfehler, Angriff. Vorher wird festgelegt, wer informiert wird, wer entscheidet und was die Organisation macht, solange die Software nicht geht. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Integrationstest:** Ein Test, der mehrere Teile zusammen prüft, z. B. ob eine gespeicherte Prüfung danach wirklich in der Testdatenbank steht. Siehe: [Modul 12](12-testen.md).

**Issue:** Ein Eintrag im Repository, der eine Aufgabe, einen Fehler oder einen Wunsch beschreibt. Jeder Pull Request sollte ein Issue lösen. Siehe: [Modul 03](03-konzept-und-prompt.md), [Vorlage](vorlagen/issue.md).

**JSON:** Ein einfaches Textformat für strukturierte Daten, z. B. `{"name": "HLF 20"}`. Viele APIs und Konfigurationsdateien nutzen es. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**KEV (Known Exploited Vulnerabilities):** Ein Katalog der US-Behörde CISA mit Sicherheitslücken, die nachweislich bereits angegriffen werden. Steht eine Lücke dort, ist höchste Eile geboten. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Konflikt (Merge-Konflikt):** Entsteht, wenn zwei Branches dieselbe Stelle unterschiedlich geändert haben. Git kann dann nicht selbst entscheiden, ein Mensch oder Agent muss den Konflikt auflösen und dabei prüfen, dass keine fremde Änderung verloren geht. Kleine, kurzlebige Pull Requests vermeiden Konflikte. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md), [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Kontextfenster (Context Window):** Die Menge an Text (gemessen in Token), die ein KI-Modell auf einmal "im Kopf" haben kann: Auftrag, Projektregeln, geöffnete Dateien und der bisherige Verlauf. Bei sehr vollem Kontext übersieht der Agent eher frühere Anweisungen, und jeder Schritt kostet mehr. Eine neue Sitzung mit klarem Auftrag hilft. Siehe: [Modul 17](17-ki-modelle.md).

**Kubernetes:** Ein System, das viele Container auf mehreren Servern betreibt, neu startet und verteilt. Für kleine Anwendungen oft nicht nötig. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Label:** Eine farbige Markierung für Issues und Pull Requests, z. B. "bug", "security" oder "dokumentation". Labels helfen beim Sortieren.

**Lint:** Eine automatische Prüfung auf Stilfehler und typische Programmierfehler. Sie läuft in Sekunden, ohne die Software zu starten. Siehe: [Modul 07](07-pull-request-und-review.md), [Modul 12](12-testen.md).

**Lizenz:** Legt fest, wer eine Software oder einen Text wie nutzen, ändern und weitergeben darf. Freizügige Lizenzen wie MIT oder Apache 2.0 erlauben fast alles, solange der Urheber- und Lizenzhinweis erhalten bleibt; Copyleft-Lizenzen wie die GPL verlangen, dass Änderungen offen bleiben. Code ohne Lizenz darf man grundsätzlich nicht verwenden. Siehe: [Modul 04](04-marktrecherche.md), [Modul 18](18-lizenzen-und-recht.md).

**Lizenzkompatibilität:** Die Frage, ob sich Code unter verschiedenen Lizenzen in einem Projekt kombinieren lässt. Eine GPL-Abhängigkeit passt z. B. nicht ohne Weiteres in ein Projekt, das unter MIT veröffentlicht wird. Neue Abhängigkeiten werden deshalb auch auf ihre Lizenz geprüft. Siehe: [Modul 18](18-lizenzen-und-recht.md).

**LLM (Large Language Model):** Ein großes Sprachmodell, die Technik hinter Assistenten und Coding-Agenten. Es erzeugt Text, indem es wahrscheinliche Fortsetzungen berechnet, und kann sich dabei irren. Siehe: [Modul 17](17-ki-modelle.md).

**Lockfile:** Eine Datei, die festhält, welche Abhängigkeiten in genau welcher Version verwendet werden, auch die indirekten. Siehe: [Modul 09](09-wartung-und-releases.md).

**Log:** Eine Protokolldatei, in der eine Software notiert, was sie tut. Personenbezogene Daten und Secrets gehören nicht hinein, und Logs aus QA oder Produktion gehören nicht in einen KI-Chat. Siehe: [Modul 08](08-sicherheit.md), [Modul 14](14-ki-und-datenschutz.md).

**Lokales Modell:** Ein KI-Modell, das auf dem eigenen Rechner läuft, z. B. mit Ollama oder LM Studio, sodass keine Daten an einen Anbieter gehen. Für echte Softwareentwicklung sind kleine lokale Modelle meist zu schwach, für einfache Aufgaben und zum Lernen aber brauchbar. Siehe: [Modul 17](17-ki-modelle.md).

**main:** Der Hauptbranch eines Repositories. Er enthält den geprüften Stand, niemand arbeitet direkt darauf. Siehe: [Modul 10](10-standards.md).

**Maintainer:** Die Person, die für eine Software verantwortlich ist, Pull Requests freigibt, Updates im Blick behält und Releases erstellt. Im Beispiel ist das Peter. Siehe: [Modul 09](09-wartung-und-releases.md).

**Markdown:** Ein einfaches Textformat mit wenigen Zeichen für Formatierung, z. B. `#` für Überschriften und `**` für Fettdruck. Diese Schulung ist in Markdown geschrieben. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Merge:** Das Übernehmen der Änderungen aus einem Branch in einen anderen, meist nach `main`, nachdem das Review abgeschlossen ist. Siehe: [Modul 07](07-pull-request-und-review.md).

**Merge-Konflikt:** Siehe Konflikt.

**Migration:** Ein Schritt, der die Struktur der Datenbank ändert, z. B. ein neues Feld anlegt. Bereits ausgelieferte Migrationen werden nicht mehr geändert. Siehe: [Modul 05](05-datenmodell.md).

**MIT-Lizenz:** Eine kurze, freizügige Open-Source-Lizenz. Jeder darf den Code nutzen, ändern, weitergeben und auch in geschlossene Produkte einbauen, solange der Urheber- und Lizenzhinweis erhalten bleibt. Siehe: [Modul 18](18-lizenzen-und-recht.md).

**Monitoring (Überwachung):** Ein System prüft ständig, ob die Software erreichbar ist, ob auffällig viele Fehler auftreten und ob Speicher, Zertifikate und Backups in Ordnung sind. Bei Problemen alarmiert es die Verantwortlichen, bevor die Nutzer es merken (siehe Alerting). Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**MVP (Minimum Viable Product):** Die kleinste Version einer Software, die schon echten Nutzen bringt. Ein MVP entsteht nach Konzept und Basis, nicht als schneller Prototyp. Siehe: [Modul 15](15-projekt-lebenszyklus.md).

**Native App:** Eine App, die speziell für ein System gebaut ist, z. B. nur für iPhone oder nur für Android, und über den App-Store installiert wird. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**npm:** Das Paketverzeichnis und Werkzeug für JavaScript. Darüber werden Abhängigkeiten installiert. Siehe: [Modul 09](09-wartung-und-releases.md).

**Onboarding (Einarbeitung):** Der Weg, wie neue Mitwirkende ins Projekt kommen: Zugänge, Regeln, erstes kleines Issue, Begleitung bei den ersten Pull Requests. Siehe: [Modul 19](19-gut-zusammenarbeiten.md), [Schulungsablauf](schulungsablauf.md).

**Open Source:** Software, deren Quellcode öffentlich ist und unter einer Lizenz steht, die Nutzung und Änderung erlaubt. Öffentlich sichtbarer Code ohne Lizenz ist kein Open Source. Siehe: [Modul 04](04-marktrecherche.md), [Modul 18](18-lizenzen-und-recht.md).

**Open-Weight-Modell (offenes Modell):** Ein KI-Modell, dessen trainierte Gewichte veröffentlicht sind, sodass man es herunterladen und selbst betreiben kann. Große offene Modelle brauchen teure Hardware. Siehe: [Modul 17](17-ki-modelle.md).

**Paket:** Ein veröffentlichter Software-Baustein, z. B. bei npm. Siehe Abhängigkeit.

**Passwort-Hash:** Passwörter werden nie im Klartext gespeichert, sondern nur als Hash mit einem dafür gemachten, absichtlich langsamen Verfahren. Bei der Anmeldung wird der Hash der Eingabe verglichen. Siehe: [Modul 08](08-sicherheit.md).

**Personenbezogene Daten:** Alle Angaben, die sich einer bestimmten Person zuordnen lassen, z. B. Name, Adresse, Geburtsdatum. Gesundheitsdaten sind besonders geschützt. Siehe: [Modul 08](08-sicherheit.md), [Modul 14](14-ki-und-datenschutz.md).

**Pinning (Versionen festnageln):** Abhängigkeiten, Container-Images und Pipeline-Bausteine werden auf eine feste Version oder Prüfsumme festgelegt, damit nicht unbemerkt etwas anderes eingebaut wird. Renovate aktualisiert sie kontrolliert. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Pipeline:** Die Abfolge automatischer Schritte in der CI/CD, z. B. erst prüfen, dann testen, dann bauen, dann ausliefern. Siehe: [Modul 07](07-pull-request-und-review.md), [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Playwright:** Ein Werkzeug für End-to-End-Tests. Es startet einen Browser, klickt, tippt und prüft, was auf dem Bildschirm erscheint, und sucht Felder dabei über ihre sichtbare Beschriftung. Siehe: [Modul 12](12-testen.md).

**PoC (Proof of Concept):** Ein Nachweis, dass eine Idee grundsätzlich funktioniert, z. B. dass sich Prüftermine automatisch berechnen lassen. Ein PoC ist kein fertiges Produkt. Siehe: [Modul 15](15-projekt-lebenszyklus.md).

**Preview-Umgebung (Vorschau):** Eine kleine, eigene Installation der Software pro Pull Request oder pro Entwickler, mit erfundenen Daten. Man probiert seine Änderung über einen Link im Browser aus, nach dem Merge wird sie gelöscht. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Produktion (prod):** Die echte Installation einer Software mit echten Nutzern und echten Daten. KI-Agenten haben dort niemals Zugriff, auch nicht nur lesend. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md), [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Programmiersprache:** Eine Sprache, in der Code geschrieben wird, z. B. JavaScript, TypeScript, Python oder Go. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Prompt:** Der Text, mit dem man einem Assistenten oder Agenten sagt, was er tun soll. Siehe: [Modul 03](03-konzept-und-prompt.md), [Vorlage](vorlagen/prompt-coding-agent.md).

**Prompt Injection:** Ein Angriff, bei dem versteckte Anweisungen in Texten (z. B. in einem Issue oder auf einer Webseite) einen Agenten dazu bringen, etwas Unerwünschtes zu tun. Siehe: [Modul 08](08-sicherheit.md).

**Prototyp:** Eine schnelle, anklickbare Skizze, die zeigt, wie etwas aussehen und sich anfühlen könnte. Er ist zum Lernen da, enthält nur erfundene Daten und wird meist weggeworfen; die Ideen bleiben. Siehe: [Modul 15](15-projekt-lebenszyklus.md), [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Pull:** Die neuesten Änderungen von der Plattform in die eigene Kopie holen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Pull Request (PR):** Die Bitte, die Änderungen eines Branches in `main` zu übernehmen. Hier finden Prüfungen und Review statt. Siehe: [Modul 07](07-pull-request-und-review.md), [Vorlage](vorlagen/pull-request.md).

**Push:** Eigene Commits von der lokalen Kopie auf die Plattform hochladen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**PWA (Progressive Web App):** Eine Web-App, die sich wie eine App auf dem Handy installieren lässt, ohne App-Store. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**QA (Quality Assurance) / Staging:** Die letzte Umgebung vor der Produktion, möglichst genau wie diese aufgebaut, um ein Release zu prüfen. Liegen dort echte oder nur teilweise anonymisierte Daten, haben KI-Agenten und KI-Chats keinen Zugriff. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Reasoning-Modell:** Ein KI-Modell, das vor der Antwort "nachdenkt": Es zerlegt die Aufgabe in Schritte und prüft Zwischenergebnisse. Das lohnt sich für Architektur, Datenmodell, Sicherheit und hartnäckige Fehler, nicht für kurze Fragen. Siehe: [Modul 17](17-ki-modelle.md).

**Rebase:** Die eigenen Commits auf einen neueren Stand von `main` umsetzen, damit der Branch wieder aktuell ist. Kann Konflikte auslösen. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md), [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Recht (Berechtigung):** Die Erlaubnis, etwas Bestimmtes zu tun, z. B. Untersuchungsfristen sehen. Rechte werden meist über Rollen vergeben. Siehe: [Modul 08](08-sicherheit.md).

**Refactor (Umbau):** Code grundsätzlich umbauen, ohne das Verhalten zu ändern, z. B. die Rechteprüfung neu ordnen. Große Umbauten berühren viele Dateien und kommen nur nach Absprache mit dem Maintainer und mit Ankündigung. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Release:** Eine feste, benannte Version der Software, die ausgeliefert wird, z. B. `v1.4.0`. Siehe: [Modul 09](09-wartung-und-releases.md).

**Renovate:** Ein Bot, der automatisch Pull Requests für neue Versionen von Abhängigkeiten öffnet. Siehe: [Modul 09](09-wartung-und-releases.md).

**Repository:** Die Ablage eines Projekts mit allem Code, der Doku und der kompletten Änderungsgeschichte. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**REST:** Ein verbreiteter Stil für APIs im Web: Jede Sache hat eine Adresse, z. B. `/fahrzeuge/7`, und man liest, legt an, ändert oder löscht sie mit festen Befehlen. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Review:** Die Prüfung eines Pull Requests durch Werkzeuge und Menschen, bevor er übernommen wird. Kritik im Review gilt dem Code, nicht der Person. Siehe: [Modul 07](07-pull-request-und-review.md), [Modul 19](19-gut-zusammenarbeiten.md).

**Rollback:** Das Zurückkehren zu einer früheren Version, wenn nach einem Release etwas schiefgeht. Bei Datenbankänderungen nicht immer einfach. Siehe: [Modul 09](09-wartung-und-releases.md).

**Rolle:** Eine Aufgabe mit festen Rechten und Pflichten. Im Projekt z. B. Architekt, in der Software z. B. "Wehrführung", die Untersuchungsfristen sehen darf. Siehe: [Modul 01](01-rollen-und-ablauf.md), [Modul 08](08-sicherheit.md).

**Runbook (Betriebshandbuch):** Eine kurze Anleitung für den Betrieb: wo was läuft, wie man neu startet, wie man ein Backup zurückspielt, wer welche Zugänge hat, wen man anruft. So kann auch eine Vertretung handeln. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Sandbox:** Eine abgeschottete Umgebung, in der ein Programm oder Agent arbeitet, ohne dem Rest des Systems schaden zu können. Siehe Cloud-Sandbox.

**SAST:** Statische Analyse: Werkzeuge, die den Code nach unsicheren Mustern durchsuchen, ohne ihn auszuführen. Siehe: [Modul 08](08-sicherheit.md).

**SBOM (Software Bill of Materials):** Die maschinenlesbare "Zutatenliste" einer Software: alle Komponenten mit Versionen. Automatisch mit neuen CVEs abgeglichen beantwortet sie "Sind wir betroffen?" in Minuten. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Secret:** Ein Geheimnis wie Passwort, Schlüssel oder Token. Secrets gehören nie in Code, Prompts oder Screenshots. Siehe: [Modul 08](08-sicherheit.md).

**Security-Review:** Die Prüfung eines Pull Requests mit der Frage "Wie könnte man das missbrauchen?", z. B. durch Sabine. Pflicht bei allem, was Rechte, persönliche Daten oder Verbindungen nach außen betrifft. Siehe: [Modul 08](08-sicherheit.md).

**Semantic Versioning:** Ein Schema für Versionsnummern `MAJOR.MINOR.PATCH`. Die Nummer zeigt, wie groß und wie riskant eine Änderung ist. Siehe: [Modul 09](09-wartung-und-releases.md).

**semantic-release:** Ein Werkzeug, das aus Commit-Nachrichten automatisch die nächste Versionsnummer und das Changelog erzeugt. Siehe: [Modul 09](09-wartung-und-releases.md).

**Server:** Ein Rechner (oder Programm), der Anfragen von Clients beantwortet, z. B. Webseiten ausliefert und Daten speichert. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Session (Sitzung):** Die Zeit zwischen Anmelden und Abmelden. Der Server merkt sich, wer angemeldet ist, meist über ein Cookie. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Signatur (Signieren):** Ein digitales Siegel auf einem Build-Ergebnis, z. B. einem Container-Image, das zeigt, wer es gebaut hat und dass es unverändert ist. Der Server startet nur, was korrekt signiert ist. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**SLSA (Supply-chain Levels for Software Artifacts):** Ein Rahmenwerk mit Stufen dafür, wie gut nachweisbar ist, aus welchem Code und mit welcher Pipeline eine Software gebaut wurde (Herkunftsnachweis, englisch Provenance). Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**SPDX:** Ein verbreitetes Format für SBOMs und zugleich eine Liste fester Kurznamen für Lizenzen, z. B. `MIT` oder `GPL-3.0-only`. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md), [Modul 18](18-lizenzen-und-recht.md).

**Spec-Test (Spezifikationstest):** Ein Test, der Verhalten als feste Regel beschreibt, oft in der Form "Gegeben, Wenn, Dann". Weil das fast normale Sprache ist, können Domänenexperten solche Regeln direkt mitschreiben. Siehe: [Modul 12](12-testen.md).

**SQL:** Die Sprache, mit der man Datenbanken abfragt und ändert. Falsch zusammengebaute SQL-Abfragen ermöglichen Injection-Angriffe. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md), [Modul 08](08-sicherheit.md).

**Staging:** Siehe QA.

**Supply Chain (Lieferkette):** Alles, was in die eigene Software einfließt: Abhängigkeiten, Container-Images, Pipeline-Bausteine, Werkzeuge. Angreifer manipulieren oft lieber ein Glied dieser Kette als die Anwendung selbst; dagegen helfen Pinning, Prüfung neuer Abhängigkeiten, Signaturen und SBOM. Siehe: [Modul 09](09-wartung-und-releases.md), [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Synthetische Daten (Testdaten):** Erfundene Daten, die echt aussehen, z. B. "Max Mustermann" oder "HLF 20 Musterstadt". In Entwicklung, Tests, Prompts und Screenshots werden nur sie verwendet. Siehe: [Modul 12](12-testen.md), [Modul 14](14-ki-und-datenschutz.md).

**Tabelle:** Ein Teil einer Datenbank mit Zeilen (Einträgen) und Spalten (Feldern), z. B. eine Tabelle "Fahrzeug". Siehe: [Modul 05](05-datenmodell.md).

**Tag:** Eine feste Markierung eines bestimmten Stands im Repository, meist für ein Release, z. B. `v1.4.0`. Siehe: [Modul 09](09-wartung-und-releases.md).

**Terminal (Kommandozeile):** Ein Fenster, in dem man dem Rechner Befehle als Text gibt statt mit der Maus. Für den Einstieg mit einem Cloud-Agenten nicht nötig. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Test:** Ein kleines Programm, das automatisch prüft, ob die Software in einem bestimmten Fall richtig reagiert. Ein roter Test wird repariert, nicht gelöscht oder übersprungen. Siehe: [Modul 12](12-testen.md).

**Testpyramide:** Ein Bild für die Arten von Prüfungen: unten viele schnelle (Lint, Typprüfung, Unit-Tests), oben wenige langsame (End-to-End-Tests im Browser). Alle laufen bei jeder Änderung in der CI. Siehe: [Modul 12](12-testen.md).

**TLS:** Das Verfahren, das Verbindungen im Internet verschlüsselt, z. B. bei HTTPS. Es sorgt dafür, dass niemand unterwegs mitlesen oder Daten verändern kann. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Token:** Zwei Bedeutungen: (1) Ein digitaler Schlüssel, mit dem sich ein Programm anmeldet, also ein Secret. (2) Bei KI-Modellen ein Textstückchen, etwa ein kurzes Wort oder ein Wortteil, in dem Länge und Kosten gemessen werden. Abgerechnet werden Eingabe-Token (alles, was das Modell liest, auch der bisherige Verlauf) und teurere Ausgabe-Token, deshalb kosten lange Sitzungen mehr. Siehe: [Modul 08](08-sicherheit.md), [Modul 13](13-werkzeuge-und-kosten.md).

**Transaktion:** Mehrere Datenbankänderungen, die nur zusammen gelingen oder zusammen scheitern. So entsteht nie ein halber Zustand. Siehe: [Modul 05](05-datenmodell.md).

**Trivy:** Ein freier Scanner, der ermittelt, welche Komponenten in welchen Versionen in einer Software oder einem Container-Image stecken, diese mit CVE-Datenbanken abgleicht und auch SBOMs erzeugen kann. Ähnlich ist Grype. Siehe: [Modul 08](08-sicherheit.md), [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Typosquatting:** Ein Schadpaket mit einem Namen, der einem bekannten Paket zum Verwechseln ähnlich ist. Siehe: [Modul 08](08-sicherheit.md).

**Umgebung (lokal, Preview, Dev/Test, QA, Produktion):** Getrennte Installationen derselben Software mit eigenen Daten und Zugängen. In Entwicklungs- und Testumgebungen gibt es nur erfundene Daten, und KI-Agenten dürfen zugreifen; wo echte Daten sind, ist keine KI. Siehe: [Modul 11](11-umgebungen-und-zusammenarbeit.md).

**Unit-Test:** Ein Test, der einen kleinen Teil des Codes einzeln prüft, z. B. ob die Fälligkeit einer Prüfung richtig berechnet wird. Unit-Tests sind schnell und laufen bei jedem Pull Request. Siehe: [Modul 12](12-testen.md).

**Upstream:** Das Original-Projekt, von dem ein Fork abstammt oder dessen Paket man verwendet. Fehlerkorrekturen schickt man am besten "upstream", also an das Original, damit alle davon profitieren und der eigene Fork nicht veraltet. Siehe: [Modul 18](18-lizenzen-und-recht.md).

**Urheberrecht:** Das Recht der Person, die ein Werk geschaffen hat, z. B. Code oder Text, über dessen Nutzung zu bestimmen. Fremden Code darf man nur nutzen, wenn eine Lizenz es erlaubt. Rein KI-erzeugter Code ist nach überwiegender Auffassung nicht urheberrechtlich geschützt (bitte prüfen). Siehe: [Modul 18](18-lizenzen-und-recht.md).

**Verantwortlicher (DSGVO):** Die Stelle, die entscheidet, wofür und wie personenbezogene Daten verarbeitet werden, z. B. der Verein oder die Gemeinde, nicht der einzelne Mitwirkende und nicht der KI-Anbieter. Der Verantwortliche muss die Einhaltung der DSGVO sicherstellen und schließt z. B. den AVV ab. Siehe: [Modul 14](14-ki-und-datenschutz.md).

**Verschlüsselung:** Daten so umwandeln, dass nur lesen kann, wer den passenden Schlüssel hat. Wichtig bei der Übertragung (TLS) und bei gespeicherten Daten, z. B. Backups. Siehe: [Modul 08](08-sicherheit.md).

**Versionskontrolle:** Ein System, das jede Änderung an Dateien mit Autor, Zeit und Begründung speichert, sodass man jeden früheren Stand wiederherstellen kann. Das bekannteste ist Git. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Web-App:** Eine Anwendung, die im Browser läuft und nicht installiert werden muss, z. B. das Wachbuch. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Wiederherstellungstest (Backup-Test):** Ein Backup probeweise zurückspielen, um zu sehen, ob es vollständig ist und wie lange es dauert. Erst ein geübter Wiederherstellungstest zeigt, dass das Backup im Ernstfall hilft. Siehe: [Modul 16](16-vom-prototyp-zum-betrieb.md).

**Workflow:** Eine beschriebene Abfolge automatischer Schritte, bei GitHub z. B. eine Datei, die festlegt, welche Prüfungen bei einem Pull Request laufen. Siehe: [Modul 07](07-pull-request-und-review.md).

**YAML:** Ein Textformat für Konfigurationsdateien, das mit Einrückungen arbeitet. Viele CI-Workflows sind in YAML geschrieben. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Zertifikat:** Ein digitaler Ausweis eines Servers, der bei HTTPS beweist, dass man wirklich mit `wachbuch.example.org` spricht und nicht mit einem Betrüger. Zertifikate laufen ab und müssen erneuert werden. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).
