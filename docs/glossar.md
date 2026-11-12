# Glossar

Die wichtigsten Begriffe rund um Software, KI-Agenten, Review, Sicherheit und Wartung, alphabetisch und in einfachen Worten. Das Glossar ist auch als Wissensgrundlage für Assistenten gedacht: Wer eine Einsteigerfrage hat, kann es einem Assistenten (z. B. ChatGPT oder Claude) geben und sich Begriffe daraus erklären lassen. Die Verweise "Siehe" führen zum Modul, in dem der Begriff ausführlich vorkommt.

**Abhängigkeit (Dependency):** Ein fertiger Baustein von anderen Entwicklern, den die eigene Software verwendet, z. B. für Datumsberechnungen. Eine Anwendung hat oft hunderte davon, auch indirekte, und alle müssen regelmäßig aktualisiert werden. Siehe: [Modul 09](09-wartung-und-releases.md).

**Abnahmekriterium:** Eine prüfbare Bedingung, die erfüllt sein muss, damit eine Aufgabe als erledigt gilt. Gute Abnahmekriterien lassen sich mit Ja oder Nein beantworten. Siehe: [Modul 03](03-konzept-und-prompt.md).

**ADR (Architecture Decision Record):** Eine kurze schriftliche Notiz zu einer wichtigen technischen Entscheidung: Frage, Möglichkeiten, Entscheidung, Begründung. ADRs erklären später, warum etwas so gebaut wurde. Siehe: [Modul 10](10-standards.md).

**AGENTS.md:** Eine Datei im Repository mit den Regeln für Coding-Agenten. Viele Agenten, z. B. Claude Code und Codex, lesen sie automatisch. Siehe: [Modul 06](06-coding-agent.md), [Modul 10](10-standards.md).

**API (Schnittstelle):** Eine festgelegte Art, wie Programme miteinander sprechen. Die Oberfläche des Wachbuchs fragt z. B. über eine API beim Server die Liste der Fahrzeuge ab. Jede API-Anfrage muss auf dem Server auf Rechte geprüft werden. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Architekt (Softwarearchitekt):** Die Person, die den Aufbau einer Software verantwortet, Konzepte und Pull Requests prüft und entscheidet, was hineinkommt. Im Beispiel ist das Peter. Siehe: [Modul 01](01-rollen-und-ablauf.md).

**Assistent (Chat- oder Sprachassistent):** Ein KI-Programm, mit dem man schreibt oder spricht, z. B. ChatGPT oder Claude. Anders als ein Coding-Agent arbeitet er nicht selbst im Repository. Siehe: [Modul 02](02-ideen-per-sprache.md).

**Authentifizierung:** Die Prüfung, wer jemand ist, z. B. durch Benutzername und Passwort. Sie beantwortet die Frage "Wer bist du?". Siehe: [Modul 08](08-sicherheit.md).

**Autorisierung:** Die Prüfung, was jemand darf, nachdem klar ist, wer er ist. Sie beantwortet die Frage "Darfst du das?" und muss immer auf dem Server stattfinden. Siehe: [Modul 08](08-sicherheit.md).

**Backend:** Der Teil einer Anwendung, der auf dem Server läuft: Er speichert Daten, prüft Rechte und rechnet. Nutzer sehen ihn nicht direkt. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Backup (Sicherung):** Eine Kopie der Daten, mit der man sie nach einem Fehler oder Angriff wiederherstellen kann. Ein Backup ist nur etwas wert, wenn die Wiederherstellung ausprobiert wurde.

