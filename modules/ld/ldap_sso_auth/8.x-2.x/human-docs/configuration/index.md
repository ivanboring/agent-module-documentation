# Configuration

Open the settings form at **Administration → People → LDAP servers → LDAP SSO
Auth** (`/admin/config/people/ldap/sso-auth`). It requires the **Administer site
configuration** permission. Before you touch it, make sure the LDAP suite is
already working: `ldap_servers` must define a directory connection (over **LDAPS
or StartTLS**, with the **bind credentials stored as a secret**), and
`ldap_authentication` must be able to log an LDAP user in. This module only
supplies the identity; the suite does the directory work.

## The settings, field by field

- **SSO variable** — the server variable the module reads to learn who the user
  is. **Keep this on `REMOTE_USER`** (or `REDIRECT_REMOTE_USER`). This field is
  free text and is fed straight to the request environment, so pointing it at any
  `HTTP_*` name would let a client set your site's identity via a request header —
  a full authentication bypass. This is the single most important field on the
  form; treat it as security‑critical and make sure your edge strips whatever
  header the origin trusts.
- **Seamless login** — controls whether login happens automatically on each
  request (the seamless behaviour) as opposed to being triggered more explicitly.
  Leave it on for the "already logged in when I arrive" experience this module is
  built for.
- **Split user / realm** — when your directory delivers names as `user@realm`
  (common with Kerberos), enable this to strip the `@realm` suffix before the
  LDAP lookup, so the bare username is what gets matched.
- **Strip domain name from the remote user** — similarly, strips a Windows‑style
  domain prefix from the remote username before the lookup. Use whichever of this
  and the realm split matches the format your web server actually delivers.
- **Excluded paths** — a list of paths where SSO handling should not apply. Use
  this to keep specific routes out of the automatic‑login flow.
- **Excluded hosts** — a list of hostnames where SSO handling should not apply,
  for sites served under more than one host where only some should do SSO.
- **Redirect on logout** — when enabled, sends the user to a specific place after
  they log out (useful so they are not immediately re‑authenticated straight back
  in).
- **Logout redirect path** — the destination used when "redirect on logout" is
  on.
- **Enable login confirmation message** — toggles the "you are now logged in"
  message. Turn it off for a fully silent, seamless login.

## The trust model — the whole security story

- **The web server is the authenticator; Drupal trusts the variable it is
  handed.** There is no password check anywhere in this flow, by design.
- **The `ssoVariable` field is the attack surface.** Keep it on `REMOTE_USER`,
  strip inbound copies of the trusted header at the edge, and never expose the
  form to untrusted administrators.
- **The LDAP server's bind method matters.** The form correctly refuses to run
  SSO against a server configured to bind as the *user* (or as an anonymous
  user), because with SSO the user's own credentials are never available to bind
  with. Configure the LDAP server with a service‑account bind for SSO to work.

## A known issue to be aware of

If a logged‑in user is **deleted from Drupal** while their browser still holds a
valid session cookie, this module sees the existing session and does not
re‑create the account — the person gets "access denied" instead of being
re‑provisioned. The workaround is for that user to clear cookies or use a fresh
incognito window so a new session (and a fresh SSO login) begins.

## Save

Click **Save configuration**, then re‑verify from an incognito window that
anonymous pages still return 200, and from a domain‑joined browser that seamless
login works.
