<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Addons bundles assorted extensions to Views — additional handlers and options that core's Views does not provide.

---

Views is the most extended subsystem in Drupal, and a whole class of contrib exists to fill in handlers core did not ship. Modules of this type are grab-bags by nature: their value is proportional to how many of their pieces a given site actually uses, and a site using one of eight is carrying seven for nothing. Version **1.3.0** on `^9 || ^10 || ^11`, depending on core `views`, with no permissions, no routes and no configuration of its own — everything appears inside the Views UI, which is the correct shape for the category. The practical advice for any "addons" module is the same and worth applying here. **Enumerate what it actually adds** before installing it, since the module description will not, and the answer determines whether one handler justifies a dependency or whether a small custom plugin is cheaper. **Check whether core has since absorbed the feature**, because Views gains capability every few releases and older addon modules routinely duplicate what is now built in. And remember that **a view built on a contrib handler is bound to that module**: removing it later leaves a broken view rather than a degraded one, so the dependency travels with every view that uses it.

---

- Add a missing Views handler.
- Extend a view beyond core options.
- Add a field option Views lacks.
- Improve a listing's filtering.
- Add a sort core does not provide.
- Extend a view without custom code.
- Add options to a views field.
- Improve an admin listing.
- Add a display option to Views.
- Support a reporting view.
- Extend a search results view.
- Add flexibility to a catalogue.
- Improve a content overview.
- Add a handler for a specific field type.
- Support a complex listing requirement.
- Prototype a view quickly.
- Fill a gap in the Views UI.
- Extend an existing view's behaviour.
