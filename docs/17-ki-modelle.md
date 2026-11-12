# Modul 17: KI-Modelle: welches wofür

Nicht jede Aufgabe braucht das teuerste KI-Modell, und nicht jedes Modell taugt für jede Aufgabe. In diesem Modul lernst du, was ein KI-Modell ist, wie es sich von der App unterscheidet, wann sich "Nachdenken" lohnt und welches Modell du für welche Aufgabe nimmst.

**Stand: 2026-11-12.** Die Anbieter bringen alle paar Monate neue Modelle heraus und benennen sie um. Alle Modellnamen hier sind Momentaufnahmen. Vor einer Entscheidung die verlinkten Seiten der Anbieter prüfen. Unsichere Punkte sind mit **bitte prüfen** markiert. Kosten und Tarife stehen in [Modul 13](13-werkzeuge-und-kosten.md), Datenschutz in [Modul 14](14-ki-und-datenschutz.md).

## Was ist ein KI-Modell?

Ein **LLM** (Large Language Model, großes Sprachmodell) ist ein Programm, das mit riesigen Mengen Text trainiert wurde. Es bekommt einen Text (deine Frage, den Code, die Projektregeln) und berechnet daraus Stück für Stück die wahrscheinlichste Fortsetzung. Das klingt einfach, reicht aber für Gespräche, Konzepte und Code erstaunlich weit. Ein Modell "weiß" nichts im menschlichen Sinn und kann sich mit großer Überzeugung irren ([Glossar: Halluzination](glossar.md)). Sein Wissen endet an einem Stichtag (Wissensstand), danach kennt es nur, was man ihm mitgibt.

## Modell und App sind zwei verschiedene Dinge

ChatGPT, Claude, Codex, Claude Code oder Gemini sind **Apps und Werkzeuge**: die Oberfläche, in der du schreibst oder sprichst, mit Verlauf, Dateien und Knöpfen. Darunter läuft ein **Modell**, das die eigentliche Arbeit macht. Eine App kann mehrere Modelle anbieten, und oft kannst du das Modell selbst wählen, z. B. in einer Auswahlliste im Chat oder mit einem Befehl im Coding-Agenten ([Modul 06](06-coding-agent.md)).

| Was du siehst (App, Werkzeug) | Was darunter läuft (Modell, Beispiele) |
| --- | --- |
| Claude-App, Claude Code | Claude Fable, Opus, Sonnet, Haiku |
| ChatGPT, Codex | GPT-6 Astra, GPT-6.1 Sol, GPT-6.1 Terra, GPT-6 Luna |
| Gemini-App | Gemini 4, Gemini 3.x Flash |
| GitHub Copilot | Modelle verschiedener Anbieter, wählbar |

Merke: Wenn jemand sagt "ChatGPT kann das nicht", ist oft gemeint: das gerade eingestellte Modell konnte es nicht.

## Die wichtigsten Modellfamilien

**Momentaufnahme, Stand: 2026-11-12.** Diese Liste ist in wenigen Monaten veraltet.

