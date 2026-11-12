# Modul 14: KI und Datenschutz

Was darf ich in welchen KI-Dienst eingeben? Diese Frage stellt sich jeden Tag: beim Gespräch mit dem Sprachassistenten, beim Auftrag an den Coding-Agenten, beim Hochladen eines Screenshots. In diesem Modul lernst du, Daten in Klassen einzuteilen, die Arten von KI-Diensten zu unterscheiden und zu entscheiden, was wohin darf.

**Wichtig:** Dieses Modul ist keine Rechtsberatung. Es gibt einen vereinfachten Überblick, damit du Risiken erkennst. Bei konkreten Fragen entscheiden der Datenschutzbeauftragte und der Vorstand bzw. die Leitung der Organisation. Die Grundbegriffe der DSGVO stehen in [Modul 08](08-sicherheit.md#die-dsgvo-in-kurzform).

**Stand: 2026-11-12.** Die Bedingungen der Anbieter ändern sich. Alle Angaben mit Quelle, unsichere Punkte sind mit **bitte prüfen** markiert.

## Die Datenklassen

| Klasse | Was gehört dazu | Beispiel Wachbuch |
| --- | --- | --- |
| **Öffentlich** | was ohnehin jeder sehen darf | öffentlicher Code des Projekts, Doku, Fahrzeugtypen, Feuerwehr-Dienstvorschriften |
| **Intern** | nicht für die Öffentlichkeit, aber ohne Personenbezug | interne Abläufe, Konzepte, Architekturentscheidungen, privater Code |
| **Personenbezogen** | alles, was sich einer Person zuordnen lässt | Namen, Adressen, Telefonnummern, Geburtsdaten, Dienstzeiten, Bankverbindungen der Fördervereinsmitglieder |
| **Besondere Kategorien** (Art. 9 DSGVO) | Gesundheit, Religion, Gewerkschaft, ethnische Herkunft, biometrische Daten und weitere | Atemschutz-Tauglichkeit (G26.3), Verletzungen im Einsatz |

Dazu kommen zwei Fälle, die besondere Vorsicht verlangen: **Daten von Kindern und Jugendlichen** (Jugendfeuerwehr) und **Einsatzdaten**, die oft Namen und Lage von Betroffenen enthalten, also Daten von Menschen, die gar nicht Mitglied sind.

Auch **Secrets** (Passwörter, Schlüssel) gehören nie in einen KI-Dienst, egal welcher Art ([Modul 08](08-sicherheit.md#geheimnisse-im-code)).

## Die Arten von KI-Diensten

### 1. Verbraucher-Apps (Free und Einzel-Abos)

Die normalen Apps und Webseiten für Privatpersonen, kostenlos oder mit Einzel-Abo, z. B. ChatGPT Free/Go/Plus/Pro oder Claude Free/Pro/Max.

- **Training:** Je nach Einstellung können Eingaben zum Training künftiger Modelle verwendet werden. Bei OpenAI ist das für die Verbraucher-Tarife laut Tarifübersicht der Fall, mit Möglichkeit zum Widerspruch ([Quelle](https://chatgpt.com/pricing), **bitte prüfen**). Bei Anthropic müssen Nutzer der Verbraucher-Tarife seit 2025 selbst wählen, ob ihre Chats und Coding-Sitzungen zum Training genutzt werden. Wer zustimmt, dessen Daten werden bis zu fünf Jahre aufbewahrt, sonst gilt eine Frist von 30 Tagen ([Quelle](https://www.anthropic.com/news/updates-to-our-consumer-terms), [Quelle](https://privacy.claude.com/en/articles/10023580-is-my-data-used-for-model-training), **bitte prüfen**).
- **Vertrag:** Es gibt **keinen Auftragsverarbeitungsvertrag** (AVV, englisch DPA). Ein AVV ist der Vertrag, mit dem ein Dienstleister sich verpflichtet, Daten nur im Auftrag und nach Weisung der Organisation zu verarbeiten ([Art. 28 DSGVO](https://dsgvo-gesetz.de/art-28-dsgvo/)).
- **Regel:** **Niemals personenbezogene Daten**, auch wenn das Training abgeschaltet ist. Ohne AVV darf die Organisation die Daten ihrer Mitglieder dort nicht verarbeiten lassen.

### 2. Business-, Team- und Enterprise-Tarife

Tarife für Organisationen, z. B. ChatGPT Business/Enterprise, Claude Team/Enterprise, GitHub Copilot Business/Enterprise.

- **Training:** Die Anbieter sagen zu, Daten dieser Tarife standardmäßig **nicht** zum Training zu nutzen ([OpenAI: Business data](https://openai.com/business-data/), [Anthropic: Commercial Terms](https://www.anthropic.com/legal/commercial-terms), **bitte prüfen**).
- **Vertrag:** Ein AVV wird angeboten, oft als Teil der Vertragsbedingungen ([OpenAI DPA](https://openai.com/policies/data-processing-addendum/), [Anthropic DPA](https://www.anthropic.com/legal/data-processing-addendum), **bitte prüfen**). Er muss aber auch wirklich abgeschlossen und dokumentiert werden.
- **Speicherort:** Datenhaltung in Europa bieten die Anbieter nur für bestimmte Tarife und Konfigurationen an, oft nicht als Voreinstellung. Bei OpenAI z. B. für die API und neue Enterprise- und Edu-Arbeitsbereiche ([Quelle](https://openai.com/index/introducing-data-residency-in-europe/), **bitte prüfen**, ob das für den eigenen Tarif gilt).
- **Regel:** Das ist die Mindestvoraussetzung, um überhaupt über personenbezogene Daten nachzudenken. Erlaubt ist es damit noch nicht automatisch (siehe unten).

### 3. Cloud-Plattformen für KI-Modelle

Große Cloud-Anbieter stellen KI-Modelle als Dienst bereit, den eine Organisation in ihr eigenes Cloud-Konto einbindet, z. B. **Amazon Bedrock**, **Azure OpenAI bzw. Microsoft Foundry** und **Google Vertex AI**.

- **Training:** Bei Amazon Bedrock werden Eingaben und Ausgaben laut AWS nicht an die Modellanbieter weitergegeben und nicht zur Verbesserung der Basismodelle genutzt ([Quelle](https://aws.amazon.com/bedrock/faqs/)). Bei Microsoft Foundry sind Eingaben und Ausgaben nicht für OpenAI oder andere Modellanbieter zugänglich und werden nicht zum Training genutzt; zur Missbrauchserkennung können markierte Inhalte gespeichert und von Microsoft-Mitarbeitern geprüft werden, bei Bereitstellung im EWR durch Mitarbeiter im EWR ([Quelle](https://learn.microsoft.com/en-us/azure/foundry/responsible-ai/openai/data-privacy)). Google sagt für Vertex AI zu, Kundendaten nicht zum Training der Basismodelle zu nutzen; für bestimmte Funktionen gibt es Zwischenspeicherung, die man für "Zero Data Retention" gezielt abschalten muss ([Quelle](https://docs.cloud.google.com/vertex-ai/generative-ai/docs/data-governance), **bitte prüfen**).
- **Vertrag:** Der AVV ist Teil der Cloud-Verträge ([Microsoft DPA](https://aka.ms/DPA), **bitte prüfen** für AWS und Google).
- **Speicherort:** Regionen in der EU sind wählbar. Vorsicht bei Einstellungen wie "Global" oder regionsübergreifender Verarbeitung: Dann können Anfragen auch anderswo verarbeitet werden ([Quelle](https://learn.microsoft.com/en-us/azure/foundry/responsible-ai/openai/data-privacy)).
- **Regel:** Das ist der richtige Weg, wenn eine Organisation **echte personenbezogene Daten** mit KI verarbeiten will, aber nur zusammen mit der rechtlichen Prüfung im nächsten Abschnitt.

## Wenn die Software selbst KI nutzen soll

Angenommen, der Kommandant wünscht sich: "Das Wachbuch soll aus den Einsatzberichten automatisch eine Zusammenfassung für den Jahresbericht machen." Dann schickt die Software echte Einsatzberichte mit Namen, Adressen und vielleicht Verletzungen an ein KI-Modell. Das ist ein großer Schritt. Nötig sind mindestens:

- **Ein passender Dienst:** Business-Tarif mit AVV oder Cloud-Plattform mit AVV, EU-Region, kein Training auf den Daten.
- **Der Datenschutzbeauftragte** der Organisation wird von Anfang an beteiligt.
- **Eintrag im Verzeichnis der Verarbeitungstätigkeiten** ([Art. 30 DSGVO](https://dsgvo-gesetz.de/art-30-dsgvo/)): Was wird verarbeitet, wozu, bei wem.
- **Datenschutz-Folgenabschätzung (DSFA)**, wenn ein hohes Risiko besteht, z. B. bei umfangreicher Verarbeitung von Gesundheitsdaten ([Art. 35 DSGVO](https://dsgvo-gesetz.de/art-35-dsgvo/)). Ob sie im konkreten Fall nötig ist, klärt der Datenschutzbeauftragte.
- **Datenminimierung:** Nur das an die KI schicken, was wirklich nötig ist. Oft lassen sich Namen vorher entfernen.
- **Architektur-Entscheidung** als ADR ([Modul 10](10-standards.md#adrs-architekturentscheidungen)) und Security-Review ([Modul 08](08-sicherheit.md)).

Ohne diese Schritte wird so eine Funktion nicht gebaut. Das entscheidet nicht der Domänenexperte allein und schon gar nicht der Agent.

## Für die Entwicklung gilt immer

Bei der Entwicklung selbst braucht niemand echte Daten:

- **Testdaten sind immer synthetisch.** "Max Mustermann", "Erika Beispiel", "HLF 20 Musterstadt". Der Agent hilft beim Erfinden ([Modul 12](12-testen.md#testdaten-sind-immer-erfunden)).
- **Niemals Produktionsdaten in Entwicklungs- oder Testumgebungen kopieren**, auch nicht "nur kurz zum Nachstellen eines Fehlers" ([Modul 11](11-umgebungen-und-zusammenarbeit.md)).
- **Wo echte Daten sind, ist keine KI.** Kein Agent bekommt Zugang zu QA mit echten Daten oder zur Produktion.
- **Screenshots enthalten Daten.** Ein Bildschirmfoto aus dem echten Wachbuch zeigt Namen, Fristen, vielleicht Tauglichkeiten. Für Issues, Pull Requests und KI-Chats nur Screenshots aus der Testumgebung.
- **Logs und Fehlermeldungen enthalten Daten.** Eine Fehlermeldung aus der Produktion enthält oft Namen, E-Mail-Adressen oder Teile von Datensätzen. Nicht in einen KI-Chat kopieren, sondern dem Maintainer geben.
- **Auch Fachwissen kann personenbezogen sein.** "Wie trage ich ein, dass Kamerad X wegen seines Knies nicht mehr Atemschutz tragen darf?" enthält schon eine Gesundheitsangabe. Besser: "Wie trage ich ein, dass ein Mitglied nicht mehr atemschutztauglich ist?"

## Welche Daten in welchen Dienst

| Daten | Verbraucher-App (Free/Plus/Pro) | Business/Team mit AVV | Cloud-Plattform mit AVV, EU-Region |
| --- | --- | --- | --- |
| Öffentlich (öffentlicher Code, Doku) | ja | ja | ja |
| Intern ohne Personenbezug (Konzepte, privater Code) | nur wenn die Organisation das erlaubt, Training abgeschaltet | ja | ja |
| Erfundene Testdaten | ja | ja | ja |
| Personenbezogene Daten | **nein** | nur nach Freigabe durch die Organisation und Datenschutzbeauftragten | nur nach Freigabe und Eintrag im Verarbeitungsverzeichnis |
| Gesundheitsdaten und andere besondere Kategorien, Daten Minderjähriger | **nein** | **nein**, außer nach ausdrücklicher Prüfung (DSFA) | nur nach rechtlicher Prüfung, DSFA und Freigabe |
| Secrets (Passwörter, Schlüssel) | **nein** | **nein** | **nein** |

Im Zweifel: nicht eingeben, sondern Peter oder Sabine fragen ([Beispiel](beispiel-feuerwehr-musterstadt.md)).

## Was tun, wenn es doch passiert ist?

Jonas kopiert aus Versehen eine Fehlermeldung aus der Produktion in den KI-Chat, darin stehen drei Namen mit Untersuchungsfristen. Was jetzt?

1. **Sofort aufhören** und nichts weiter eingeben.
2. **Den Chat löschen.** Das verringert das Risiko, macht die Übermittlung aber nicht ungeschehen.
3. **Den Maintainer und den Datenschutzbeauftragten informieren**, und zwar sofort. Nichts vertuschen, auch wenn es peinlich ist ([Modul 08](08-sicherheit.md#was-tun-wenn-etwas-passiert-ist)).
4. **Die Organisation prüft**, ob eine Meldung an die Aufsichtsbehörde nötig ist. Dafür gilt in der Regel eine Frist von 72 Stunden ([Art. 33 DSGVO](https://dsgvo-gesetz.de/art-33-dsgvo/)). Deshalb ist schnelles Melden so wichtig.
5. **Daraus lernen:** Warum war der Weg so einfach? Vielleicht braucht es eine Regel in `AGENTS.md` oder einen Hinweis in der Beitragsanleitung.

## Checkliste

- [ ] Ich weiß, welcher Datenklasse meine Eingabe angehört.
- [ ] Ich nutze für Daten der Organisation nur Dienste, die die Organisation freigegeben hat.
- [ ] Keine personenbezogenen Daten, keine Gesundheitsdaten, keine Secrets in Verbraucher-Apps.
- [ ] Meine Testdaten und Screenshots sind erfunden bzw. stammen aus der Testumgebung.
- [ ] Ich kopiere keine Logs oder Fehlermeldungen aus QA oder Produktion in einen KI-Chat.
- [ ] Soll die Software selbst KI mit echten Daten nutzen, sind Datenschutzbeauftragter, Verarbeitungsverzeichnis und ggf. DSFA eingeplant.
- [ ] Ich weiß, wen ich informiere, wenn doch etwas passiert.

## Zusammenfassung

- Vier Datenklassen: öffentlich, intern, personenbezogen, besondere Kategorien wie Gesundheit.
- Verbraucher-Apps: kein AVV, eventuell Training. Nie personenbezogene Daten.
- Business-Tarife und Cloud-Plattformen: AVV, standardmäßig kein Training, EU-Region möglich. Für echte Daten trotzdem nur nach rechtlicher Prüfung.
- In der Entwicklung immer erfundene Daten. Auch Screenshots und Logs enthalten Daten.
- Passiert ein Fehler: sofort melden, Chat löschen, Organisation prüft Meldepflicht.
- Dieses Modul ist keine Rechtsberatung.

## Quellen

Alle abgerufen am 2026-11-12. Bedingungen ändern sich, **bitte prüfen**.

- [Anthropic: Updates to our consumer terms](https://www.anthropic.com/news/updates-to-our-consumer-terms)
- [Anthropic Privacy Center: Is my data used for model training?](https://privacy.claude.com/en/articles/10023580-is-my-data-used-for-model-training)
- [Anthropic: Commercial Terms](https://www.anthropic.com/legal/commercial-terms) und [Data Processing Addendum](https://www.anthropic.com/legal/data-processing-addendum)
- [OpenAI: Business data privacy](https://openai.com/business-data/) und [Data Processing Addendum](https://openai.com/policies/data-processing-addendum/)
- [OpenAI: Data residency in Europe](https://openai.com/index/introducing-data-residency-in-europe/)
- [ChatGPT: Pläne und Preise](https://chatgpt.com/pricing) (Hinweis zum Training in den Verbraucher-Tarifen)
- [Amazon Bedrock FAQs](https://aws.amazon.com/bedrock/faqs/)
- [Microsoft Learn: Data, privacy, and security for Foundry Models sold by Azure](https://learn.microsoft.com/en-us/azure/foundry/responsible-ai/openai/data-privacy)
- [Google Cloud: Vertex AI and zero data retention](https://docs.cloud.google.com/vertex-ai/generative-ai/docs/data-governance)
- DSGVO: [Art. 9](https://dsgvo-gesetz.de/art-9-dsgvo/), [Art. 28](https://dsgvo-gesetz.de/art-28-dsgvo/), [Art. 30](https://dsgvo-gesetz.de/art-30-dsgvo/), [Art. 33](https://dsgvo-gesetz.de/art-33-dsgvo/), [Art. 35](https://dsgvo-gesetz.de/art-35-dsgvo/)
