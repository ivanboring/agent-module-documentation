<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Title Class adds a select on every block configuration form to tag the block's title with an `h1`-`h6` class.

---

It implements `hook_form_block_form_alter()` (`block_title_class.module`) to add a "Title Class" details element with a select (None / h1-h6) whose value is stored in the block's third-party settings under `block_title_class.title_class` (schema in `config/schema/`). `hook_block_presave()` clears the setting when empty, and `hook_preprocess_block()` appends the chosen class to `title_attributes` so themes that print `<h2{{ title_attributes }}>{{ label }}</h2>` render the block title with the selected heading class. A custom validate handler folds the value into the block's third-party settings array.

This is useful for adjusting the visual heading level / styling of block titles without editing templates per block. Setup is simply enabling the module; the option then appears on every block's configuration form (Block layout > place/configure block). No routes, permissions or services are added — it rides on core block config, so anyone with block administration rights can set the class.

---
- Add an h1-h6 class to a specific block's title.
- Change a block title's visual heading level without a template override.
- Set the title class from the block's configuration form.
- Store the class as a block third-party setting (config-exportable).
- Clear the class by choosing "None".
- Keep title classes in configuration so they deploy across environments.
- Style block titles with existing heading CSS.
- Apply different heading classes to different blocks.
- Rely on `title_attributes` in the block template to output the class.
- Ensure your theme prints `{{ title_attributes }}` on the title element.
- Adjust SEO/heading hierarchy of block titles per placement.
- Manage the setting alongside normal block placement.
- Export the class with the block config via config sync.
- Remove the setting automatically when left empty on save.
- Give editors control over title styling without theme access.
