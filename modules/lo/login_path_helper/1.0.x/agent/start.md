<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# login_path_helper — agent start

One block ("Login Path Helper") that renders a login link whose target embeds the **current page path**
as a `destination`, so users return to where they were after login/SSO. Config at
`/admin/config/login_path_helper` (perm `administer site configuration`): `login_path_helper_linkname`
(text) and `login_path_helper_urlprefix` (default `user/login?destination=`; SAML: `saml_login?destination=`).
Block cache max-age is 0. No dependencies, no own permissions.

## Security — VERIFIED reflected-XSS hazard (low/moderate)
`src/Plugin/Block/LoginPathHelper.php` `build()` returns:
`'#markup' => "<a href=\"https://".getHost()."/".$urlprefix.getRequestUri()."\">".$linkname."</a>"`.
Both `getRequestUri()` (attacker-influenced request target) and `getHost()` (Host header) are
concatenated into the href **without escaping**. `#markup` runs through `Xss::filterAdmin()`, which does
not strip event-handler attributes, so a request target containing literal `">` plus an allowed tag with
an `on*` handler could break out of the attribute and inject markup. Practical exploitation is limited
because browsers percent-encode special chars in URLs (needs literal bytes in the request target), so
this is a hardening/low-to-moderate reflected-XSS rather than a trivially wormable hole. Fix: build the
URL with `Url`/`Link` and render via a proper render element (or `Html::escape()` the pieces) instead of
raw `#markup` string concatenation.
