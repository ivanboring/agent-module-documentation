<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# System Messages Override (system_messages_override) — agent index

Replaces the wording of Drupal's built-in status/warning/error messages. Form at
`/admin/config/system/messages-override`; `administer system messages override config` is
`restrict access: 'TRUE'`. No dependencies. Version **1.0.2**. Core requirement `^10 || ^11`.

**Why not the usual routes:** a *translation override* is odd on a monolingual site and hides the
change in the interface-translation UI; a `hook_form_alter` per message is code for a wording
change. A configuration screen is the right size for the job.

**Two things to keep in mind:**
1. **A replaced message loses its translations.** Core strings ship with community translations; a
   custom replacement starts from nothing. On a multilingual site, check how the override
   interacts with the translation layer before rewording anything.
2. **Error messages carry meaning support and logs depend on.** Rewording "Access denied" into
   something friendlier helps the visitor and can make a support conversation harder — keep enough
   specificity that someone can still tell which condition fired.
