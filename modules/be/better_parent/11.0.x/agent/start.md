# Better Parent — agent index

Front-end-only enhancement: turns the core menu "Parent item" `<select>`
(`#edit-menu-menu-parent`) into a collapsible, browsable tree. No config, no permissions, no PHP
API, no dependencies beyond core `jquery`. Enabling the module is the entire setup — nothing to
configure.

Key facts:
- Single `hook_form_alter()` in `better_parent.module` attaches the `better_parent/better_parent`
  library (`js/better_parent.menu.js` + `css/better_parent.css`). It sets the library on the form's
  `scheduler_settings` element key.
- JS (`better_parent.menu.js`) targets `#edit-menu-menu-parent`; adds a "(browse)"/"(select)" toggle
  that swaps the flat select for a nested `<ul>` tree built from the option labels' leading dashes.
- No-ops when that select is not on the page. `configure` is null; `data.json` flags are all false.
