<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# jQuery Dollar (jquery_dollar) — agent index

Makes **`$` a global alias for jQuery**, undoing Drupal's no-conflict default.
Version **2.0.1**. Core `^9.3 || ^10 || ^11`. No dependencies, routes, permissions or config.

The whole implementation:

```js
// jquery_dollar.js
$ = jQuery;
```

```php
// jquery_dollar_js_alter(): clone core/misc/drupal.init.js's asset definition,
// repoint it at jquery_dollar.js, weight += 0.1 so it loads directly after drupal.js.
```

**Two caveats that follow from that one line:**
- No `var`/`let`/`window.` — it creates an **implicit global**, which **throws in strict mode**.
- Defining `$` globally is exactly what no-conflict mode prevents; any other library claiming `$`
  now collides, silently, in asset-load order.

**Fit:** a deliberate, documented compatibility shim for a specific third-party script. Not a
site-wide convenience. In your own code use `(function ($) { … })(jQuery)` instead.