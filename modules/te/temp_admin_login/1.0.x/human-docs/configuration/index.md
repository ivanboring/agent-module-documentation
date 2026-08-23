# Configuration

There is no ongoing settings form to fill in — "configuring" this module means
generating a temporary login link when you need one.

## Generate a temporary login link

1. Log in as a user with the **Administer site configuration** permission.
2. Go to **Configuration → System → Generate Temporary Admin Login Link**.
3. Choose a **role** and set an **expiration time** for how long the link should
   remain valid.
4. Click **Generate link**.
5. Copy the resulting URL and give it to the person who needs access, over a private
   channel.

The recipient logs in simply by opening the link — no password required — and stays
logged in for the window you set.

## Important: what actually happens when someone uses the link

The **role you select is not honoured** in this version. Regardless of the role you
choose, the link logs the visitor in as **user 1**, the site's super‑admin. So even
a link generated for a limited role grants full administrative access.

Two further things to keep in mind:

- The link's token is generated with a **predictable** (non‑cryptographic) random
  source, so do not treat it as a strong secret.
- The link is **reusable** for the whole expiry window — it is not consumed on first
  use. Anyone who later obtains the URL (from browser history, a `Referer` header,
  or web‑server/proxy logs) can reuse it to log in as super‑admin.

Practical advice: set the **shortest** expiry you can, only ever send a link to
someone you trust with full super‑admin, never post it anywhere it could be logged
or cached, and consider blocking or removing the login user afterwards. Treat every
link as a live super‑admin credential until a fixed release honours the stored role
and issues cryptographically secure, single‑use tokens.
