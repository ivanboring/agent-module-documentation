<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GraphQL Webform (graphql_webform) — agent index

Exposes **Webform** definitions and submission handling over **GraphQL**. Requires
`webform 6.x` and `graphql 5.x`. Submodule `graphql_webform_captcha`.
Version **3.0.0-beta1** — **beta**. Core requirement `^10.3 || ^11`. Declares `php: 8.3`.

**Why forms are the hardest thing to decouple:** a front end must reproduce every field, its
validation, its conditional logic, options and error messages — all of which live in **Webform
configuration and change when an editor edits the form**. Reimplementing means the two **drift**,
and drift shows up as a form that accepts what the server rejects. Exposing the **definition**
inverts it: the front end renders from the answer, so an editorial change lands without a
deployment.

**Three things to establish:**
1. **Server-side validation is the only validation.** A decoupled client is entirely under the
   submitter's control — every constraint Webform declares must be enforced on arrival.
2. **Spam protection is why the captcha submodule exists.** An unprotected form endpoint is found
   and abused quickly, and **honeypot/time-based checks that work by rendering hidden fields do not
   survive a client that renders its own form**. The protection must work over an API.
3. **File uploads and multi-step forms are where these integrations stop being complete.** Check
   both against the site's real forms, not a simple contact form.
