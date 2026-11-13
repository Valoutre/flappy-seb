#!/bin/bash
# Régénère docs/index.html, la page servie par GitHub Pages, à partir de index.html (la source publiée en artefact, sans en-tête).
cd "$(dirname "$0")/.." || exit 1
{
  echo '<!doctype html>'
  echo '<html lang="fr"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>body{margin:0}[hidden]{display:none!important}</style></head><body>'
  cat index.html
  echo '</body></html>'
} > docs/index.html
