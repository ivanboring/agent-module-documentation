<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Events Log Track (events_log_track) — agent index

**Machine name `event_log_track`.** Logs user CUD events (via forms) across many entity types.
Version **5.0.0**. Core `^11.3 || ^12.0`. Permission `access event log track`.

**~19 opt-in submodules** — enable only the areas to audit: node, user, config, file, taxonomy,
media, menu, comment, webform, workflows, group, group_membership, masquerade, tfa, block_content,
cache-clear, plus `event_log_track_syslog` / `_stdout` output sinks.

An audit-trail tool; scope it with the submodules and restrict who can read the log.