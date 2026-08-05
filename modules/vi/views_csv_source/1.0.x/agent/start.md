<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views CSV Source (views_csv_source) — agent index

Views **query backend** that reads rows from CSV instead of SQL. Depends on core `views`;
parses with `league/csv ^9.27`. Core requirement `^8.8 || ^9 || ^10 || ^11`.
Settings at `/admin/config/user-interface/views-csv-source-settings`.

Key facts:
- Source is a URI, resolved by `src/UriParserTrait.php`, in three forms:

  | Form | Meaning |
  |---|---|
  | `entity:file/{fid}` | a managed file entity |
  | `internal:/path` | `DRUPAL_ROOT . path` — a **local filesystem read** |
  | `http(s)://…` | Guzzle fetch, GET or **POST** with configurable headers/body, response cached |

- **Security — verified, see local `security.md`.** The `internal:` branch applies no traversal
  check: `internal:/../composer.json` resolved and read outside the docroot, and
  `internal:/sites/default/settings.php` was read in full (37 KB, containing `hash_salt`,
  database credentials). Those bytes become the view's rows, and the view can be given anonymous
  access. The URI is a view setting, so it needs `administer views` — restricted, but a site
  builder holding it should not thereby obtain the database password. The HTTP branch is
  equivalently an admin-triggered outbound request to any URL.
- `src/Query/Connection.php:148` decides local-vs-remote:
  `if ($scheme === 'internal' || $scheme === 'entity' || file_exists($uri))`, then
  `file_get_contents($uri)`.
- Other surface: `src/Event/` (alter hooks), `src/Hook/`, `src/Form/`,
  `views_csv_source.views.inc`, `phpstan.neon`.
