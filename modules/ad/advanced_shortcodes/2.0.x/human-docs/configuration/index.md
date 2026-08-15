# Configuration

Advanced Shortcodes has no settings form of its own. You "configure" it by turning
on the **Shortcode filter** in a text format and choosing which shortcodes that
format is allowed to use.

## Enable the shortcode filter on a text format

1. Log in as a user with the **Administer filters** permission (an administrator
   by default).
2. Go to **Configuration → Content authoring → Text formats and editors**
   (`/admin/config/content/formats`).
3. Click **Configure** next to the text format you want the shortcodes to work in
   (for example *Full HTML*).
4. In the **Enabled filters** list, tick the **Shortcode** filter (provided by the
   Shortcode module).
5. A settings section for the filter appears, listing the individual shortcodes.
   **Tick the specific shortcodes you want to allow** in this format — alerts,
   column, row, accordion(s), icon, jumbotron, progress, hr.
6. Check the **filter order** so the Shortcode filter runs in a sensible position
   relative to other filters, and keep the **Limit allowed HTML tags** filter in
   place on any format used by non-trusted users.
7. Click **Save configuration**.

Authors using that text format can now type the shortcodes into their content.

## Important: restrict to trusted formats

Several of the shortcode templates output the author's inner text **without extra
escaping** (the alert, row, column, and accordions templates render their body
markup as-is). That is what lets them produce rich Bootstrap markup, but it also
means an author who can write in a format where these shortcodes are enabled could
insert raw HTML — including a `<script>` tag — which would then run for anyone who
views the content. In other words, enabling these shortcodes effectively trusts
the people who can author in that format.

Practical guidance:

- Only enable the advanced shortcodes on text formats limited to **trusted roles**
  (such as *Full HTML*, available to editors/administrators), never on formats
  available to anonymous or untrusted users.
- Keep core's **Limit allowed HTML tags** filter enabled on any format that
  untrusted users can reach.
- This is the standard "trusted text format" model — the same reason *Full HTML*
  itself is normally restricted.

## What it does not need

There is no admin page, no permission, and no service to configure beyond the text
format filter above. The module attaches its Bootstrap CSS/JS automatically on the
front end and skips admin pages. If your theme already ships Bootstrap and you do
not want the module's copy, you can override that at the theme level.
