<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views CSV Source (views_csv_source) — agent index

Views **query backend** that reads rows from CSV instead of SQL. Depends on core `views`;
parses with `league/csv ^9.27`. Core requirement `^11.4 || ^12` (2.0 dropped D8/9/10).
No PHP libraries beyond `league/csv`; no permissions or Drush of its own.

To use: build a View → pick **"CSV"** in "Show" → open Query **Settings** → set the CSV
source URI + options. Base Views table id is `csv`, query plugin id `views_csv_source_query`.

Capabilities:
- **[Configure the CSV source and query options](configure/settings.md)** — the source URI (three
  forms), header offset, request method/headers/body, remote cache TTL settings form, PreCacheEvent.
- **[Views handlers it adds](plugins/views-handlers.md)** — the field, five filters, two sorts,
  argument, constant field, aggregation, and CSV-to-CSV relationship handlers.

Key facts:
- Source URI is resolved by `src/UriParserTrait.php`, in three forms:

  | Form | Meaning |
  |---|---|
  | `entity:file/{fid}` | a managed file entity (autocomplete limited to `text/csv`) |
  | `internal:/path` | `DRUPAL_ROOT . path` — a **local filesystem read** |
  | `http(s)://…` | Guzzle fetch, GET or **POST** with headers/multipart body, response cached |

  A scheme-less string typed into the field is mapped to `internal:` automatically. The URI
  supports Drupal/Views tokens and view arguments (`{{ raw_arguments.x }}`, `%`).
- **Security — verified, see local `security.md`.** The `internal:` branch still applies no
  traversal/realpath check (`src/UriParserTrait.php:27-39`): `internal:/../` escapes the docroot
  and `internal:/sites/default/settings.php` is read in full — its bytes (incl. DB credentials,
  `hash_salt`) become the view's rows, and a view can be given anonymous access. The added
  `validateCsvFileUriElement` only forces a leading `/`; it does not block `../`. HTTP branch is an
  admin-triggered outbound request to any URL (SSRF). Both gated by `administer views` only.
- `src/Query/Connection.php:148` / `:344` decide local-vs-remote:
  `if ($scheme === 'internal' || $scheme === 'entity' || file_exists($uri))`, then
  `file_get_contents()` / `Reader::from()`; else Guzzle + `Reader::fromString()`.
- Other surface: `src/Event/PreCacheEvent.php` (alter content before caching), OOP hooks in
  `src/Hook/` (`hook_views_data` in `ViewsCsvSourceViewsHooks`), `src/Form/`, `config/schema/`.
