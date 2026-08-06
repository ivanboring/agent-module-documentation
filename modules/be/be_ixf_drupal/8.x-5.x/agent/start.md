<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BrightEdge Autopilot (be_ixf_drupal) — agent index

BrightEdge Instant eXperience Framework: fetches vendor-managed "capsules" server-side and injects
them into pages. Configure at `/admin/config/services/brightedge`. Version **8.x-5.10**.
Core `^8 || ^9 || ^10 || ^11`. No `permissions.yml`.

Classes: `Service/BrightEdgeService`, `Factory/BrightEdgeFactory`, `Form/AdminForm`,
`Plugin/Block/IXFContentBlock`, `EventSubscriber/RedirectHTTPHeaders`.

**The settings route requires a permission that does not exist:**

```yaml
requirements:
  _permission: 'administer'
```

**Verified:** `administer` is absent from `user.permissions` (there is no such core permission —
core's are `administer site configuration`, `administer users`, …). This **fails closed**:
`hasPermission()` returns TRUE only for `is_admin` roles, so the form is administrator-only by
accident. Consequence is a broken delegation model, not an exposure — the permission can never be
granted, so an SEO role cannot be given the settings page.

Three points to raise for any server-side injection integration:

- **Vendor is in the render path** — check the SDK's timeout and failure behaviour before putting
  this on a high-traffic template.
- **Injected content is unreviewed content under your domain** — the trust boundary now includes
  whoever can publish a capsule in the BrightEdge account.
- Capsules are placed via `IXFContentBlock`, so block visibility conditions still apply.