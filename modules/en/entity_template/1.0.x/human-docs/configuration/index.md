# Configuration

Configuring Entity Template means defining the **builders** and **template
blueprints** that drive the build flow — and, critically, **hardening the build
routes** before anyone can reach them.

## Define a builder and blueprints

Using the module's admin UI, create a **builder**. A builder holds one or more
**template blueprints**: pre‑defined entity templates whose values can include
**tokens** filled from **parameters** collected during the build. Set up the
parameters the build should ask for, the blueprint(s) a user may choose from, and
the tokenised field values each blueprint supplies.

## Run the build flow

Once a builder is configured, users go through the build UI under
`/entity_template/build/*`, which walks them through three stages:

1. **Parameters** — supply the values the template's tokens need.
2. **Select** — choose which blueprint to build from.
3. **Edit** — land on a normal entity edit form, pre‑filled from the chosen
   template, and save to create the new entity.

## Required hardening — lock down the build routes

**This step is not optional for any site that untrusted users can reach.** As
shipped (1.0.0‑alpha15):

- Every build route under `/entity_template/build/*` is declared with
  `_access: 'TRUE'`, so the routes are reachable by **anyone, including anonymous
  visitors**.
- The final edit step renders the entity form via the standard entity form builder
  **without a create‑access check**.

The consequence is that, once any builder exists, an anonymous visitor can create
entities of the configured type without holding any permission to do so. Before
using this module on a public or production site, gate the build routes properly —
for example by requiring a real permission, or an `_entity_create_access`
requirement matching the entity type being created — so that only authorised users
can run the build flow. Until you do, keep the module off any environment that
untrusted users can reach.
