# Configuration

The module does nothing until you tell it which links to hide — by default every
contextual link stays visible, exactly as core provides it.

## Open the settings form

1. Log in as a user with the permission this module provides for administering
   contextual links (an administrator has it by default).
2. Go to **Configuration → User interface → Configure Contextual Links**, or
   navigate directly to
   `/admin/config/user-interface/configure-contextual-links`.

## Choose which links to disable

The form lists the contextual link **plugins** registered on your site — entries
such as "Block configure", "Menu edit", or "Media delete". Each one has a
checkbox. Tick a plugin to **disable** that contextual link, and it will stop
appearing everywhere it would normally show. Leave a checkbox unticked to keep the
link as it is.

Because the module works at the plugin level, disabling (for example) the block
delete link removes it from every block's contextual menu at once — you do not
configure this block by block.

## Save

Click **Save configuration**. The change takes effect immediately: reload a page
that had the link and the pencil menu will no longer offer it.

## A note on what this does and doesn't do

Hiding a contextual link is a **display** change only. It does not revoke any
permission — a user who could perform the operation before can still reach it
through other routes (for example the block's own management page). If your goal is
to *prevent* an action rather than just tidy the interface, adjust the relevant
Drupal permission instead. Use this module to declutter the editor experience and
keep tempting but unwanted shortcuts out of sight.
