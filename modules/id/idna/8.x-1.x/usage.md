<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
IDNA provides an IDNA (Internationalized Domain Name) conversion service, converting between Unicode and Punycode domain forms.

---

Internationalized domain names (with non-ASCII characters) are represented in ASCII as Punycode for DNS; converting between the two is needed for validation and display. IDNA provides a conversion service and a demo page. It is a developer utility with no security surface of its own. One general note: IDN handling is relevant to phishing (homograph attacks use lookalike Unicode domains), so any code that validates or displays domains should be aware of that — this module provides the conversion primitive, not a phishing defence.

---

- Convert a domain to Punycode.
- Convert Punycode to Unicode.
- Handle internationalized domains.
- Validate an IDN.
- Display an IDN correctly.
- Provide an IDNA service.
- Use the conversion primitive.
- Support non-ASCII domains.
- Be aware of homograph phishing.
- Convert domain forms.
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
- Use deliberately.
- Review after upgrades.