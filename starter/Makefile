# Einheitliche Befehle für Menschen, Agenten und CI. Platzhalter-Ziele an die Sprache des Projekts anpassen.

# renovate: datasource=docker depName=squidfunk/mkdocs-material
MKDOCS_VERSION ?= 9.6.22
MKDOCS_IMAGE := squidfunk/mkdocs-material:$(MKDOCS_VERSION)

.PHONY: help install lint test docs docs-serve ci

help: ## Zeigt diese Hilfe.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-12s %s\n", $$1, $$2}'

install: ## Installiert die Abhängigkeiten (Platzhalter).
	@echo "TODO: Befehl zum Installieren eintragen, z. B. aus der Lock-Datei." && exit 1

lint: ## Prüft Formatierung und Code-Stil (Platzhalter).
	@echo "TODO: Lint-Befehl der gewählten Sprache eintragen." && exit 1

test: ## Führt die automatischen Tests aus (Platzhalter).
	@echo "TODO: Test-Befehl der gewählten Sprache eintragen." && exit 1

docs: ## Baut die Dokumentation streng (bricht bei kaputten Links ab).
	docker run --rm -v "$(CURDIR):/docs" $(MKDOCS_IMAGE) build --strict --site-dir /tmp/site

docs-serve: ## Zeigt die Dokumentation unter http://localhost:8000 an.
	docker run --rm -it -p 8000:8000 -v "$(CURDIR):/docs" $(MKDOCS_IMAGE)

ci: lint test docs ## Führt alle Prüfungen wie in der CI aus.
