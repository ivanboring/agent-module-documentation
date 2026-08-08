<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce CyberSource integrates the CyberSource payment gateway via Secure Acceptance Hosted Checkout (SAHC) and Flex Microform — card data goes to CyberSource, and the payment response signature is verified.

---

CyberSource is a major payment gateway; Commerce CyberSource integrates it with Drupal Commerce using Secure Acceptance Hosted Checkout (SAHC) and Flex Microform. Two security-critical properties were reviewed and both hold. First, it uses SAHC/Flex, so card data is entered against CyberSource (or via CyberSource's Microform), not posted through the Drupal server — reducing PCI scope, the correct architecture. Second, and most important, the payment response IS signature-verified: `validateResponse()` recomputes the HMAC-SHA256 over the signed fields with the shared secret key and rejects the response if the signature does not match, and `onReturn()` throws a payment exception on failure — so a forged 'payment accepted' response without a valid signature is rejected, which is exactly the check payment integrations most often get wrong. One minor deviation: the signature comparison uses `==` rather than the constant-time `hash_equals()`, a timing-side-channel best-practice issue that is network-impractical to exploit against an HMAC (recorded, low severity). Configure the secret key securely, keep the CyberSource credentials out of plain config, and the integration's validation is sound.

---

- Take payments via CyberSource.
- Use Secure Acceptance Hosted Checkout.
- Use Flex Microform.
- Keep card data off the server.
- Reduce PCI scope.
- Verify the response signature.
- Reject forged payment responses.
- Configure the secret key securely.
- Keep credentials out of config.
- Prefer hash_equals for the signature.
- Integrate a major gateway.
- Process card payments.
- Confirm SAHC configuration.
- Handle the payment return.
- Sign the request fields.
- Protect the shared secret.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.