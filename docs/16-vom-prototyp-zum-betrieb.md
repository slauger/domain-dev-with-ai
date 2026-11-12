# Modul 16: Vom Prototyp zum Betrieb

Mit einem KI-Agenten baut man heute in einer Stunde einen kleinen Prototyp, ein MVP oder einen Proof of Concept (die Begriffe erklärt [Modul 15](15-projekt-lebenszyklus.md#phase-1-idee-und-prototyp)). Das ist großartig, um Ideen zu zeigen und schnell zu lernen. Aber ein Prototyp ist kein produktiver Betrieb. In diesem Modul lernst du, was zwischen "läuft auf meinem Laptop" und "die ganze Wehr arbeitet täglich damit" liegt, warum Software einen Lebenszyklus hat und welche Begriffe wie CVE, SBOM und Cyber Resilience Act dabei wichtig sind.

Wie in [Modul 00](00-warum.md) beschrieben: Betrieb, Pipelines und Überwachung sind Aufgaben der IT-Experten. Als Domänenexperte musst du das nicht selbst einrichten. Du solltest aber verstehen, warum es nötig ist, damit du deinen Prototyp nicht "mal eben" für alle freigibst.

## Das Beispiel

Karl, Atemschutzgerätewart der Feuerwehr Musterstadt, hat an einem Abend mit seinem Agenten eine kleine Übersicht der Prüftermine gebaut. Sie läuft auf seinem Laptop, mit erfundenen Daten. Beim nächsten Dienstabend zeigt er sie, und alle sind begeistert. Der Kommandant fragt: "Können wir das ab Montag alle nutzen?" Peter, der externe Softwarearchitekt, antwortet: "Die Idee ja. Diesen Stand nein." Dieses Modul erklärt, warum.

## Prototyp vs. produktiver Betrieb

| Thema | Prototyp | Produktiver Betrieb |
| --- | --- | --- |
| Daten | erfunden, dürfen verloren gehen | echte Mitglieder- und Gesundheitsdaten, dürfen nie verloren gehen oder nach außen gelangen |
| Benutzer | einer (Karl) | alle Mitglieder, mit unterschiedlichen Rechten |
| Sicherheit | egal, solange nur erfundene Daten drin sind | Anmeldung, Rechteprüfung auf dem Server, TLS, Security-Review ([Modul 08](08-sicherheit.md)) |
| Verfügbarkeit | läuft, wenn Karls Laptop an ist | läuft rund um die Uhr, auch nachts im Einsatz |
| Backups | keine | automatisch, an einem anderen Ort, Wiederherstellung geübt |
| Updates | keine | täglich, automatisch ([Modul 09](09-wartung-und-releases.md)) |
| Überwachung (Monitoring) | Karl merkt es, wenn es nicht geht | Ein System merkt es und alarmiert die Verantwortlichen |
| Verantwortung | Karl, nur für sich | benannte Personen mit Vertretung, Verein als Betreiber |
| Kosten | ein paar Euro für KI-Tokens | Hosting, Domain, Werkzeuge, Zeit für Wartung, jeden Monat ([Modul 13](13-werkzeuge-und-kosten.md)) |

Merksatz: **Der Prototyp zeigt die Idee. Der Betrieb trägt die Verantwortung.** Wie aus dem Prototyp eine saubere Basis wird, beschreibt [Modul 15](15-projekt-lebenszyklus.md#warum-der-prototyp-meist-nicht-die-basis-wird).

## Wo Produktion läuft

Nicht auf dem PC unter dem Schreibtisch im Gerätehaus und nicht auf einem Laptop. Diese Geräte werden ausgeschaltet, mitgenommen, gestohlen, von mehreren Leuten benutzt und selten aktualisiert. Ein Server, der aus dem Internet erreichbar ist, braucht einen geeigneten Ort:

- **Managed Hosting:** Ein Anbieter betreibt Server und Datenbank, das Projekt kümmert sich nur um die Anwendung. Am wenigsten Arbeit, aber laufende Kosten.
- **Cloud:** Mietserver oder Plattformdienste bei einem Cloud-Anbieter. Flexibel, aber man muss viel selbst richtig einstellen.
- **Eigener Server des Vereins oder der Gemeinde:** nur, wenn es eine verantwortliche Person gibt, die ihn dauerhaft pflegt, sichert und überwacht.

Bei jeder Variante gehören dazu: eine eigene **Domain** (z. B. `wachbuch.example.org`), **HTTPS mit TLS-Zertifikat**, das sich automatisch erneuert (Grundlagen in [Web und Daten](grundlagen/web-und-daten.md#https-tls-und-zertifikate)), ein Serverstandort, der zum Datenschutz passt ([Modul 14](14-ki-und-datenschutz.md)), und eine klare Liste, **wer Admin-Zugang** hat. Admin-Zugänge bekommen nur wenige, immer mit Zwei-Faktor-Anmeldung, und sie werden entzogen, wenn jemand die Rolle abgibt. KI-Agenten haben in Produktion keinen Zugang ([Modul 11](11-umgebungen-und-zusammenarbeit.md#produktion-prod)).

## Grundlagen des Betriebs

### Backups

Was ein Backup ist, steht in [Web und Daten](grundlagen/web-und-daten.md#backups). Für den Betrieb gilt die **3-2-1-Regel**: mindestens **3** Kopien der Daten, auf **2** verschiedenen Speichern, davon **1** an einem anderen Ort (Empfehlung des BSI in den [Vorschlägen zu BC-Strategien zum BSI-Standard 200-4](https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Grundschutz/Hilfsmittel/Standard200_4_BCM/Standard_200-4_Vorschlaege_zu_BC_Strategien.pdf?__blob=publicationFile&v=5), Stand: 2026-11-12). Mindestens eine Kopie sollte so liegen, dass ein Angreifer mit Zugriff auf den Server sie nicht löschen kann. Und das Wichtigste: **Wiederherstellung regelmäßig üben.** Wie bei der Atemschutzübung: Ob es klappt, weiß man erst, wenn man es gemacht hat.

### Monitoring und Alarmierung

**Monitoring** heißt: Ein System schaut ständig nach, ob alles in Ordnung ist, und schlägt Alarm, bevor die Nutzer es merken. Typische Fragen:

- Ist die Anwendung erreichbar?
- Gibt es auffällig viele Fehler?
- Ist die Festplatte bald voll?
- Läuft ein TLS-Zertifikat bald ab?
- Ist das letzte Backup gelaufen?

Ein Alarm geht an eine Person, die ihn auch bearbeiten kann, nicht an ein Postfach, das niemand liest.

### Logging

**Logs** sind Protokolle, in denen die Software notiert, was passiert. Sie helfen bei der Fehlersuche und nach einem Angriff. Aber: möglichst ohne personenbezogene Daten, mit begrenzter Aufbewahrung und nur für wenige lesbar ([Modul 08](08-sicherheit.md#personenbezogene-daten-im-log)).

### Benutzer und Zugänge

Wer bekommt ein Konto, wer vergibt Rollen, was passiert, wenn jemand die Wehr verlässt? Das muss als Ablauf festgelegt sein, nicht nach Gefühl. Konten von Ausgeschiedenen werden zeitnah gesperrt.

### Störungen und Sicherheitsvorfälle

Eine **Störung** (Incident) ist alles, was den Betrieb beeinträchtigt: Ausfall, Datenfehler, Angriff. Vorher aufschreiben: Wer wird informiert, wer entscheidet, wie wird die Wehr benachrichtigt, wann wird der Datenschutzbeauftragte eingebunden (Meldefrist nach DSGVO, siehe [Modul 08](08-sicherheit.md#die-dsgvo-in-kurzform))? Und was macht die Wehr, solange die Software nicht geht? Ein Papier-Ersatz für wichtige Abläufe gehört dazu.

### Betriebsdokumentation

Ein kurzes **Betriebshandbuch** (englisch Runbook): Wo läuft was, wie startet man neu, wie spielt man ein Backup zurück, wer hat welche Zugänge, wen ruft man an. So kann auch eine Vertretung handeln, wenn der Maintainer im Urlaub ist.

### Kosten

Hosting, Domain, Backup-Speicher, Monitoring, Werkzeuge und vor allem Arbeitszeit fallen jeden Monat an, nicht einmalig. Ehrlich rechnen hilft [Ein Projekt vorbereiten](neues-projekt.md#was-kostet-das-wirklich).

## Software hat einen Lebenszyklus

Software ist nie "einmal installieren und vergessen". Jede Schicht bekommt laufend Sicherheitskorrekturen:

- das **Betriebssystem** des Servers,
- das **Container-Basis-Image** (das vorgefertigte Mini-Betriebssystem, in dem die Anwendung läuft),
- die **Laufzeitumgebung** (z. B. Node.js, PHP, Python),
- die **Bibliotheken** (Abhängigkeiten, siehe [Modul 09](09-wartung-und-releases.md#was-sind-abhängigkeiten)),
- die **eigene Anwendung**.

Neue Lücken werden jeden Tag veröffentlicht: Nach unabhängigen Zählungen waren es 2025 rund 48.000 CVE-Einträge, also weit über hundert pro Tag ([Quelle](https://www.thestack.technology/cves-in-2025-analysis/), Stand: 2026-11-12, genaue Zahl bitte prüfen). Angreifer scannen das Internet oft schon Stunden nach der Veröffentlichung automatisch ab. Für Systeme, die aus dem Internet erreichbar sind, heißt das: **Updates täglich, bei kritischen Lücken auch mehrmals am Tag.**

Das schafft niemand von Hand. Darum muss es **vollständig automatisiert** sein:

- **Betriebssystem:** automatische Sicherheitsupdates, bzw. Container-Images werden regelmäßig neu gebaut, damit sie das aktuelle Basis-Image enthalten.
- **Abhängigkeiten:** Renovate öffnet Update-Pull-Requests ([Modul 09](09-wartung-und-releases.md#renovate-der-update-bot)).
- **Auslieferung:** Nach grünen Tests wird automatisch ausgeliefert ([Modul 11](11-umgebungen-und-zusammenarbeit.md#cicd-grob-erklärt)), ohne dass jemand Dateien kopieren muss.

Warum so streng? Eine Woche Urlaub ohne Updates kann reichen, um gehackt zu werden. Dazu gehört auch die Frage: **Wer ist erreichbar**, wenn eine kritische Lücke am Freitagabend bekannt wird? Eine Bereitschaft, und sei es nur "Peter oder seine Vertretung schauen innerhalb eines Tages drauf", muss festgelegt sein.

Und wenn sich niemand mehr kümmert? Dann wird die Software **abgeschaltet**, nachdem die Daten exportiert wurden. Eine ungepflegte Anwendung mit Gesundheitsdaten im Internet ist schlimmer als gar keine ([Modul 15, Phase 6](15-projekt-lebenszyklus.md#phase-6-betrieb-und-wartung)).

## CVE, CVSS, EPSS und KEV

Diese Abkürzungen tauchen in Update-Pull-Requests und Scanner-Berichten auf:

- **CVE** (Common Vulnerabilities and Exposures): eine eindeutige Nummer für eine bekannte Sicherheitslücke, z. B. CVE-2024-3094. So reden alle über dieselbe Lücke ([cve.org](https://www.cve.org/About/Overview), Stand: 2026-11-12).
- **CVSS** (Common Vulnerability Scoring System): eine Punktzahl von 0 bis 10 für die Schwere einer Lücke. Ab 9,0 gilt sie als kritisch ([FIRST: CVSS](https://www.first.org/cvss/), Stand: 2026-11-12).
- **EPSS** (Exploit Prediction Scoring System): schätzt, wie wahrscheinlich eine Lücke in den nächsten 30 Tagen tatsächlich ausgenutzt wird ([FIRST: EPSS](https://www.first.org/epss/), Stand: 2026-11-12).
- **KEV** (Known Exploited Vulnerabilities): ein Katalog der US-Behörde CISA mit Lücken, die nachweislich bereits angegriffen werden ([CISA KEV](https://www.cisa.gov/known-exploited-vulnerabilities-catalog), Stand: 2026-11-12). Steht eine Lücke dort, ist höchste Eile geboten.

**Scanner** wie Trivy oder Grype ([Modul 08](08-sicherheit.md#automatische-werkzeuge)) ermitteln, welche Komponenten in welchen Versionen in der Software stecken, und gleichen diese Liste mit CVE-Datenbanken ab. Das Ergebnis: "Paket X in Version 1.2 hat CVE-..., behoben in 1.3."

## SBOM: die Zutatenliste der Software

Eine **SBOM** (Software Bill of Materials) ist eine Liste aller Komponenten einer Software mit Versionen, wie die Zutatenliste auf einer Lebensmittelverpackung. Sie ist maschinenlesbar, damit Programme sie auswerten können. Die zwei verbreiteten Formate sind **CycloneDX** ([cyclonedx.org](https://cyclonedx.org/)) und **SPDX** ([spdx.dev](https://spdx.dev/)), beide Stand: 2026-11-12. Das BSI beschreibt Anforderungen an SBOMs in der Technischen Richtlinie TR-03183 Teil 2 ([BSI TR-03183](https://www.bsi.bund.de/dok/TR-03183-en), Stand: 2026-11-12).

So setzt man SBOMs sinnvoll ein:

1. **Für eigene Software:** Die Pipeline erzeugt bei jedem Build automatisch eine SBOM und legt sie zum Release.
2. **Für gekaufte Software:** Beim Hersteller eine SBOM anfordern, am besten schon bei der Auswahl ([Modul 04](04-marktrecherche.md)).
3. **Automatisch abgleichen:** Die SBOMs aller Systeme liegen in einem Werkzeug, das sie laufend mit neuen CVEs vergleicht, z. B. OWASP Dependency-Track ([dependencytrack.org](https://dependencytrack.org/)), Trivy ([trivy.dev](https://trivy.dev/)) oder Grype ([GitHub](https://github.com/anchore/grype)), alle Stand: 2026-11-12.

Der Unterschied im Alltag: In den Nachrichten steht "Schwere Lücke in PHP entdeckt". Ohne SBOM fragt man herum, wer was installiert hat, und hofft. Mit SBOM und Abgleich ist die Frage "Sind wir betroffen, und wo?" in Minuten beantwortet, oft hat das Werkzeug schon von selbst Alarm geschlagen.

## Sicherheit der Lieferkette (Supply Chain)

Angreifer müssen nicht die eigene Anwendung knacken. Oft ist es einfacher, eine Abhängigkeit oder die Build-Pipeline zu manipulieren. Die bekannten Vorfälle stehen in [Modul 09](09-wartung-und-releases.md#bekannte-vorfälle). Gegenmaßnahmen, die der IT-Experte einrichtet:

- **Versionen festnageln (Pinning):** Lockfiles und feste Versionen bzw. Prüfsummen für Container-Images und Pipeline-Bausteine, damit nicht unbemerkt etwas anderes eingebaut wird. Renovate aktualisiert die festen Versionen kontrolliert.
- **Neue Abhängigkeiten prüfen:** Jede neue Abhängigkeit wird begründet und im Review geprüft ([Modul 08](08-sicherheit.md#unbekannte-pakete-und-typosquatting)).
- **Signieren:** Container-Images und andere Build-Ergebnisse werden digital signiert, z. B. mit cosign aus dem Sigstore-Projekt ([docs.sigstore.dev](https://docs.sigstore.dev/), Stand: 2026-11-12). Der Server startet nur, was korrekt signiert ist.
- **Herkunftsnachweis (Provenance):** Ein Nachweis, aus welchem Code und mit welcher Pipeline ein Artefakt gebaut wurde. Das Rahmenwerk **SLSA** beschreibt dafür Stufen ([slsa.dev](https://slsa.dev/), Stand: 2026-11-12).
- **Pipeline schützen:** Änderungen an der Pipeline werden besonders genau gelesen ([Modul 11](11-umgebungen-und-zusammenarbeit.md#cicd-grob-erklärt)), Secrets der Pipeline sind knapp bemessen.

## Der EU Cyber Resilience Act

Der **Cyber Resilience Act** (CRA, Verordnung (EU) 2024/2847) ist ein EU-Gesetz zur Cybersicherheit von "Produkten mit digitalen Elementen", also Hardware und Software, die auf dem EU-Markt bereitgestellt werden. Dieses Kapitel ist eine vereinfachte Übersicht und **keine Rechtsberatung**. Quellen: [Gesetzestext auf EUR-Lex](https://eur-lex.europa.eu/eli/reg/2024/2847/oj/eng), [Übersicht der EU-Kommission](https://digital-strategy.ec.europa.eu/en/policies/cyber-resilience-act), [CRA und Open Source](https://digital-strategy.ec.europa.eu/en/policies/cra-open-source), alle Stand: 2026-11-12.

Was Hersteller unter anderem tun müssen:

- Sicherheitslücken über die gesamte Unterstützungszeit behandeln und Sicherheitsupdates bereitstellen.
- Komponenten und Schwachstellen dokumentieren, **unter anderem durch eine SBOM** in einem gängigen, maschinenlesbaren Format, mindestens mit den direkten Abhängigkeiten (Anhang I Teil II Nr. 1). Die SBOM gehört zur technischen Dokumentation und ist Behörden auf begründete Anfrage vorzulegen (Anhang VII).
- **Meldepflichten** bei aktiv ausgenutzten Lücken und schweren Sicherheitsvorfällen (Art. 14): Frühwarnung innerhalb von 24 Stunden, Meldung innerhalb von 72 Stunden, Abschlussbericht später.

Wichtige Daten (Art. 71):

| Datum | Was gilt |
| --- | --- |
| 10.12.2024 | CRA in Kraft getreten |
| 11.06.2026 | Regeln zu Konformitätsbewertungsstellen (Kapitel IV) gelten |
| 11.09.2026 | Meldepflichten nach Art. 14 gelten |
| 11.12.2027 | alle übrigen Pflichten gelten |

**Und die eigene Open-Source-Software des Vereins?** Nach den Erwägungsgründen 18 bis 20 gilt freie Software, die nicht im Rahmen einer Geschäftstätigkeit bereitgestellt (also nicht zu Geld gemacht) wird, nicht als "auf dem Markt bereitgestellt". Das bloße Veröffentlichen auf einer Plattform wie GitHub reicht dafür nicht. Ein gemeinsam gepflegtes, nicht kommerzielles Projekt wie das Wachbuch fällt daher **voraussichtlich nicht** unter die Herstellerpflichten. Für Organisationen, die Open-Source-Software für kommerzielle Nutzung dauerhaft unterstützen, gibt es die Rolle des **Open-Source-Software-Stewards** mit leichteren Pflichten (Art. 24: dokumentierte Sicherheitsrichtlinie, Zusammenarbeit mit Behörden, teilweise Meldepflichten). Wie ein konkretes Projekt einzuordnen ist, etwa wenn es Spenden, Supportverträge oder bezahlte Installationen gibt, **bitte prüfen** und im Zweifel rechtlich beraten lassen.

Unabhängig davon hilft der CRA beim **Einkauf**: Kauft die Wehr Software, kann sie auf SBOM, Unterstützungszeitraum und Update-Zusagen bestehen, weil Hersteller diese ohnehin erstellen müssen.

## Wer macht was?

**Aufgaben der IT-Experten** (im Beispiel Peter, bei Sicherheitsfragen Sabine): Hosting auswählen und einrichten, Pipelines mit automatischen Updates, SBOM, Scans und Signaturen, Monitoring, Backups mit Wiederherstellungstests, Betriebshandbuch, Bereitschaft und Vertretung.

**Was Domänenexperten wie Karl verstehen müssen:**

- Update-Pull-Requests sind Pflege, kein Rauschen. Sie haben Vorrang vor neuen Funktionen.
- Wartungsfenster sind nötig. Wenn das Wachbuch am Dienstagabend für eine halbe Stunde nicht erreichbar ist, ist das geplant und richtig.
- Betrieb kostet Geld und Zeit, jeden Monat. Das gehört in die Planung mit dem Kommandanten.
- **Den eigenen Prototyp nie allein in Produktion betreiben.** Kein Laptop im Gerätehaus, kein frei erreichbarer Link für die Kameraden, keine echten Daten.

Der **Kommandant** entscheidet, ob die Wehr den Betrieb übernimmt, und sorgt dafür, dass Budget und Verantwortliche mit Namen feststehen.

## Checkliste: Bereit für den produktiven Betrieb

- [ ] Betreiber, Maintainer und Vertretung stehen mit Namen fest, der Kommandant hat zugestimmt.
- [ ] Die Software läuft auf geeignetem Hosting, nicht auf einem PC oder Laptop.
- [ ] Domain, HTTPS mit automatisch erneuertem Zertifikat und Serverstandort sind geklärt.
- [ ] Admin-Zugänge sind auf wenige Personen beschränkt, mit Zwei-Faktor-Anmeldung, und dokumentiert.
- [ ] Backups laufen automatisch nach der 3-2-1-Regel, eine Wiederherstellung wurde geübt.
- [ ] Monitoring prüft Erreichbarkeit, Fehler, Speicherplatz, Zertifikate und Backups, Alarme erreichen eine zuständige Person.
- [ ] Logs enthalten möglichst keine personenbezogenen Daten und werden nach festgelegter Zeit gelöscht.
- [ ] Ablauf für neue und ausscheidende Benutzer ist festgelegt.
- [ ] Betriebssystem, Container-Images und Abhängigkeiten werden automatisch aktualisiert, Auslieferung nach grünen Tests ist automatisiert.
- [ ] Die Pipeline erzeugt eine SBOM, die laufend mit neuen CVEs abgeglichen wird.
- [ ] Versionen sind festgenagelt, Build-Ergebnisse sind signiert.
- [ ] Es gibt eine Bereitschaft für kritische Lücken, auch in Urlaubszeiten.
- [ ] Ein Plan für Störungen und Sicherheitsvorfälle inklusive Papier-Ersatz liegt vor.
- [ ] Ein Betriebshandbuch beschreibt Neustart, Wiederherstellung und Zugänge.
- [ ] Die laufenden Kosten sind bekannt und für mindestens ein Jahr gedeckt.
- [ ] Es ist festgelegt, wann die Software abgeschaltet wird, wenn niemand mehr wartet, und wie die Daten dann exportiert werden.

## Zusammenfassung

- Ein Prototyp ist schnell gebaut und zeigt die Idee. Produktiver Betrieb ist etwas ganz anderes.
- Produktion gehört auf geeignetes Hosting mit TLS, Backups, Monitoring und wenigen Admins.
- Software hat einen Lebenszyklus: Updates täglich und automatisch, sonst wird sie angreifbar. Ohne Wartung wird abgeschaltet.
- CVE benennt eine Lücke, CVSS bewertet die Schwere, EPSS und KEV zeigen, ob sie wirklich angegriffen wird.
- Eine SBOM ist die Zutatenliste der Software. Automatisch abgeglichen beantwortet sie "Sind wir betroffen?" in Minuten.
- Der Cyber Resilience Act verlangt von Herstellern unter anderem Schwachstellenbehandlung und SBOM, hilft Käufern und betrifft nicht kommerzielle Vereinssoftware voraussichtlich nicht direkt (bitte prüfen).
- Betrieb ist Aufgabe der IT-Experten. Domänenexperten verstehen, warum er nötig ist, und betreiben ihren Prototyp nie allein.
