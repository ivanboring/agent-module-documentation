<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Library attach (library_attach) — agent index

Text-format **filter** letting content declare which **asset libraries** the page needs. Depends on
core `filter`. Version **1.0.1**. Core requirement `^10 || ^11`.

**Where it fits between the two usual answers:** loading the library in the **theme** (a payload the
other nine hundred pages do not need) and a **custom formatter or paragraph type per case** (right,
and a development task each time). A filter keeps the library inside Drupal's **aggregation and
dependency ordering** rather than a `<script>` tag pasted into the body.

**The security consideration, stated plainly: attaching a library means loading JavaScript, so
whoever can put the marker in content can cause a script to run on the page.**
- Which libraries are attachable **must be an administrator-set allow-list**, not a name taken from
  the content. A filter that attaches whatever library the text names **hands script-loading to
  anyone who can edit a body field**.
- **Confirm which this does** before enabling it on a format non-trusted users can use, and treat
  the filter's configuration as an administrative surface either way.
