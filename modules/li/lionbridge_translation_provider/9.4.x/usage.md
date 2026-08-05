<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Lionbridge Translation Provider connects TMGMT to Lionbridge's Content API, so translation jobs created in Drupal are sent to a commercial translation vendor and the completed translations come back into the same workflow.

---

TMGMT is Drupal's translation-management framework — jobs, job items, review and acceptance — with a translator plugin per service. This project supplies the Lionbridge one. The naming is the first thing to know: the **project is `lionbridge_translation_provider` but the module is `tmgmt_contentapi`**, so `drush en lionbridge_translation_provider` fails and the composer package and enable command disagree. Configuration happens through TMGMT's translator collection rather than a page of its own, and the dependency is `tmgmt`. This is vendor integration rather than machine translation: jobs go to human translators under a commercial contract, which means an account, credentials and a per-word cost, and it is worth being clear about that distinction when this appears alongside `ai_tmgmt` (wave 64) in the same list — one buys human translation, the other runs an LLM, and they solve different problems at very different price points and quality levels. Credentials for the Content API are secrets and belong in an environment variable rather than exported configuration.

---

- Send translation jobs to Lionbridge.
- Use professional human translators.
- Manage vendor translation from Drupal.
- Track job status inside TMGMT.
- Review translations before acceptance.
- Meet a quality requirement machine translation cannot.
- Translate legal or regulated content.
- Route some languages to a vendor.
- Keep translation workflow in Drupal.
- Reconcile vendor costs against jobs.
- Support a large localisation programme.
- Combine vendor and machine translation.
- Send a batch of content for translation.
- Receive completed translations automatically.
- Support a contracted translation supplier.
- Keep source content in Drupal.
- Manage multilingual publishing centrally.
- Audit which content was professionally translated.
