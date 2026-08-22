# Configuration

Entity Print Browserless PDF is configured as an **engine choice inside Entity
Print's own settings** — it does not add a separate settings page. You select the
Browserless engine and tell it how to reach your Browserless instance.

## Open the settings form

1. Log in as a user with the **Administer site configuration** permission (an
   administrator by default).
2. Go to **Configuration → Content authoring → Entity Print**, or navigate
   directly to `/admin/config/content/entityprint`.

## Select the PDF engine

On Entity Print's settings page, find the **PDF engine** selector and choose
**Browserless**. Entity Print supports one active engine per document type, so
selecting Browserless makes it the engine used for PDF exports.

## Browserless connection settings

Once Browserless is selected, its connection fields appear:

- **Browserless endpoint / URL** — the address of your Browserless instance that
  Entity Print will POST the print HTML to. Use the full URL for your
  self‑hosted server or the hosted Browserless service.
- **Token** — the access token your Browserless instance requires (the hosted,
  paid service uses one). This is a **secret**: do not paste a production token
  into a form that gets committed to configuration in plain text. Prefer storing
  the value in an environment variable and referencing it (for example via the
  [Key](https://www.drupal.org/project/key) module) so the secret never lands in
  exported config or version control.

Requests are sent over Drupal's Guzzle HTTP client with TLS by default; keep the
endpoint on `https://` so the token and your content are encrypted in transit.

## Save

Click **Save configuration**. Then generate a PDF from any Entity Print print
link to confirm Browserless is producing the document.

## Security note — server‑side requests to a configured URL

This engine makes your web server send an HTTP request to the URL configured
above, carrying your rendered content and the token. That is an outbound
(egress) request to an **administrator‑controlled address**. Because the target
URL is configurable, restrict who can reach this settings form to trusted
administrators only, and point it exclusively at a Browserless endpoint you
control or trust. A misconfigured or attacker‑influenced endpoint would receive
your print HTML and could be abused to reach internal network locations from the
server. Locking the settings form down to trusted admins and using an
explicit, known `https://` endpoint keeps this safe.
