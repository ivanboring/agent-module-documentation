# Configuration

There is no standalone settings page. This module adds a **Phrase** translator
plugin to TMGMT, and you configure it by creating a TMGMT **Provider**.

## Create the Phrase TMS provider

1. Go to **Configuration → Regional and language → Translation Management →
   Providers** (`entity.tmgmt_translator.collection`).
2. Click **Add Translator** (or **Add Provider**).
3. Set the **Translator plugin** to **Phrase**.
4. Fill in the connection and option fields (below) and save. On save, the module
   attempts to log in to Phrase TMS; if the URL, user name, or password are wrong,
   validation fails with "Login incorrect", so you'll know immediately whether the
   credentials work.

## Provider settings

| Setting | What it does |
|---------|--------------|
| **Phrase TMS Home URL** (`service_url`) | Your Phrase TMS home address, e.g. `https://cloud.memsource.com/web`. Required. |
| **User name** (`memsource_user_name`) | The Phrase TMS user the module logs in as. Required. |
| **Password** (`memsource_password`) | That user's password. See the security note below on how it is stored. |
| **Enable translation of file attachments** (`enable_file_translation`) | Upload attached Office documents (DOCX/XLSX/PPTX and older DOC/XLS/PPT) alongside the XLIFF and download the translated files back with a language suffix (e.g. `document_de.docx`). On by default. |
| **Set job to Delivered after import** (`memsource_update_job_status`) | After importing a translation into Drupal, mark the Phrase job as *Delivered*. |
| **Pull translations on cron** (`memsource_cron_use`) | Let cron fetch completed translations automatically. |
| **Cron start / end hour** (`memsource_cron_start_hour` / `..._end_hour`) | The active window (0–23) during which cron pulls; defaults 8 and 18, so pulls only happen between 08:00 and 18:00. |
| **Minutes between pulls** (`memsource_cron_time`) | How often cron checks (minimum 5). |
| **Items per cron run** (`memsource_cron_limit`) | Cap on how many job items each cron run processes (default 100). |
| **Preview connector** (`memsource_connector_token`) | Optional Phrase preview connector so translators can preview your Drupal content in context. Only appears once a successful connection is established. |

## Per-job options

When you submit an individual TMGMT job to this provider, you can additionally
set: a **project template** (apply a Phrase template with its translation
memories, term bases, and providers), a **due date** (forwarded to Phrase), and
**group jobs** / **force new project** options that control whether several jobs
share one Phrase project.

## Getting translations back

Once content is out for translation, results return by any of:

- **Cron** — if you enabled cron pulling, within the active-hours window.
- **The Pull translations button** — on an active job, pull on demand.
- **The webhook** — Phrase POSTs to `/tmgmt_memsource_callback` when a job's
  status changes, and the module imports that job part.

You can also bulk-pull every outstanding translation across all Phrase providers
at `/pull_all_remote_translations` (this route is correctly permission-gated,
requiring *administer tmgmt* and *accept translation jobs*).

## Security notes — please read before going live

- **Stored password is only reversibly encoded, not encrypted.** The module saves
  the Phrase password in Drupal configuration using a reversible hex encoding
  (prefixed `MEMSOURCE_V2___`), which is effectively plaintext-in-config. Treat
  any configuration export containing this provider as a secret: keep it out of
  public version control, and prefer a dedicated Phrase TMS user with only the
  access it needs.
- **The incoming webhook is unauthenticated.** The `/tmgmt_memsource_callback`
  route is reachable anonymously with no shared secret, token, or signature check.
  A caller who knows or guesses a valid Phrase project + job-part id could force a
  premature or overwritten import and drive outbound API calls using your stored
  token. There is no in-module setting to lock this down in this version — if this
  is a concern, restrict the route at your web-server/CDN layer (for example allow
  only Phrase's callback source), and watch for a module update that adds
  signature verification. The module root's `security.md` (agent docs) has the
  full write-up.
