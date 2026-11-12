# Anweisungen für das automatische Review

<!-- Diese Datei liest GitHub Copilot beim Review und beim Coding (Quelle: https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions, Stand: 2026-11-12). An das Projekt anpassen oder löschen, wenn kein automatisches Review genutzt wird. -->

[PROJEKT] ist <ein Satz: was die Software tut und für wen>. Verbindlich für alle Änderungen ist `AGENTS.md` im Wurzelverzeichnis; lies sie zuerst. Der Arbeitsablauf steht in `docs/mitarbeit/`, Entscheidungen in `docs/adr/`.

Viele Mitwirkende sind Fachleute ohne IT-Hintergrund, die mit Coding-Agenten arbeiten. Schreibe Review-Kommentare deshalb auf Deutsch, kurz und verständlich: Was ist das Problem, warum ist es eins, wie behebt man es. Konzentriere dich auf echte Fehler und Regelverstöße, nicht auf Geschmacksfragen.

## Review-Schwerpunkte (in dieser Reihenfolge)

1. **Rechte auf dem Server.** Jede neue oder geänderte Schnittstelle prüft Anmeldung und Recht auf dem Server. Eine Prüfung nur in der Oberfläche reicht nicht.
2. **Keine echten Daten, keine Geheimnisse.** Keine echten Namen, Adressen, Telefonnummern, Gesundheitsangaben, Passwörter oder Schlüssel, auch nicht in Tests, Beispielen oder Screenshots. Keine personenbezogenen Daten in Logs.
3. **Datenmodell.** Änderungen am Datenmodell brauchen eine Migration und einen ADR. Ausgelieferte Migrationen werden nie geändert.
4. **Kein neuer Egress.** Keine neuen externen Dienste, CDNs, Tracker oder Telemetrie ohne ADR.
5. **Tests.** Neue Funktionen brauchen Tests. Weise darauf hin, wenn Tests gelöscht, übersprungen oder Prüfungen abgeschwächt werden.
6. **Entscheidungen.** Änderungen an Struktur, Datenmodell, Sicherheit, Betrieb oder Abhängigkeiten brauchen einen ADR in `docs/adr/` im selben Pull Request. Neue Abhängigkeiten müssen begründet sein.
7. **Umfang.** Ein Pull Request, ein Thema. Weise auf Änderungen hin, die nichts mit dem verlinkten Issue zu tun haben.
8. **Dokumentation.** Ändert sich Verhalten oder Betrieb, muss `docs/` im selben Pull Request angepasst sein.
9. **Anweisungsdateien.** Änderungen an `AGENTS.md`, dieser Datei oder `.github/workflows/` immer ausdrücklich erwähnen.

## Hinweise zum Projekt

<!-- Stack, wichtige Ordner und Projektregeln aus den ADRs eintragen. -->

- Stack: <laut ADR>
- Commits im Stil von Conventional Commits.
