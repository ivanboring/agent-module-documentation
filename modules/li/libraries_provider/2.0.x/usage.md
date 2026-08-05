<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Libraries Provider lets a site choose how each external JavaScript library is served — from a CDN, from a local copy, or from a specific version — rather than accepting whatever the declaring module hard-coded.

---

Modules that need a third-party library declare it in their `libraries.yml`, and the choice they make there becomes the site's choice. Some point at a CDN, which is convenient and means every page load depends on a third party being reachable, sends visitor IP addresses to that host, and requires a CSP allowance — `redoc_field_formatter` in this campaign loads Redoc from jsDelivr with no integrity hash. Others require a local copy, which is right for privacy and air-gapped environments and means the site maintainer must place the files and keep them updated. Neither choice belongs to the module author, and this makes it a site decision with a `libraries_provider_ui` submodule for making it through an interface. Version **2.0.4** on core `^10 || ^11`. Two things to note. The **dependencies are substantial** — `hook_event_dispatcher` and `autoservices`, both architectural modules in their own right, so this brings more than its own weight and that is worth weighing against a smaller intervention like overriding one library in a theme's `libraries-override`. And the reason to want it is usually one of three concrete requirements: a **content security policy** that must enumerate hosts, a **privacy or GDPR** position that forbids third-party requests, or an **offline or restricted network** where a CDN is unreachable. If none of those applies, core's `libraries-override` in a theme handles the occasional case.

---

- Serve a library locally instead of from a CDN.
- Meet a content security policy requirement.
- Avoid third-party requests for privacy.
- Support an air-gapped deployment.
- Pin a library to a specific version.
- Override a module's library choice.
- Reduce external dependencies.
- Serve libraries from an internal mirror.
- Support a restricted network.
- Centralise library decisions.
- Switch a library source without patching.
- Meet a GDPR requirement on third parties.
- Add integrity control over libraries.
- Support an offline environment.
- Standardise library serving across modules.
- Reduce page-load dependency on a CDN.
- Audit which external hosts are used.
- Configure library sources through a UI.
