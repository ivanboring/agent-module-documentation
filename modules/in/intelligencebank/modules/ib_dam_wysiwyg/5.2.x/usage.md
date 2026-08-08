<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Integrates ib_dam directly into ckeditor. Useful for websites not using the media suite of modules that need WYSIWYG support. — a submodule of **intelligencebank**.

---

This is one of intelligencebank's submodules. Integrates ib_dam directly into ckeditor. Useful for websites not using the media suite of modules that need WYSIWYG support. It exposes nothing on its own beyond that role and is governed by the parent module's configuration, permissions and behavior; enable it when you need this specific capability and leave it off otherwise, so the site only carries the parts of intelligencebank it actually uses.

See the parent module for the overall system this fits into.

---
- Enable ib_dam_wysiwyg to add this capability.
- Extend intelligencebank with ib_dam_wysiwyg.
- Keep it disabled if not needed.
- Depend on intelligencebank.
- Scope functionality to what you enable.
- Add only the sub-features you use.
- Compose the parent's feature set.
- Turn on per requirement.
- Reduce surface by enabling selectively.
- Combine with sibling submodules.
- Configure via the parent module.
- Review what it exposes before enabling.
- Match it to your use case.
- Keep the parent's permissions in force.
- Enable alongside the parent.
- Use it as part of the parent's system.