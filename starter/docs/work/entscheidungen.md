# Offene Entscheidungen

<!-- Alles, was auf eine Entscheidung wartet, mit Kontext und Optionen direkt auf dieser Seite. So sehen Domänenexperten, wo ihre Erfahrung gebraucht wird, ohne Issues durchsuchen zu müssen. Ist eine Frage entschieden, wird der Eintrag hier entfernt und die Entscheidung im Issue, im Scope oder als ADR festgehalten. -->

Hier stehen Fragen, die gerade auf eine Entscheidung warten. Wer aus der Praxis etwas dazu sagen kann, antwortet über das Formular "Antwort auf eine offene Frage" (siehe [Mitarbeit](../mitarbeit/index.md)). Die Antwort wird geprüft und dann eingetragen.

## Vorlage für einen Eintrag

<!-- Diesen Block für jede offene Frage kopieren. Neue Einträge oben. -->

### E-<Nummer>: <Frage in einem Satz>

- **Issue:** <#Nummer>
- **Wer entscheidet:** <z. B. Domänenexperte fachlich, Maintainer technisch, Leitung bei Prioritäten>
- **Bis wann:** <Datum oder "blockiert Issue #...">

**Kontext:** <Worum geht es, warum stellt sich die Frage jetzt?>

| Option | Was das bedeutet | Folgen |
| --- | --- | --- |
| A: <...> | <...> | <...> |
| B: <...> | <...> | <...> |
| C: Nichts ändern | <...> | <...> |

**Empfehlung:** <optional, mit Begründung>

## Offen

### E-1: Sollen abgelaufene Prüffristen auch per E-Mail gemeldet werden?

<!-- Beispiel-Eintrag, beim Ausfüllen ersetzen oder löschen. -->

- **Issue:** <#Nummer>
- **Wer entscheidet:** Domänenexperte fachlich, Maintainer technisch
- **Bis wann:** vor Version 1.1

**Kontext:** Heute sieht man fällige Prüfungen nur, wenn man die Software öffnet. Einige Gerätewarte schauen selten hinein.

| Option | Was das bedeutet | Folgen |
| --- | --- | --- |
| A: E-Mail an den Gerätewart | Wöchentliche Liste der fälligen Prüfungen | Braucht E-Mail-Versand, ADR für den externen Dienst |
| B: Hinweis auf der Startseite | Rotes Feld nach der Anmeldung | Kein neuer Dienst, hilft aber nur, wer sich anmeldet |
| C: Nichts ändern | Bleibt wie heute | Fristen werden weiter übersehen |
