<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Multistep Form Framework (multistep_form_framework) — agent index

Framework for **multi-step (wizard) forms**. Version **2.0.0**. Submodule
`multistep_form_framework_examples`. Developer infrastructure.

**Security:** forms inherit Form API validation/access — confirm **each step is validated** (don't
trust earlier-step data blindly) and access is enforced at every step, not just the first.