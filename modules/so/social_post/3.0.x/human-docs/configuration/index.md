# Configuration

Social Post itself has little to configure — it provides the framework and an
integrations page, while the real setup happens in each provider module you
install. What deserves your attention here is the permissions and the security
cautions.

## The integrations page

Go to **Configuration → Social API → Social Post**
(`/admin/config/social-api/social-post`). This page lists the provider
integrations you have installed. Each provider module (Mastodon, X, and so on)
adds its own credential form and posting behaviour; follow that module's
documentation to connect an account.

## Permissions

Social Post declares three permissions:

- **view social post user entity lists** — see the lists of connected accounts.
- **delete social post user accounts** — delete users' connections.
- **delete own social post user accounts** — delete one's own connection.

**Grant these carefully.** On this release (3.0.2) the access checks around them
are flawed, described below, so the safe course is to keep all three limited to
trusted administrators.

## Important security cautions

These are real issues in the 3.0.2 code, not hypotheticals:

- **Stored tokens are live credentials.** The `social_post` entity keeps each
  provider's OAuth access token in plain entity storage. Anyone with database or
  backup access effectively holds those tokens. Protect your backups, scope the
  tokens as narrowly as the provider allows, and rotate them if you suspect
  exposure.

- **Do not give "delete own social post user accounts" to a general role.**
  Despite its wording, a holder of this permission can delete **any** user's
  connection, not only their own, by changing the entity id in the delete URL —
  the delete route performs no ownership check. This destroys the target user's
  stored token and breaks their autoposting until they re-authorise. Keep this
  permission with administrators only.

- **The "view" grant is over-broad.** A holder of *delete own social post user
  accounts* can also read every connection entity, with no ownership test. On its
  own the module does not render the token field, but a provider module that lists
  connections could turn this into token disclosure — another reason to restrict
  these permissions tightly.

Site administrators (with *administer site configuration*) bypass these handlers
as normal. If you maintain the module, the fixes are to add an entity-access
check to the delete route and make both view and delete ownership-aware; until
then, treat the permissions as administrator-only.
