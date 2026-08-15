# Configuration

Layout Builder Advanced Permissions has **no settings form** — you configure it entirely by
enabling submodules and assigning permissions at **People → Permissions**
(`/admin/people/permissions`). The base module supplies the framework and one permission; the
granular permissions come from the [submodules](../installation/index.md#submodules--enable-the-granular-permissions-you-need).

## The permissions

- **Access Layout Builder page** — the base gate for editing **per‑entity layout overrides**.
  See the security note below before granting it broadly.
- **Configure own editable {bundle} {entity type} layout overrides** — a dynamic permission
  generated for each display that allows custom (per‑entity) overrides. It lets a user edit
  overrides on entities of that bundle **that they own** (combined with core update access).
- **Submodule permissions** — once you enable a submodule, its permissions appear on the same
  page, for example:
  - *Global:* "create/edit/remove layout builder sections", "create/config/remove/reorder
    layout builder blocks".
  - *Per content type:* "add blocks on article nodes", "remove sections on page nodes", etc.
  - *Per layout type / per bundle / block operations per layout / block types per layout:*
    permissions scoped to specific layouts, bundles, or inline block types.

## How the granular permissions combine (important)

For a given layout action, the module loads only the permission checks whose scope matches the
current context (operation, layout, entity type, bundle, block type) and **AND‑combines** them.
Two consequences follow:

- **AND semantics — more submodules means stricter, not looser.** If both the *Global* and *Per
  content type* submodules contribute a matching check for the same action, the user needs
  **both** permissions. Enabling additional granular submodules can only tighten access.
- **Default allow when nothing matches.** If **no** permission check applies to an action, it is
  **allowed** by default. This is why simply enabling the base module (which ships no granular
  checks) does not restrict individual block/section operations — you must enable and configure
  the submodules for them to actually be gated.

For **template (default) layouts**, core's powerful `configure any layout` permission is
additionally required, so those stay locked down. The concern below is specifically about
**per‑entity overrides**.

## Security note — treat "Access Layout Builder page" as privileged

The **Access Layout Builder page** permission sounds view‑only, but it is not. In the module's
overridden overrides‑storage access check, holding this permission **alone** authorizes editing
the layout override of **any** overridable entity — there is no ownership check on that path
(the ownership‑scoped "configure own editable …" permission is only one branch of an OR). And
because per‑operation checks default to *allow* when no submodule plugin matches, a site that has
enabled only the base module leaves block/section add/config/remove/reorder gated by nothing more
than *Access Layout Builder page*.

Net effect: granting this innocuous‑sounding permission to a low‑trust role — without also
enabling and configuring the granular submodules — lets that role add, configure, remove and
reorder blocks and sections on **other users' content layouts**, a capability core normally
reserves for `configure any layout`.

**Recommendations:**

- Treat *Access Layout Builder page* as a privileged permission; grant it only to roles you
  trust to edit layouts.
- **Enable the granular submodules** and grant the specific per‑operation / per‑bundle
  permissions, so the access manager actually restricts rather than defaulting to allow.
- Note that on a **fresh install** the base module ships no granular permissions (only
  `layout_builder_perms_global` is auto‑enabled on *update*, not on fresh install) — so plan to
  enable the submodules you need yourself.

## Where to configure

- **Enable submodules:** **Extend** (`/admin/modules`).
- **Grant permissions:** **People → Permissions** (`/admin/people/permissions`). The permissions
  are ordinary role permissions and can be exported in configuration.
