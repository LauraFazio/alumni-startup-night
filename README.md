# Alumni Startup Night

Sito dell'Alumni Startup Night di Alumni Grandes Écoles Italia (IT/FR). HTML statico, nessuna build.

- `index.html` · pagina unica, switch lingua IT/FR
- `img/` · foto e video recap dell'edizione 29/09/2026
- `favicon.svg`, `apple-touch-icon.png`, `og-image.jpg` · logo Le Sceau

## Aggiornare la data 2027
In `index.html` cerca `var EVENT_DATE = null;` e imposta la data, es. `"2027-09-28T18:30:00+02:00"`: il countdown parte da solo.

## Deploy
Vercel (Hobby) collegato al repo GitHub `LauraFazio/alumni-startup-night`: ogni push su `main` va online.
Framework preset: **Other**, nessun build command, output directory: root.
