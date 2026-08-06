<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Ignition Error Handler (ignition) — agent index

Replaces Drupal's error page with **spatie/ignition** — readable stack trace, source excerpts,
request context, suggested solutions. Configure at `/admin/config/development/ignition`.
Version **1.0.4**. Core `^10 || ^11`. `package: Development`.

Permission: `view ignition error page` — **not** `restrict access`.

Solution providers: `EntityQueryAccessCheckSolutionProvider`, `PermissionsMustExistSolutionProvider`,
`MysqlReadCommittedSolutionProvider`, `OpenAISolutionProvider`.

**Cite the access model as correct** — `ErrorHandlerSubscriber` requires all four of: the
permission, `ignition_enabled`, `ERROR_REPORTING_DISPLAY_VERBOSE`, and errors displayable. Any
failure falls back to Drupal's handler.

**Two things to raise:**

1. **What the permission grants is source code, stack traces and request context.** That is the
   purpose, and it is why it should not be granted casually or left on in production. Treat as
   `vitals_extra`'s `DevModules` check would.
2. **`POST /_ignition/update-config` has no CSRF token** despite being state-changing. It writes
   posted JSON to user data, session, or — with `store_settings_file` on — `~/.ignition.json`,
   which is **shared by everyone**. Impact limited to display preferences.