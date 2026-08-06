<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia VWO integrates VWO (Visual Website Optimizer) with enhanced data capture, so experiments can segment on Drupal's own content metadata.

---

A/B testing tools see a page; they do not see that it is an Article in the Pricing section tagged for a particular audience. Enhanced data capture closes that gap by passing Drupal's content metadata — content type, taxonomy terms and similar, hence the `node` and `taxonomy` dependencies — into VWO, so experiments and reports can segment on things the CMS knows and the testing tool otherwise cannot.

The visibility configuration is the part to get right. Three routes cover settings, visibility and the VWO account id, which means an implementer decides deliberately which pages carry the script rather than loading it everywhere.

**Two things belong in any A/B testing deployment and neither is the module's to solve.** The VWO script is a **third-party script with client-side page-modification capability** — it can rewrite content before the visitor sees it, which is the feature, and it also means the vendor's account is part of your site's trust boundary. And it sets cookies for visitor bucketing, so on an EU-facing site it needs consent gating like any other non-essential tracker; `usercentrics` or `consent_mode` are how that is arranged.

The permission `administer acquia vwo` is not marked `restrict access`, which is worth noting given it controls a script that can alter what visitors see.

---

- Run an A/B test on a Drupal site.
- Segment experiments by content type.
- Segment by taxonomy term.
- Pass content metadata to VWO.
- Control which pages carry the VWO script.
- Configure the VWO account id.
- Report experiment results by section.
- Gate the VWO script behind consent.
- Document VWO cookies in a privacy notice.
- Treat the VWO account as part of the trust boundary.
- Restrict who may configure VWO.
- Avoid loading the script site-wide.
- Test a pricing page variant.
- Measure a change before rolling it out.
- Audit third-party scripts on a site.
