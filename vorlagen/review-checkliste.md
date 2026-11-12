# Review-Checkliste

<!-- Vorlage zu Modul 07 und 08. Für Architekten und Security-Verantwortliche beim Review eines Pull Requests. Mitwirkende können sie vor dem Einreichen selbst durchgehen. Projektspezifische Punkte (Prüfskripte, ADRs, Ordner) ergänzen. -->

## Fachlich

- [ ] Löst der Pull Request das verlinkte Issue, und nur dieses?
- [ ] Ist es das richtige Problem, und ist das Verhalten fachlich richtig?
- [ ] Passen Begriffe und Texte zur restlichen Anwendung?
- [ ] Sind die Abnahmekriterien erfüllt und mit Tests abgedeckt?

## Datenmodell

- [ ] Ist jede Information nur an einer Stelle gespeichert (eine Quelle der Wahrheit)?
- [ ] Werden berechenbare Werte berechnet statt doppelt gespeichert?
- [ ] Werden Verweise auf andere Daten als Fremdschlüssel gespeichert, nicht als freier Text?
- [ ] Bleibt die Geschichte erhalten, wo sie gebraucht wird (z. B. Prüfnachweise)?
- [ ] Gibt es eine neue Migration statt einer Änderung an bereits ausgelieferten Migrationen?
- [ ] Werden zusammengehörige Änderungen in einer Transaktion gespeichert?
- [ ] Werden Regeln wie Eindeutigkeit in der Datenbank abgesichert?

## Rechte

- [ ] Prüft jede neue oder geänderte Schnittstelle Anmeldung und Recht auf dem Server?
- [ ] Werden Rechte nie nur in der Oberfläche geprüft?
- [ ] Kann sich niemand selbst oder anderen mehr Rechte geben, als er hat?
- [ ] Sind die Rechte so knapp wie möglich?

## Datenschutz

- [ ] Keine echten personenbezogenen Daten in Code, Tests, Migrationen, Screenshots oder Beschreibung?
- [ ] Werden nur die Daten gespeichert und angezeigt, die für den Zweck nötig sind?
- [ ] Sind Gesundheitsdaten getrennt und nur für Berechtigte sichtbar?
- [ ] Keine personenbezogenen Daten in Logs oder Fehlermeldungen?

## Sicherheit

- [ ] Werden alle Eingaben auf dem Server geprüft?
- [ ] Werden Datenbankabfragen und HTML mit den sicheren Mitteln des Frameworks gebaut?
- [ ] Keine Passwörter, Schlüssel oder Tokens im Code oder in der Geschichte des Branches?
- [ ] Sichere Voreinstellungen, keine Testzugänge, keine Debug-Ausgaben in Produktion?
- [ ] Keine neue Verbindung nach außen (Egress), kein neuer externer Dienst ohne ADR?
- [ ] Neue Abhängigkeiten: begründet, bekannt, gepflegt, Paketname genau geprüft?
- [ ] Automatische Sicherheitsprüfungen grün, Funde bewertet?

## Architektur und Code

- [ ] Geht es einfacher, mit weniger Code?
- [ ] Braucht es einen ADR?
- [ ] Sind Dateien klein und fachlich getrennt?
- [ ] Keine abgeschwächten Prüfungen, gelöschten Tests oder unterdrückten Warnungen?
- [ ] Änderungen an CI, AGENTS.md oder Anweisungen für KI-Reviewer begründet und in eigenem Pull Request?

## Pull Request

- [ ] Vorlage ausgefüllt, Issue verlinkt?
- [ ] Titel im Stil der Conventional Commits?
- [ ] Kann der Einreichende erklären, was sich ändert und warum?
- [ ] Alle Kommentare (auch vom KI-Review) beantwortet?
- [ ] CI grün?

## Nach dem Merge

- [ ] Änderung in der Testumgebung fachlich ausprobiert?
- [ ] Neue Issues für gefundene Folgeaufgaben angelegt?