**Bibliothek:** Eine Sammlung fertiger Funktionen, die man in die eigene Software einbindet, z. B. zum Rechnen mit Datumsangaben. Bibliotheken werden meist als Pakete installiert. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Bitbucket:** Eine Plattform für Git-Repositories, ähnlich wie GitHub, vor allem in Firmen verbreitet. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Branch:** Ein Arbeitszweig im Repository. Änderungen entstehen in einem eigenen Branch, ohne den Hauptstand `main` zu stören. Siehe: [Modul 07](07-pull-request-und-review.md), [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Breaking Change:** Eine Änderung, nach der Bestehendes nicht mehr wie gewohnt funktioniert. Sie führt zu einer neuen MAJOR-Version. Siehe: [Modul 09](09-wartung-und-releases.md).

**Browser:** Das Programm, mit dem man Webseiten und Web-Apps öffnet, z. B. Firefox, Chrome, Safari oder Edge. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Changelog:** Eine Liste aller Änderungen je Version. Sie kann automatisch aus Commit-Nachrichten erzeugt werden. Siehe: [Modul 09](09-wartung-und-releases.md).

**CI/CD:** CI (Continuous Integration) heißt: Bei jedem Pull Request laufen automatisch Prüfungen wie Tests und Sicherheitsscans. CD (Continuous Delivery oder Deployment) heißt: Geprüfte Stände werden automatisch ausgeliefert, z. B. in die Testumgebung. Siehe: [Modul 07](07-pull-request-und-review.md).

**Client:** Das Programm, das bei einem Server etwas anfragt, z. B. der Browser oder eine App auf dem Handy. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Clone:** Eine vollständige Kopie eines Repositories auf den eigenen Rechner oder in eine Sandbox holen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Cloud-Sandbox:** Ein abgeschotteter Rechner beim Anbieter, auf dem ein Agent arbeitet, ohne den eigenen Rechner zu berühren. Für Einsteiger der einfachste Weg. Siehe: [Modul 06](06-coding-agent.md).

**Coding-Agent:** Ein KI-Werkzeug, das selbständig in einem Repository arbeitet: Dateien liest und ändert, Befehle ausführt und Pull Requests vorbereitet. Beispiele sind Claude Code und OpenAI Codex. Siehe: [Modul 06](06-coding-agent.md).

**Commit:** Ein gespeicherter Arbeitsschritt im Repository mit einer kurzen Nachricht, was geändert wurde. Siehe: [Modul 07](07-pull-request-und-review.md), [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Container:** Ein verpacktes Programm samt allem, was es zum Laufen braucht. Container laufen überall gleich, egal auf welchem Server. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Conventional Commits:** Ein festes Muster für Commit-Nachrichten, z. B. `feat: neue funktion` oder `fix: fehler behoben`. Daraus können Maschinen Versionen und Changelogs ableiten. Siehe: [Modul 09](09-wartung-und-releases.md).

**Cookie:** Eine kleine Datei, die eine Webseite im Browser speichert, z. B. um sich zu merken, dass man angemeldet ist. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Cross-Platform:** Eine App, die mit einem gemeinsamen Code auf mehreren Systemen läuft, z. B. iPhone und Android. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**CVE:** Eine weltweit eindeutige Nummer für eine bekannte Sicherheitslücke, z. B. CVE-2024-3094. Siehe: [Modul 09](09-wartung-und-releases.md).

**Datenbank:** Ein Programm, das Daten geordnet speichert und schnell wiederfindet. Das Wachbuch speichert dort Mitglieder, Fahrzeuge und Prüfungen. Siehe: [Modul 05](05-datenmodell.md), [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Datenmodell:** Die Beschreibung, welche Daten eine Software speichert und wie sie zusammenhängen. Fehler im Datenmodell sind später teuer zu korrigieren. Siehe: [Modul 05](05-datenmodell.md).

**Dependency:** Englisch für Abhängigkeit, siehe dort.

**Deployment:** Das Ausliefern einer Software-Version auf einen Server, z. B. in die Testumgebung oder in die Produktion. Siehe: [Modul 09](09-wartung-und-releases.md).

**Diff:** Die Gegenüberstellung von altem und neuem Stand. Im Pull Request zeigt der Diff, welche Zeilen hinzugekommen oder weggefallen sind. Siehe: [Modul 07](07-pull-request-und-review.md).

**DNS:** Das "Telefonbuch des Internets". Es übersetzt einen Namen wie `wachbuch.example.org` in die Adresse des Servers. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Docker:** Das bekannteste Werkzeug, um Container zu bauen und zu starten. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Domain:** Der Name einer Webseite, z. B. `example.org`. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Domänenexperte:** Eine Person, die ein Fachgebiet aus der Praxis sehr gut kennt, z. B. Karl als Feuerwehrmann. In dieser Schulung treibt sie die Entwicklung mit Hilfe von Agenten. Siehe: [Modul 00](00-warum.md), [Modul 01](01-rollen-und-ablauf.md).

**DSGVO:** Die Datenschutz-Grundverordnung der EU. Sie regelt, wie personenbezogene Daten verarbeitet werden dürfen, auch in Vereinen und Feuerwehren. Siehe: [Modul 08](08-sicherheit.md).

**Egress:** Verbindungen, die eine Anwendung nach außen ins Internet aufbaut. Aus Sicherheitsgründen werden sie so weit wie möglich beschränkt. Siehe: [Modul 08](08-sicherheit.md).

**End-to-End-Test:** Ein Test, der die Anwendung wie ein Nutzer bedient, z. B. im Browser anmelden, Formular ausfüllen, Ergebnis prüfen. Er ist langsamer als ein Unit-Test, prüft aber das Zusammenspiel aller Teile.

**Fork:** Eine eigene Kopie eines fremden Repositories auf der Plattform, z. B. auf GitHub. Aus einem Fork kann man Pull Requests an das Original stellen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Formatierung:** Das einheitliche Aussehen von Code: Einrückung, Leerzeichen, Zeilenlänge. Ein Formatierer macht das automatisch, damit Diffs nur echte Änderungen zeigen.

**Framework:** Ein Grundgerüst für eine Anwendung, das vieles vorgibt und erledigt, z. B. wie Seiten aufgebaut und Anfragen verarbeitet werden. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Fremdschlüssel:** Ein Verweis in einer Tabelle auf einen Eintrag in einer anderen Tabelle, z. B. von einer Prüfung auf das geprüfte Gerät. Die Datenbank stellt so sicher, dass der Verweis gültig ist. Siehe: [Modul 05](05-datenmodell.md).

**Frontend:** Der Teil einer Anwendung, den Nutzer sehen und bedienen, z. B. die Seiten im Browser. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Full-Stack:** Frontend und Backend zusammen. Eine Full-Stack-Anwendung oder ein Full-Stack-Entwickler deckt beides ab. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Git:** Das verbreitetste Werkzeug zur Versionskontrolle. Es speichert jede Änderung mit Autor, Zeit und Nachricht. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Gitea:** Eine schlanke Plattform für Git-Repositories, die man selbst betreiben kann. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**GitHub:** Die bekannteste Plattform für Git-Repositories, mit Issues, Pull Requests und automatischen Prüfungen (GitHub Actions). Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**GitLab:** Eine Plattform für Git-Repositories mit ähnlichen Funktionen wie GitHub, auch zum Selbstbetrieb. Pull Requests heißen dort Merge Requests. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Halluzination:** Wenn ein KI-Modell etwas Falsches erfindet und es überzeugend darstellt, z. B. ein Paket oder eine Funktion, die es nicht gibt. Deshalb wird alles geprüft. Siehe: [Modul 06](06-coding-agent.md).

**Hash:** Ein "Fingerabdruck" einer Information, der sich nicht zurückrechnen lässt. Gleiche Eingabe ergibt immer denselben Hash.

**HTTP:** Die Sprache, in der Browser und Server Webseiten austauschen. Ohne Verschlüsselung kann jeder auf dem Weg mitlesen. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**HTTPS:** HTTP mit Verschlüsselung durch TLS. Erkennbar am Schloss im Browser. Für jede Anwendung mit Anmeldung oder persönlichen Daten Pflicht. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**IDE (Entwicklungsumgebung):** Ein Programm zum Schreiben von Code mit vielen Hilfen, z. B. VS Code. Viele Coding-Agenten gibt es auch als Erweiterung für eine IDE. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Issue:** Ein Eintrag im Repository, der eine Aufgabe, einen Fehler oder einen Wunsch beschreibt. Jeder Pull Request sollte ein Issue lösen. Siehe: [Modul 03](03-konzept-und-prompt.md).

**JSON:** Ein einfaches Textformat für strukturierte Daten, z. B. `{"name": "HLF 20"}`. Viele APIs und Konfigurationsdateien nutzen es. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Kontextfenster:** Die Menge an Text, die ein KI-Modell auf einmal "im Kopf" haben kann. Lange Sitzungen können es überschreiten; dann vergisst der Agent frühere Anweisungen. Eine neue Sitzung mit klarem Auftrag hilft.

**Konflikt (Merge-Konflikt):** Entsteht, wenn zwei Branches dieselbe Stelle unterschiedlich geändert haben. Git kann dann nicht selbst entscheiden, ein Mensch oder Agent muss den Konflikt auflösen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Kubernetes:** Ein System, das viele Container auf mehreren Servern betreibt, neu startet und verteilt. Für kleine Anwendungen oft nicht nötig. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Label:** Eine farbige Markierung für Issues und Pull Requests, z. B. "bug", "security" oder "dokumentation". Labels helfen beim Sortieren.

**Lint:** Eine automatische Prüfung auf Stilfehler und typische Programmierfehler. Siehe: [Modul 07](07-pull-request-und-review.md).

**Lizenz:** Legt fest, wer eine Software oder einen Text wie nutzen, ändern und weitergeben darf. Bei fremdem Code und Paketen muss die Lizenz zum eigenen Projekt passen. Siehe: [Modul 04](04-marktrecherche.md).

**LLM (Large Language Model):** Ein großes Sprachmodell, die Technik hinter Assistenten und Coding-Agenten. Es erzeugt Text, indem es wahrscheinliche Fortsetzungen berechnet, und kann sich dabei irren.

**Lockfile:** Eine Datei, die festhält, welche Abhängigkeiten in genau welcher Version verwendet werden, auch die indirekten. Siehe: [Modul 09](09-wartung-und-releases.md).

**Log:** Eine Protokolldatei, in der eine Software notiert, was sie tut. Personenbezogene Daten und Secrets gehören nicht hinein. Siehe: [Modul 08](08-sicherheit.md).

**main:** Der Hauptbranch eines Repositories. Er enthält den geprüften Stand, niemand arbeitet direkt darauf. Siehe: [Modul 10](10-standards.md).

**Maintainer:** Die Person, die für eine Software verantwortlich ist, Pull Requests freigibt, Updates im Blick behält und Releases erstellt. Im Beispiel ist das Peter. Siehe: [Modul 09](09-wartung-und-releases.md).

**Markdown:** Ein einfaches Textformat mit wenigen Zeichen für Formatierung, z. B. `#` für Überschriften und `**` für Fettdruck. Diese Schulung ist in Markdown geschrieben. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Merge:** Das Übernehmen der Änderungen aus einem Branch in einen anderen, meist nach `main`, nachdem das Review abgeschlossen ist. Siehe: [Modul 07](07-pull-request-und-review.md).

**Migration:** Ein Schritt, der die Struktur der Datenbank ändert, z. B. ein neues Feld anlegt. Bereits ausgelieferte Migrationen werden nicht mehr geändert. Siehe: [Modul 05](05-datenmodell.md).

**Native App:** Eine App, die speziell für ein System gebaut ist, z. B. nur für iPhone oder nur für Android, und über den App-Store installiert wird. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**npm:** Das Paketverzeichnis und Werkzeug für JavaScript. Darüber werden Abhängigkeiten installiert. Siehe: [Modul 09](09-wartung-und-releases.md).

**Open Source:** Software, deren Quellcode öffentlich ist und unter einer Lizenz steht, die Nutzung und Änderung erlaubt. Siehe: [Modul 04](04-marktrecherche.md).

**Paket:** Ein veröffentlichter Software-Baustein, z. B. bei npm. Siehe Abhängigkeit.

**Passwort-Hash:** Passwörter werden nie im Klartext gespeichert, sondern nur als Hash mit einem dafür gemachten, absichtlich langsamen Verfahren. Bei der Anmeldung wird der Hash der Eingabe verglichen. Siehe: [Modul 08](08-sicherheit.md).

**Personenbezogene Daten:** Alle Angaben, die sich einer bestimmten Person zuordnen lassen, z. B. Name, Adresse, Geburtsdatum. Gesundheitsdaten sind besonders geschützt. Siehe: [Modul 08](08-sicherheit.md).

**Pipeline:** Die Abfolge automatischer Schritte in der CI/CD, z. B. erst prüfen, dann testen, dann bauen, dann ausliefern. Siehe: [Modul 07](07-pull-request-und-review.md).

**Produktion:** Die echte Installation einer Software mit echten Nutzern und echten Daten. Siehe Umgebung.

**Programmiersprache:** Eine Sprache, in der Code geschrieben wird, z. B. JavaScript, TypeScript, Python oder Go. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Prompt:** Der Text, mit dem man einem Assistenten oder Agenten sagt, was er tun soll. Siehe: [Modul 03](03-konzept-und-prompt.md).

**Prompt Injection:** Ein Angriff, bei dem versteckte Anweisungen in Texten (z. B. in einem Issue oder auf einer Webseite) einen Agenten dazu bringen, etwas Unerwünschtes zu tun. Siehe: [Modul 08](08-sicherheit.md).

**Pull:** Die neuesten Änderungen von der Plattform in die eigene Kopie holen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Pull Request (PR):** Die Bitte, die Änderungen eines Branches in `main` zu übernehmen. Hier finden Prüfungen und Review statt. Siehe: [Modul 07](07-pull-request-und-review.md).

**Push:** Eigene Commits von der lokalen Kopie auf die Plattform hochladen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**PWA (Progressive Web App):** Eine Web-App, die sich wie eine App auf dem Handy installieren lässt, ohne App-Store. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Rebase:** Die eigenen Commits auf einen neueren Stand von `main` umsetzen, damit der Branch wieder aktuell ist. Kann Konflikte auslösen. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Recht (Berechtigung):** Die Erlaubnis, etwas Bestimmtes zu tun, z. B. Untersuchungsfristen sehen. Rechte werden meist über Rollen vergeben. Siehe: [Modul 08](08-sicherheit.md).

**Release:** Eine feste, benannte Version der Software, die ausgeliefert wird, z. B. `v1.4.0`. Siehe: [Modul 09](09-wartung-und-releases.md).

**Renovate:** Ein Bot, der automatisch Pull Requests für neue Versionen von Abhängigkeiten öffnet. Siehe: [Modul 09](09-wartung-und-releases.md).

**Repository:** Die Ablage eines Projekts mit allem Code, der Doku und der kompletten Änderungsgeschichte. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**REST:** Ein verbreiteter Stil für APIs im Web: Jede Sache hat eine Adresse, z. B. `/fahrzeuge/7`, und man liest, legt an, ändert oder löscht sie mit festen Befehlen. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Review:** Die Prüfung eines Pull Requests durch Werkzeuge und Menschen, bevor er übernommen wird. Siehe: [Modul 07](07-pull-request-und-review.md).

**Rolle:** Eine Aufgabe mit festen Rechten und Pflichten. Im Projekt z. B. Architekt, in der Software z. B. "Wehrführung", die Untersuchungsfristen sehen darf. Siehe: [Modul 01](01-rollen-und-ablauf.md), [Modul 08](08-sicherheit.md).

**Rollback:** Das Zurückkehren zu einer früheren Version, wenn nach einem Release etwas schiefgeht. Bei Datenbankänderungen nicht immer einfach. Siehe: [Modul 09](09-wartung-und-releases.md).

**Sandbox:** Eine abgeschottete Umgebung, in der ein Programm oder Agent arbeitet, ohne dem Rest des Systems schaden zu können. Siehe Cloud-Sandbox.

**SAST:** Statische Analyse: Werkzeuge, die den Code nach unsicheren Mustern durchsuchen, ohne ihn auszuführen. Siehe: [Modul 08](08-sicherheit.md).

**Secret:** Ein Geheimnis wie Passwort, Schlüssel oder Token. Secrets gehören nie in Code, Prompts oder Screenshots. Siehe: [Modul 08](08-sicherheit.md).

**Security-Review:** Die Prüfung eines Pull Requests mit der Frage "Wie könnte man das missbrauchen?", z. B. durch Sabine. Pflicht bei allem, was Rechte, persönliche Daten oder Verbindungen nach außen betrifft. Siehe: [Modul 08](08-sicherheit.md).

**Semantic Versioning:** Ein Schema für Versionsnummern `MAJOR.MINOR.PATCH`. Die Nummer zeigt, wie groß und wie riskant eine Änderung ist. Siehe: [Modul 09](09-wartung-und-releases.md).

**semantic-release:** Ein Werkzeug, das aus Commit-Nachrichten automatisch die nächste Versionsnummer und das Changelog erzeugt. Siehe: [Modul 09](09-wartung-und-releases.md).

**Server:** Ein Rechner (oder Programm), der Anfragen von Clients beantwortet, z. B. Webseiten ausliefert und Daten speichert. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Session (Sitzung):** Die Zeit zwischen Anmelden und Abmelden. Der Server merkt sich, wer angemeldet ist, meist über ein Cookie. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**SQL:** Die Sprache, mit der man Datenbanken abfragt und ändert. Falsch zusammengebaute SQL-Abfragen ermöglichen Injection-Angriffe. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md), [Modul 08](08-sicherheit.md).

**Tabelle:** Ein Teil einer Datenbank mit Zeilen (Einträgen) und Spalten (Feldern), z. B. eine Tabelle "Fahrzeug". Siehe: [Modul 05](05-datenmodell.md).

**Tag:** Eine feste Markierung eines bestimmten Stands im Repository, meist für ein Release, z. B. `v1.4.0`. Siehe: [Modul 09](09-wartung-und-releases.md).

**Terminal (Kommandozeile):** Ein Fenster, in dem man dem Rechner Befehle als Text gibt statt mit der Maus. Für den Einstieg mit einem Cloud-Agenten nicht nötig. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Test:** Ein kleines Programm, das automatisch prüft, ob die Software in einem bestimmten Fall richtig reagiert. Siehe Unit-Test und End-to-End-Test.

**TLS:** Das Verfahren, das Verbindungen im Internet verschlüsselt, z. B. bei HTTPS. Es sorgt dafür, dass niemand unterwegs mitlesen oder Daten verändern kann. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).

**Token:** Zwei Bedeutungen: (1) Ein digitaler Schlüssel, mit dem sich ein Programm anmeldet, also ein Secret. (2) Bei KI-Modellen ein Textstückchen, in dem Länge und Kosten gemessen werden.

**Transaktion:** Mehrere Datenbankänderungen, die nur zusammen gelingen oder zusammen scheitern. So entsteht nie ein halber Zustand. Siehe: [Modul 05](05-datenmodell.md).

**Typosquatting:** Ein Schadpaket mit einem Namen, der einem bekannten Paket zum Verwechseln ähnlich ist. Siehe: [Modul 08](08-sicherheit.md).

**Umgebung (Dev, Test, Produktion):** Getrennte Installationen derselben Software. In Dev wird entwickelt, in Test mit erfundenen Daten ausprobiert, in Produktion mit echten Daten gearbeitet. Siehe: [Modul 07](07-pull-request-und-review.md), [Modul 09](09-wartung-und-releases.md).

**Unit-Test:** Ein Test, der einen kleinen Teil des Codes einzeln prüft, z. B. ob die Fälligkeit einer Prüfung richtig berechnet wird. Unit-Tests sind schnell und laufen bei jedem Pull Request.

**Verschlüsselung:** Daten so umwandeln, dass nur lesen kann, wer den passenden Schlüssel hat. Wichtig bei der Übertragung (TLS) und bei gespeicherten Daten, z. B. Backups. Siehe: [Modul 08](08-sicherheit.md).

**Versionskontrolle:** Ein System, das jede Änderung an Dateien mit Autor, Zeit und Begründung speichert, sodass man jeden früheren Stand wiederherstellen kann. Das bekannteste ist Git. Siehe: [grundlagen/versionskontrolle.md](grundlagen/versionskontrolle.md).

**Web-App:** Eine Anwendung, die im Browser läuft und nicht installiert werden muss, z. B. das Wachbuch. Siehe: [grundlagen/sprachen-und-plattformen.md](grundlagen/sprachen-und-plattformen.md).

**Workflow:** Eine beschriebene Abfolge automatischer Schritte, bei GitHub z. B. eine Datei, die festlegt, welche Prüfungen bei einem Pull Request laufen. Siehe: [Modul 07](07-pull-request-und-review.md).

**YAML:** Ein Textformat für Konfigurationsdateien, das mit Einrückungen arbeitet. Viele CI-Workflows sind in YAML geschrieben. Siehe: [grundlagen/werkzeuge.md](grundlagen/werkzeuge.md).

**Zertifikat:** Ein digitaler Ausweis eines Servers, der bei HTTPS beweist, dass man wirklich mit `wachbuch.example.org` spricht und nicht mit einem Betrüger. Zertifikate laufen ab und müssen erneuert werden. Siehe: [grundlagen/web-und-daten.md](grundlagen/web-und-daten.md).
