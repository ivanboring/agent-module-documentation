# Configuration

ConsentX is a connector: the Drupal side is mostly about linking your site to your
ConsentX account, after which the banner and script‑blocking are managed from the
ConsentX platform.

## Connect your ConsentX account

1. Sign in as a user with the permission ConsentX provides for its configuration
   (an administrator by default; check **People → Permissions** to delegate it).
2. Open the ConsentX module settings.
3. Enter your **ConsentX account** connection details to link the site. On
   connecting, your website is **registered with ConsentX automatically** and the
   cookie consent banner becomes active straight away.

## Handle credentials safely

Your ConsentX account credentials / site key are **secrets**. Do not paste them
into configuration that gets committed to version control. Instead:

- Store the value in an **environment variable** and reference it from the site
  (for example via `getenv()` in `settings.php`), or
- Use the **Key** module and reference a Key entity.

Keep the secret out of exported configuration and out of your repository.

## What you configure in the ConsentX console

Because ConsentX is a cloud platform, most of the actual consent behaviour is
configured in the ConsentX console rather than in Drupal, including:

- **Banner appearance** and text.
- **Automatic cookie scanning** and categorisation.
- **Pre‑consent script blocking** rules.
- **Geo‑aware compliance rules** (which regime applies to which visitors).
- The **consent analytics dashboard** and **consent logging**.
- **Google Consent Mode v2** behaviour.

See the vendor documentation at `https://docs.consentx.io` for the full set of
options.

## Privacy and data‑flow note

Consent data flows through the ConsentX third‑party service, and the site needs an
internet connection to reach it. Record this data flow in your own privacy
documentation and vendor/DPA assessments, and make sure your users' privacy notice
reflects the use of an external CMP.

## Verify

Load the front end as an anonymous visitor: the ConsentX banner should appear, and
third‑party scripts should be held back until consent is given. Use the ConsentX
dashboard to confirm consent events are being logged.
