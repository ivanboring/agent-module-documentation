<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Target Attributes Filter is a text filter that adds a configurable target attribute (e.g. _blank) to hyperlinks, with options for which links and whether to replace existing targets.

---

Opening external links in a new tab is a common editorial wish. Target Attributes Filter adds a target attribute to links via a text-format filter. The attribute VALUE is a filter SETTING configured by the administrator on the text format (default _blank/_self), not something content authors specify per link, so it is admin-controlled and not an XSS vector — it sets a fixed target on matched links. The one security-adjacent note is tabnabbing: a link with target=_blank lets the opened page access window.opener unless rel=noopener is set; modern browsers apply noopener implicitly for target=_blank (since ~2021), so this is largely mitigated, but if you support older browsers, ensure noopener is added. Configure which links get the target (all, or external only) to match intent.

---

- Add target=_blank to links.
- Open links in a new tab.
- Configure the target attribute.
- Target external links only.
- Set a link target via filter.
- Rely on implicit noopener.
- Add noopener for old browsers.
- Choose which links get a target.
- Replace existing targets.
- Apply as a text filter.
- Improve external-link UX.
- Confirm the target scope.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.