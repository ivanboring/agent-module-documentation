<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Protected Downloads (webform_protected_downloads) — agent index

Gates a file behind a webform submission, issuing a link at
`/webform_protected_file/{hash}/download` (`_permission: 'access content'` — anonymous).
Depends on `webform ^6.2`, core `file`, `token`. **Release is 8.x-1.0-alpha3 — alpha.**

> ## Do not leave `verify_access` on `basic`
>
> On `basic` the **hash is the only authentication**, and the hash is not a secret. From
> `webform_protected_downloads.module:53`:
>
> ```php
> 'hash' => Crypt::hashBase64(implode(':', [$submission->id(), $handler->getHandlerId(), time()])),
> ```
>
> `Crypt::hashBase64()` is an **unkeyed SHA-256** — verified on this site by reproducing the value
> with a plain `hash('sha256', …)`, and by brute-forcing the timestamp component in 5,001 hashes
> over a 10,000-second window. All three inputs are enumerable: submission ids are sequential, the
> handler id is a fixed string (default `webform_protected_downloads`), and `time()` is narrowed by
> the notification email's `Date` header. Anyone can compute the URL for anyone's file.
> Full transcript in the local `security.md`.
>
> **Mitigation:** set `verify_access` to `owner`, `view_submission`,
> `owner_or_view_submission` or `owner_and_view_submission`. Those paths call
> `$submission->isOwner($currentUser)` and `$submission->access('view')` — real checks that do not
> depend on the hash being secret.

Key facts:
- `expire` (minutes) and `onetime` are checked independently of the hash, which limits the window
  but does not fix the scheme.
- The controller skips **all** owner/view checks when `verify_access` is `'basic'`:
  `if (!empty($wpd_settings['verify_access']) && $wpd_settings['verify_access'] !== 'basic')`.
- The handler help text describes the hash as verified "regardless of which option is chosen",
  which reads as reassurance that the link is unguessable. Treat that as a description of a
  lookup, not of a security property.
- Surface: `src/Entity/WebformProtectedDownloads.php`, `src/WebformProtectedDownloadsManager.php`,
  `src/Controller/`, `src/Plugin/WebformHandler/`.
