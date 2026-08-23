# Configuration

Simple Decoupled Preview is configured on one settings form, plus a log listing for
reviewing preview activity.

## Open the settings form

1. Log in as a user with the **Administer simple decoupled preview** permission.
2. Go to **Configuration → Web services → Simple Decoupled Preview**, or navigate
   directly to `/admin/config/services/simple_decoupled_preview/settings`.

## The settings

- **Preview callback URL** (`preview_callback_url`) — the route on your decoupled
  front end that editors are sent to when they click Preview. The front end uses
  this together with the payload to request the draft through JSON:API.
  **Security‑critical:** because the payload concerns unpublished content, this
  destination must not be publicly guessable or unauthenticated.
- **Bundles** (`bundles`) — the content types for which preview is supported. Tick
  the bundles your front end can render as previews.
- **Includes** (`includes`) — the JSON:API relationships (referenced entities) to
  include in the preview payload, so the front end receives the related data it
  needs (images, referenced content, and so on) without extra requests.
- **Delete log entities** (`delete_log_entities`) — whether preview log entries are
  automatically cleared by the module's cron task. **On by default.**
- **Log expiration** (`log_expiration`) — how long, in seconds, a preview log entry
  is kept before it is eligible for deletion. **Defaults to 86400** (one day).
  Preview logs are meant to be temporary, so this keeps the table from growing
  without bound.

## Save

Click **Save configuration**. Preview requests from editors will now be routed to
your callback URL, carrying the includes you selected, for the bundles you enabled.

## Reviewing preview logs

Every preview attempt is recorded as a `preview_log_entity`. To see them, go to
**Configuration → Web services → Simple Decoupled Preview → Preview logs**, or
navigate directly to
`/admin/config/services/simple_decoupled_preview/preview/logs` (you need the
**Administer preview log entity entities** permission). Because the log has Views
data, when an editor reports "preview is broken" you can see exactly what was
requested and when. Old entries expire and are removed automatically per the
settings above.

## Before go‑live

Review the access configuration on the JSON:API preview resource itself — do not
assume it. The preview payload exposes **unpublished** content, so both the callback
URL and the JSON:API resource need to be protected against unauthenticated access.
