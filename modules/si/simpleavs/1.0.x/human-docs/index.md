# Simple AVS (Age Verification) — manual setup guide

**Simple AVS** (`simpleavs`) is a lightweight, cookie/session-based age-verification
gate. It shows a themable "are you over N?" overlay before your content, for sites
that need to present an age prompt — a bare-minimum approach that is intentionally
simple to set up.

It offers two verification styles: a simple Yes/No question ("Are you over the age of
[configurable age]?") or a date-of-birth entry. You control the minimum age (18+,
21+, or any number you like), how often the modal reappears, and which pages it
covers by include/exclude rules. You can set redirect destinations for both the
success path (old enough) and the failure path (underage), edit the text on the
various labels and buttons, and style the overlay with a preset colour scheme or your
own colours through the UI. Two permissions ship: one for who may configure the
module, and one for roles that are allowed to skip seeing the modal.

**Please read this carefully — it is a genuine limitation, not a caveat to skip.**
Simple AVS is an advisory piece of user-experience, **not** access control. The page
content is rendered in full HTML and the gate is only a JavaScript overlay drawn on
top, so anyone who disables JavaScript sees everything behind it. The "yes, I'm old
enough" path is self-asserted — the module marks the session as passed with no actual
age check — and the date-of-birth path simply trusts whatever date the visitor types
in. The module's underlying token mechanism is sound, but that does not change what
the gate is: it satisfies a "we showed an age prompt" requirement and nothing more.
**Never** rely on it to keep under-age or unauthorised visitors away from content that
genuinely must be protected — use real access control and server-side content gating
for that.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — set the minimum age, the prompt style,
   frequency, page rules, redirects, labels and colours.

## Where it lives in the admin menu

The settings form is at **`/admin/config/simpleavs`**. The configuration is
straightforward; a good way to test it is to set the prompt frequency to "On Every
Page Load" and open a new browser window as an anonymous user (it defaults to showing
on the front page).
