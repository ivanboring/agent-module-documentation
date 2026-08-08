<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECA Content Access integrates ECA (Event-Condition-Action automation) with the Content Access module, letting content-access grants be driven by ECA models.

---

Content Access provides per-content-type and per-node access grants; ECA provides no-code automation. ECA Content Access bridges them, so access grants can be set or adjusted by ECA models reacting to events. Because this drives ACCESS CONTROL through automation, its correctness is the correctness of the ECA models built with it — an access rule expressed as an ECA model is as safe as that model, and a mistake grants or denies the wrong access. So building these models is a trusted, security-sensitive activity: restrict who can build ECA models, test the resulting grants against adversarial cases (does the wrong user get access?), and run node_access_rebuild appropriately. It depends on both ECA and Content Access. Powerful, but access-as-automation demands care.

---

- Drive content access from ECA.
- Automate access grants.
- Integrate ECA and Content Access.
- Set grants by ECA model.
- React to events with access changes.
- Restrict who builds the models.
- Test grants adversarially.
- Rebuild node access as needed.
- Model dynamic access rules.
- Treat access-automation as sensitive.
- Combine ECA and Content Access.
- Verify the wrong user is denied.
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