# Configuration

External Links works as soon as it is enabled — external links open in a new tab
site-wide. The settings form lets you **scope where** that happens and is where you
manage the module's behaviour.

## Open the settings form

1. Log in as a user with the **`administer external`** permission. This permission
   is marked as restricted-access, so grant it only to trusted roles.
2. Go to **Configuration → Content authoring → External Links**, or navigate
   directly to `/admin/config/content/external`.

## Page scope — where the behaviour applies

The main control is **which pages** the "open in a new tab" behaviour runs on. You
can enable or disable the module's effect on a per-page basis — for example, apply
it across the site but exclude a particular section, or restrict it to specific
paths. Set this to match your editorial policy for outbound links.

## The attributes it adds

External Links adds the `target` behaviour via JavaScript (so your stored markup
stays valid) along with the `rel` attributes appropriate for opening a link
elsewhere. Two of these are essential rather than cosmetic, and you should confirm
they are in place:

- **`rel="noopener"`** — prevents the newly opened page from reaching back into
  your page through `window.opener`. Do not open links in a new tab without it.
- **A visible and announced "opens in a new window" indication** — so that
  sighted and screen-reader users alike know the context is about to change. An
  icon on its own is not sufficient; the cue needs to reach assistive technology
  through the link's accessible name.

## Save

Click **Save configuration**. Changes take effect on the next page load.

> **A reminder before you finish:** "open in new tab" removes the back button and
> changes context, so keep its scope as narrow as your requirement genuinely needs
> — and never ship it without `rel="noopener"` and an announced new-window cue.
