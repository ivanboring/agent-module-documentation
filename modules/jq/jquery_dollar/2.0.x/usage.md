<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
jQuery Dollar makes `$` available globally as an alias for jQuery, by injecting a one-line script immediately after `drupal.init.js`.

---

Drupal runs jQuery in no-conflict mode, so `$` is not defined globally. That is the correct default — it kept Drupal compatible with Prototype and the other libraries that claimed `$` in the era when the decision was made, and it forces module JavaScript into the `(function ($) { … })(jQuery)` wrapper that makes the dependency explicit.

It is also a recurring obstacle when integrating third-party scripts written outside Drupal, which assume `$` exists. The usual answers are to wrap the script or edit it; this module offers the third: define `$` globally and let those scripts work unchanged.

The entire implementation is worth quoting, because it explains both the appeal and the caveats. The JavaScript file is one line:

```js
$ = jQuery;
```

and `jquery_dollar_js_alter()` clones the asset definition of `core/misc/drupal.init.js`, points it at that file, and adds `0.1` to its weight so it loads directly afterwards.

Two things follow. The assignment has no `var`, `let` or `window.` prefix, so it creates an implicit global — which works in sloppy mode and **throws in strict mode**. And defining `$` globally is precisely what no-conflict mode was preventing, so any other library on the page that wants `$` now collides with jQuery, silently, in whichever order the assets happen to load.

Use it as a deliberate, documented compatibility shim for a specific third-party script. It is not a convenience to turn on site-wide because typing `jQuery` is tiresome.

---

- Make $ available to a third-party script.
- Run a script written outside Drupal unmodified.
- Avoid wrapping vendor JavaScript.
- Alias jQuery globally.
- Load the alias directly after drupal.js.
- Support legacy JavaScript on a Drupal site.
- Understand it undoes jQuery no-conflict mode.
- Check for other libraries claiming $.
- Expect failure under strict mode.
- Prefer the (function ($) {...})(jQuery) wrapper in your own code.
- Document why the shim was added.
- Remove it once vendor scripts are updated.
- Debug $ is not defined errors.
- Verify asset load order after enabling.
- Keep it off sites with mixed JS libraries.
- Treat it as a compatibility shim, not a convenience.