| Anbieter | Familien (aktuell, vom stärksten zum kleinsten) | Typischer Zugang |
| --- | --- | --- |
| Anthropic | Claude Fable 5.2, Opus 5.5, Sonnet 5.5, Haiku 5.5 | Claude-App, Claude Code, API, Amazon Bedrock, Google Cloud, Microsoft Foundry ([Quelle](https://platform.claude.com/docs/en/about-claude/models)) |
| OpenAI | GPT-6 Astra, GPT-6.1 Sol, GPT-6.1 Terra, GPT-6 Luna | ChatGPT, Codex, API, Azure bzw. Microsoft Foundry ([Quelle](https://developers.openai.com/api/docs/models), Cloud-Verfügbarkeit **bitte prüfen**) |
| Google | Gemini 4 Carbon, Gemini 4 Argon, Gemini 3.8 Flash, Flash-Lite | Gemini-App, API über AI Studio, Vertex AI ([Quelle](https://aistudio.google.com/docs/models), Status einzelner Modelle **bitte prüfen**) |
| Offene Modelle (open-weight) | z. B. gpt-oss (OpenAI), Gemma (Google), Qwen, DeepSeek, Mistral, Llama (Meta) | zum Herunterladen und selbst Betreiben, teils auch bei Cloud-Plattformen ([Quelle](https://openai.com/index/introducing-gpt-oss/), neueste Versionen **bitte prüfen**) |

**Open-weight** heißt: Die Gewichte des Modells (das trainierte "Gehirn") sind veröffentlicht. Man kann das Modell auf eigener Hardware betreiben, ohne dass Daten an einen Anbieter gehen.

Hinweis zu Anthropic: Fable 5.2 ist am 2026-11-09 erschienen und löst Fable 5.1 als stärkstes allgemein verfügbares Modell ab ([Quelle](https://platform.claude.com/docs/en/models/fable-5-2/overview)). In manchen Apps und Tarifen steht eventuell noch Fable 5.1 zur Auswahl, **bitte prüfen**.

## Nachdenken oder schnell antworten?

Viele Modelle können vor der Antwort **nachdenken** (englisch reasoning oder thinking). Sie zerlegen die Aufgabe in Schritte, prüfen Zwischenergebnisse und verwerfen falsche Wege, bevor sie antworten. Wie viel nachgedacht wird, stellt man über eine **Stufe** (englisch effort) ein:

- Bei Claude heißt das "adaptive thinking": Das Modell entscheidet selbst, wie viel es nachdenkt, gesteuert über die Effort-Stufe ([Quelle](https://platform.claude.com/docs/en/build-with-claude/effort)). Früher hieß das manuell eingestellte Nachdenken "extended thinking".
- In Codex heißen die Stufen Light (in der CLI: Low), Medium, High und Extra High, dazu Max für die schwersten Einzelaufgaben ([Quelle](https://learn.chatgpt.com/docs/models)).

Mehr Nachdenken heißt: bessere Ergebnisse bei schweren Aufgaben, aber längere Wartezeit und mehr Token, also mehr Kosten oder schneller verbrauchtes Abo-Kontingent ([Modul 13](13-werkzeuge-und-kosten.md)).

| Lohnt sich | Lohnt sich nicht |
| --- | --- |
| Architektur-Entscheidungen ([Modul 10](10-standards.md#adrs-architekturentscheidungen)) | kurze Rückfragen ("Was heißt CI?") |
| Datenmodell entwerfen oder ändern ([Modul 05](05-datenmodell.md)) | Text umformatieren, Tabelle bauen, Rechtschreibung |
| Security-Review ([Modul 08](08-sicherheit.md)) | Brainstorming und lockeres Diskutieren |
| hartnäckige Fehler, die mehrere Versuche überstanden haben | Zusammenfassen eines Gesprächs |
| Änderungen über viele Dateien | Testdaten erfinden |

## Welches Modell für welche Aufgabe

**Empfehlung, Stand: 2026-11-12.** Die Zuordnung der OpenAI- und Google-Modelle beruht auf den Beschreibungen der Anbieter, **bitte prüfen** und im Projekt selbst vergleichen.

| Aufgabe | Art von Modell | Anthropic | OpenAI | Google |
| --- | --- | --- | --- | --- |
| Idee per Sprache diskutieren ([Modul 02](02-ideen-per-sprache.md)) | schnell, günstig | Sonnet 5.5 | Standardmodell der Sprachfunktion in ChatGPT (**bitte prüfen**) | Gemini 3.8 Live |
| Konzept und Issue schreiben ([Modul 03](03-konzept-und-prompt.md)) | mittel bis stark | Sonnet 5.5 oder Opus 5.5 | GPT-6.1 Terra oder GPT-6.1 Sol | Gemini 3.8 Flash |
| Alltägliche Entwicklung mit dem Coding-Agenten ([Modul 06](06-coding-agent.md)) | starkes Coding-Modell | Opus 5.5 | GPT-6.1 Sol | Gemini 3.8 Flash oder Gemini 4 Argon |
| Gelegentliche Tiefenprüfung von Architektur, Datenmodell oder Sicherheit, wenn das Konzept steht | stärkstes Modell mit Nachdenken, sparsam einsetzen | Fable 5.2 | GPT-6 Astra | Gemini 4 Carbon |
| Einfache Massenaufgaben (z. B. 200 Texte einordnen, Daten umformen) | klein, sehr günstig | Haiku 5.5 | GPT-6 Luna | Gemini 3.5 Flash-Lite |

Zur Größenordnung bei Anthropic (API-Preise pro Million Token, Eingabe/Ausgabe): Fable 5.2 8 $/40 $, Opus 5.5 4 $/20 $, Sonnet 5.5 2 $/10 $, Haiku 5.5 ab 0,10 $/0,50 $ ([Quelle](https://platform.claude.com/docs/en/about-claude/models)). Das stärkste Modell kostet also ein Vielfaches. Deshalb nimmt man es für die gezielte Prüfung, nicht für jeden Tippfehler.

### Beispiel Wachbuch

Karl, der Atemschutzgerätewart, hat eine Idee für die Prüffristen der Atemschutzgeräte. Auf der Heimfahrt bespricht er sie per Sprache mit einem schnellen Modell. Zu Hause lässt er daraus mit einem mittleren Modell ein Konzept und ein Issue schreiben. Peter, der externe Architekt, schaut sich das Konzept an. Weil eine neue Tabelle im Datenmodell dazukommt, lässt Peter das fertige Konzept einmal vom stärksten Modell mit hoher Nachdenk-Stufe prüfen: Passt das Datenmodell? Gibt es Lücken bei den Rechten? Danach setzt Karl die Aufgabe mit dem Coding-Agenten und dem Standard-Coding-Modell des Projekts um.

## Warum das billigste oder ein lokales Modell meist nicht reicht

Es ist verlockend: Ein kleines Modell kostet fast nichts, ein lokales Modell läuft kostenlos auf dem eigenen Rechner. Für echte Softwareentwicklung ist das aber meist ein Fehler:

- **Viele Dateien gleichzeitig:** Kleine Modelle verlieren bei Änderungen über mehrere Dateien schnell den Überblick und brechen Dinge an anderer Stelle.
- **Projektregeln:** Sie halten sich schlechter an `AGENTS.md`, an Standards und an den Auftrag.
- **Sicherheit:** Sie übersehen häufiger Rechteprüfungen, Eingabeprüfungen und andere Sicherheitslücken ([Modul 08](08-sicherheit.md)).
- **Erfundene Schnittstellen:** Sie erfinden öfter Funktionen, Optionen oder Pakete, die es nicht gibt.
- **Werkzeuge:** Ein Coding-Agent muss Dateien lesen, Befehle ausführen und Ergebnisse auswerten (Tool-Nutzung). Kleine Modelle stolpern dabei häufiger.
- **Kontextfenster:** Lokale Modelle können oft nur wenig Text auf einmal verarbeiten, weil der Speicher des Rechners nicht reicht.
- **Es sieht gut aus:** Das Gefährlichste. Der Code wirkt sauber, die Antwort klingt überzeugt, aber es stecken feine Fehler drin, die erst im Betrieb auffallen.

Am Ende kostet das mehr Zeit im Review und mehr Korrekturschleifen, als das stärkere Modell gekostet hätte.

### Wann lokale und offene Modelle sinnvoll sind

- **Datenschutz-kritische Experimente**, bei denen keine Daten den eigenen Rechner verlassen dürfen. Die Regeln aus [Modul 14](14-ki-und-datenschutz.md) gelten trotzdem: In der Entwicklung immer erfundene Daten.
- **Offline**, z. B. ohne verlässliches Internet.
- **Einfache Aufgaben** wie Texte zusammenfassen, umformulieren, Daten umformen.
- **Als kostenloser Lernbegleiter** für Grundlagen, z. B. "Erkläre mir, was ein Branch ist". Bei Detailfragen und aktuellen Werkzeugen irrt es sich öfter.

Ehrliche Grenzen: Auch die besten offenen Modelle liegen bei großen Coding-Aufgaben meist hinter den stärksten Modellen der großen Anbieter, und die wirklich großen offenen Modelle brauchen teure Hardware (**bitte prüfen**, der Abstand ändert sich laufend).

### Was für Hardware man braucht

Als Beispiel nennt OpenAI für seine offenen Modelle: gpt-oss-20b läuft mit etwa 16 GB Speicher, also auf einem gut ausgestatteten Laptop. gpt-oss-120b braucht eine einzelne Grafikkarte mit 80 GB Speicher, also Rechenzentrums-Hardware ([Quelle](https://openai.com/index/introducing-gpt-oss/)). Faustregel: Je größer das Modell, desto mehr Grafikspeicher. Ein normaler Büro-Laptop schafft nur kleine Modelle, und die sind langsam. Werkzeuge zum Ausprobieren sind z. B. [Ollama](https://ollama.com) oder [LM Studio](https://lmstudio.ai).

## Kontextfenster und Token, kurz erklärt

Modelle lesen und schreiben in **Token**, kleinen Textstücken ([Modul 13](13-werkzeuge-und-kosten.md#nutzungsbasiert-über-die-api-token)). Das **Kontextfenster** ist die Menge an Token, die ein Modell auf einmal "im Kopf" haben kann: Auftrag, Projektregeln, geöffnete Dateien und der bisherige Verlauf. Die aktuellen Claude-Modelle haben z. B. ein Kontextfenster von 1 Million Token, das sind grob 555.000 Wörter ([Quelle](https://platform.claude.com/docs/en/about-claude/models)).

Größer ist nicht automatisch besser:

- Je mehr im Kontext steht, desto mehr kostet jeder Schritt ([Modul 13](13-werkzeuge-und-kosten.md#warum-lange-sitzungen-und-große-repositories-mehr-kosten)).
- Bei sehr vollem Kontext übersehen Modelle eher Details oder frühere Anweisungen.
- Ein klarer, kleiner Auftrag in einer frischen Sitzung bringt meist mehr als ein riesiger Verlauf.

## Datenschutz: Die Modellwahl entscheidet, wohin die Daten gehen

Wer ein Modell wählt, wählt auch, wohin die Eingaben geschickt werden: an Anthropic, OpenAI oder Google direkt, über eine Cloud-Plattform in einer EU-Region, oder auf den eigenen Rechner. Ein Modell aus der Verbraucher-App hat andere Bedingungen als dasselbe Modell über einen Business-Tarif oder eine Cloud-Plattform mit Auftragsverarbeitungsvertrag. Manche Modelle haben eigene Regeln zur Datenaufbewahrung; Fable 5.2 verlangt z. B. 30 Tage Aufbewahrung über die API ([Quelle](https://platform.claude.com/docs/en/models/fable-5-2/overview)). Welche Daten in welchen Dienst dürfen, steht in [Modul 14](14-ki-und-datenschutz.md#welche-daten-in-welchen-dienst).

## So wählst du in der Praxis

- **Der Architekt legt einen Standard fest.** Peter schreibt in die Beitragsanleitung oder `AGENTS.md`, welches Modell und welche Nachdenk-Stufe das Projekt normalerweise nutzt. Dann muss nicht jeder selbst überlegen.
- **Hochschalten bei schweren Problemen.** Datenmodell, Sicherheit, ein Fehler, der sich zweimal nicht beheben ließ: stärkeres Modell oder höhere Stufe.
- **Runterschalten bei einfachen Aufgaben.** Texte, Formatierung, Testdaten: kleineres Modell, niedrigere Stufe.
- **Kein Endlos-Lauf mit dem teuersten Modell.** Ein Agent, der sich mit dem stärksten Modell im Kreis dreht, verbrennt sehr schnell Kontingent oder Geld. Abbrechen, Auftrag verkleinern, neu starten ([Modul 06](06-coding-agent.md#den-agenten-steuern-und-hinterfragen)).
- **Bei Unsicherheit vergleichen.** Für wichtige Reviews eine zweite Meinung von einem Modell eines anderen Anbieters einholen. Verschiedene Modelle machen verschiedene Fehler. Was beide finden, ist fast sicher ein echtes Problem; worin sie sich widersprechen, klärt ein Mensch.
- **Nach Updates neu prüfen.** Ein neues Modell kann besser sein, aber anders reagieren. Mit einer vertrauten Aufgabe testen, bevor man umstellt.

## Checkliste

- [ ] Ich weiß, welche App ich nutze und welches Modell darin eingestellt ist.
- [ ] Ich kenne den Modell-Standard meines Projekts.
- [ ] Für Gespräche und einfache Aufgaben nehme ich ein schnelles, günstiges Modell.
- [ ] Für Code nehme ich das Coding-Modell des Projekts, kein billiges Kleinmodell.
- [ ] Das stärkste Modell mit hoher Nachdenk-Stufe nutze ich gezielt für Architektur, Datenmodell und Sicherheit.
- [ ] Ich breche ab, wenn der Agent sich im Kreis dreht, statt ein teureres Modell weiterlaufen zu lassen.
- [ ] Ich weiß, wohin meine Eingaben mit diesem Modell gehen, und halte mich an [Modul 14](14-ki-und-datenschutz.md).

## Zusammenfassung

- Apps (ChatGPT, Claude, Codex, Claude Code) sind die Oberfläche, darunter laufen Modelle, oft wählbar.
- Modellnamen ändern sich alle paar Monate. Was zählt, ist die Art: schnell, stark, am stärksten mit Nachdenken, klein.
- Nachdenken lohnt sich für Architektur, Datenmodell, Sicherheit und harte Fehler, nicht für schnelle Fragen.
- Billige und lokale Modelle sind für echte Softwareentwicklung meist zu schwach, für einfache Aufgaben und zum Lernen aber brauchbar.
- Der Architekt legt den Standard fest, man schaltet bewusst hoch und runter und holt bei wichtigen Reviews eine zweite Meinung ein.

## Quellen

Alle abgerufen am 2026-11-12. Modelle und Preise ändern sich, **bitte prüfen**.

- [Anthropic: Models overview](https://platform.claude.com/docs/en/about-claude/models) (Modelle, Preise, Kontextfenster, Plattformen)
- [Anthropic: Claude Fable 5.2](https://platform.claude.com/docs/en/models/fable-5-2/overview) (Erscheinungsdatum, Datenaufbewahrung)
- [Anthropic: Effort](https://platform.claude.com/docs/en/build-with-claude/effort) (Nachdenk-Stufen)
- [OpenAI: Models](https://developers.openai.com/api/docs/models) (aktuelle GPT-Modelle)
- [OpenAI Codex: Models](https://learn.chatgpt.com/docs/models) (empfohlene Modelle und Reasoning-Stufen in Codex)
- [OpenAI: Introducing gpt-oss](https://openai.com/index/introducing-gpt-oss/) (offene Modelle, Hardware)
- [Google: Gemini-Modelle](https://aistudio.google.com/docs/models)
- [Ollama](https://ollama.com) und [LM Studio](https://lmstudio.ai) (Werkzeuge für lokale Modelle)
