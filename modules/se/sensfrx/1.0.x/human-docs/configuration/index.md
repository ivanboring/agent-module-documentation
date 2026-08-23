# Configuration

Configuring SensFRX is three steps: connect your SensFRX account, choose which
activities to protect, and set the policies that decide what happens at each risk
level.

## 1. Connect your account (Setup)

Immediately after you enable the module you are redirected to **Administration →
SensFRX → Setup**. There:

1. Enter the **email** you used when signing up on the SensFRX portal — use the
   same address so the accounts link.
2. Provide your **Property ID** and **Property Secret Key** from your SensFRX
   account, which authenticate the connection between Drupal and SensFRX.
3. Once verified, the connection is created and your dashboard becomes available.

Store the Property Secret Key securely — as an environment variable — rather than
leaving it in plain configuration.

## 2. Review the dashboard

After a successful connection you land on **Administration → SensFRX → Dashboard**,
where you can view activity, risk scores, device intelligence, and recent events as
SensFRX evaluates traffic on your site.

## 3. Choose protected activities and policies

Configure **which activities you want to protect** — for example registrations,
logins, profile updates, comments, and (with Drupal Commerce) orders — and set your
**fraud‑prevention policies**: **Allow**, **Block**, or **Review**, based on the
risk score SensFRX returns for each event. This is where you decide how aggressive
the protection is and where you'd rather review borderline cases by hand.

## Important: webhook and TLS security

SensFRX communicates decisions back to your site through webhook callbacks. As
shipped in **1.0.2**, those callback routes (`/sensfrx/webhook` and
`/sensfrx/transaction_webhook`) accept **anonymous** requests and act on an
**unsigned** body — so, on a Commerce store, a crafted request could force an
order to *completed* or trigger a *cancel/refund* without any signature check.
Separately, the module's outbound API calls disable TLS certificate verification,
which exposes your credentials to interception.

Before relying on this in production you should ensure inbound webhooks are
signature‑verified and that TLS verification is enabled — see the caveats in the
[main guide](../index.md). Also remember that on a site without Drupal Commerce
Payment the shipped code can fail to register its routes at all.
