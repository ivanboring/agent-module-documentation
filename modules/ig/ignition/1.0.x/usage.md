<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Ignition Error Handler swaps Drupal's error page for spatie/ignition — the error screen with a readable stack trace, source excerpts, request context and, distinctively, suggested solutions for the error in front of you.

---

Drupal's own verbose error page is a wall of text; Ignition presents the same information as something you can read, with the failing line highlighted and the frames navigable. The solution providers are the interesting part: the module ships several Drupal-specific ones — `EntityQueryAccessCheckSolutionProvider`, `PermissionsMustExistSolutionProvider`, `MysqlReadCommittedSolutionProvider` — that recognise common Drupal mistakes and say what to do about them, plus an `OpenAISolutionProvider` that will ask a model.

**The access model is layered and correct, which is worth noting because error handlers frequently get it wrong.** `ErrorHandlerSubscriber` checks four things before rendering anything: the user holds `view ignition error page`, the module is enabled in configuration, the error level is `ERROR_REPORTING_DISPLAY_VERBOSE`, and errors are displayable. Any one of those failing falls back to Drupal's normal handling.

Two things to weigh. **`view ignition error page` is not marked `restrict access`, and what it grants is source code, stack traces and request context** on any error — that is the module's purpose, and it is also a permission that should not be handed out casually or left granted on a production site. And `/_ignition/update-config` accepts a POST from any holder of that permission and writes the posted JSON to user data, session, or — when `store_settings_file` is on — to `~/.ignition.json` on the server, with **no CSRF token** despite being state-changing. The impact is limited to Ignition's own display preferences, but the file variant is shared by everyone.

The `package: Development` designation is accurate. Treat it as `vitals_extra`'s dev-modules check would.

---

- Read a stack trace that is actually readable.
- See the failing line with surrounding source.
- Get a suggested fix for a common Drupal error.
- Recognise an entity query missing an access check.
- Recognise a permission that does not exist.
- Diagnose a MySQL isolation level problem.
- Ask a model for a solution to an unfamiliar error.
- Fall back to Drupal's handler outside verbose mode.
- Restrict error pages to developers.
- Keep the module out of production.
- Audit a production site for the module.
- Revoke the permission after debugging.
- Configure Ignition display preferences.
- Store preferences per user rather than in a file.
- Speed up debugging on a local site.
- Understand what the permission actually grants.