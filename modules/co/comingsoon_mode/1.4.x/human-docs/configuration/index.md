# Configuration

Everything about Coming Soon Mode is controlled from one settings form. Nothing
happens to your site until you activate the mode here.

## Open the settings form

1. Log in as a user with the **Administer site configuration** permission (an
   administrator by default).
2. Go to **Configuration → System → Coming Soon Mode**, or navigate directly to
   `/admin/config/system/comingsoon_mode`.

## Turn the mode on (and off)

The form's main switch activates or deactivates "coming soon" mode. While it is
**on**, requests from anonymous visitors — and any user who lacks the bypass
permission — are redirected to your landing page. While it is **off**, the site
behaves normally. This is the switch you flip on launch day.

## Choose who may bypass the gate

Two things decide who still sees the real site:

- The **`access website in comingsoon mode`** permission — grant it (at
  **People → Permissions**) to the roles that should never be redirected, such as
  your build team. Make sure this is set *before* you enable the mode so you don't
  lock yourself out.
- **Role‑based access** in the form — the module can restrict or allow access
  based on the roles you choose, and logged‑in users can be let through per your
  configuration.

Login and password‑reset routes (and, optionally, registration) always remain
reachable, along with static assets, so people can still sign in to gain access.

## Design the landing page

The rest of the form customizes what anonymous visitors see. The available
options include:

- **Title** and **message** — the headline and body text on the page.
- **Countdown timer** — a launch date (in `Y/m/d` format) that drives a dynamic
  JavaScript countdown, plus a toggle to show or hide the counter.
- **Logo** — upload/point to your site logo, with a toggle to display it.
- **Image** and **background** — a main image, a background colour, and an option
  to use a background image instead.
- **Social media and contact links** — a toggle to show them, plus fields for
  Twitter, Facebook, Instagram, LinkedIn, an email address, and a phone number.

The page supports right‑to‑left layouts, is translatable for multilingual sites,
and is responsive across screen sizes.

## Save

Click **Save configuration**. If you activated the mode, open the site in a
private/incognito window (or as a user without the bypass permission) to confirm
the landing page appears as intended — and check that your own privileged role can
still reach the real site.

## Advanced: override the template

Developers can fully restyle the page by adding a `comingsoon.html.twig` template
to their theme's `templates` folder. The template receives variables for every
field above — for example `data.title`, `data.message`, `data.countDownDate`,
`data.image`, `data.logo`, `data.backgroundColor`, the various display toggles,
and the social/contact values — so you can build a completely custom layout.
