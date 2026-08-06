<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Usercentrics CMP embeds the Usercentrics consent banner and holds back third-party scripts until the visitor has consented to the matching data processing service.

---

A consent management platform is only useful if it actually gates the scripts it describes, and this module's real work is that gating rather than the banner itself. It defines a `usercentrics_app` configuration entity — one per data processing service — carrying the Usercentrics service id and the JavaScript that belongs to it, and ships ready-made entities for Google Analytics, GA4, Google Tag Manager, Matomo and self-hosted Matomo. A custom `UsercentricsJsCollectionRenderer` replaces core's, so scripts belonging to a declared app are emitted in the form Usercentrics expects — `type="text/plain"` with the service id attached — and are only executed once consent is recorded. An ordering form controls the sequence in which apps are presented.

Two permissions: `administer usercentrics` (`restrict access: true`) for the settings and app entities, and `use usercentrics`, a non-restricted permission that lets ordinary visitors open the preference UI. The settings form takes the Usercentrics settings id and the ruleset, which is what binds the site to a Usercentrics account.

Worth being clear about the boundary: this module makes consent enforceable for the scripts you have modelled as apps. Anything attached by a theme, another module or a hard-coded tag in a template is untouched, and a CMP that leaves half the trackers ungated is a compliance report that does not match reality. When you add a tracking integration, add the matching `usercentrics_app` in the same change.

---

- Show the Usercentrics consent banner on a Drupal site.
- Hold back Google Analytics until the visitor consents.
- Gate Google Tag Manager behind a consent decision.
- Gate Matomo, hosted or self-hosted, behind consent.
- Declare a custom data processing service for an in-house script.
- Attach arbitrary JavaScript to a consent category.
- Control the order data processing services are listed in.
- Let visitors reopen their consent preferences.
- Bind the site to a Usercentrics settings id and ruleset.
- Keep consent configuration in exported config.
- Audit which scripts on a site are actually gated.
- Migrate from a home-grown cookie banner to a CMP.
- Satisfy a GDPR requirement for prior consent to tracking.
- Delegate consent-preference access without granting admin rights.
- Add a new tracker and its consent entry in one change.
- Verify that a script really is deferred until consent.