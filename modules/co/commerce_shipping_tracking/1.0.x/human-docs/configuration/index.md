# Configuration

Commerce Shipping Tracking needs a short setup before customers can use it: map
your shipment workflow states to readable labels, choose the messages the form
shows, place the lookup block, and review who is allowed to use it.

## Open the settings form

1. Log in as a user who can administer Commerce configuration.
2. Go to **Commerce → Configuration → Shipping → Shipping Tracking**, or navigate
   directly to `/admin/commerce/config/shipping_tracking`.

## Map shipment states to labels

The core of the configuration is mapping the **machine names** of your shipping
workflow states to the **labels** you want customers to see. For each state in the
shipment workflow (for example a "shipped" or "ready for delivery" state), enter
the friendly text that should be displayed when an order is in that state. States
you don't map won't be shown with a custom label, so cover the ones customers care
about.

## Success and error messages

Configure the two messages the lookup form uses:

- **Success message** — shown when an order is found and its status can be
  reported.
- **Error message** — shown when no matching order is found (or the lookup can't
  return a status).

Keep the error message deliberately generic — see the security note below.

Click **Save configuration** when done.

## Place the tracking block

The customer‑facing lookup form is provided as a **block**. To show it:

1. Go to **Structure → Block layout**.
2. In the region where you want the form, click **Place block** and choose the
   Commerce Shipping Tracking block.
3. Configure the block's visibility (which pages it appears on) and save.

## Permissions

The module provides its own permission(s). Review them at **People → Permissions**
and grant the ability to use the tracking form only to the roles that should have
it. If the form is meant for logged‑in customers, do not grant it to the anonymous
role unless you intend the lookup to be public.

## Security note — avoid order enumeration

An order‑status lookup can leak information if it lets someone check arbitrary
orders. To keep it safe:

- Require **enough identifying information** in the lookup (not just an
  easy‑to‑guess order number) so a stranger can't fish for other people's orders.
- Where possible, scope the form so a customer only sees **their own** orders.
- Keep the **error message generic** ("No order found") so responses don't reveal
  whether a given order number exists.
- Use the module's **permission** to restrict who can access the form.
