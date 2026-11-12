# Folien

Foliensätze zur Schulung, gebaut mit [Slidev](https://sli.dev/). Aufbau, Theme und Konventionen folgen dem Repository `presentation-standards` (Ordner `slidev/`): ein Deck pro Ordner `slides/JJJJ-MM-TT-thema/`, wenig Text auf der Folie, Details und Quellen in den Presenter-Notes.

| Deck | Inhalt |
| --- | --- |
| [2026-11-12-schulung](2026-11-12-schulung/slides.md) | Die ganze Schulung im Überblick: Warum, Ablauf, Bauen, Sicher betreiben, Miteinander, Loslegen |

## Lokal starten

Voraussetzung ist Node.js (LTS). `package.json` und `package-lock.json` liegen im Hauptordner des Repositorys.

```bash
npm ci
npx playwright install chromium   # einmalig, nur für den PDF-Export
npm run dev                       # Dev-Server auf http://localhost:3030, Presenter-Modus mit Taste p
npm run build                     # Web-Version nach build/slides (Basis-Pfad /domain-dev-with-ai/slides/)
npm run export                    # PDF nach build/2026-11-12-schulung.pdf
```

`build/` wird nicht versioniert.

## Mit Docker

Wenn die lokale Node-Version Probleme macht, im offiziellen Playwright-Image bauen. Die Version des Images muss zu `playwright-chromium` in `package.json` passen.

```bash
docker run --rm -v "$PWD:/repo" -w /repo mcr.microsoft.com/playwright:v1.64.1-noble \
  bash -c "npm ci && npm run build && npm run export"
```

## Prüfen

Nach jeder Änderung exportieren, Seitentitel durchgehen und geänderte Folien als Bild ansehen:

```bash
pdfinfo build/2026-11-12-schulung.pdf | grep Pages
pdftotext build/2026-11-12-schulung.pdf - | grep -n "layout:"   # darf nichts finden
pdftoppm -r 60 -png -f 10 -l 10 build/2026-11-12-schulung.pdf /tmp/folie
```

## Lizenz

Die Folien gehören zu den Schulungsinhalten und stehen wie diese unter [CC BY-NC-SA 4.0](../LICENSE).
