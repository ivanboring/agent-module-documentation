<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EBT: Webform Popup (ebt_webform_popup) — agent index

Button that opens a **webform in a popup**. Version **2.0.0**. Core `^10.1 || ^11 || ^12`.
Depends on `ebt_basic_button`, `paragraphs`, `webform`. Form keeps its handlers, validation and
access.

**Verify modal accessibility — the same four behaviours as any dialog:** focus moves in on open,
cannot escape while open, Escape closes, focus returns to the button. A form in a focus-trapping
modal is one a keyboard user cannot submit **or leave**.

**Two more:** a form only reachable behind a button is invisible when JavaScript fails — provide a
non-JS path if the form matters; and a popup form is found by bots as readily as an inline one, so
the site's CAPTCHA/honeypot must apply.