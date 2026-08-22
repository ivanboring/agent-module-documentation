# Created Date Views Filters — manual setup guide

**Created Date Views Filters** (`created_date_views_filters`) adds two extra filters
to the Views UI that let you filter content by its **creation date expressed as a
named period** — such as a particular month or a particular year — instead of as a
raw timestamp comparison.

Views can already filter on the `created` field, but it does so as an operator plus
a value. That means a date filter is either an absolute timestamp that goes stale
the moment you save it, or a relative offset expression you have to get exactly
right. "Content from this month" is not the same as "created after 1 August" — that
is content from *this particular* August, and next month the view would be wrong.
Views' relative-date syntax can express periods, but the syntax is unforgiving and
its failures are silent: a view that quietly returns nothing (or everything) is far
harder to spot than one that throws an error. Named period filters make the intent
explicit and keep it correct as time passes.

The module has **no settings and no admin page** — it simply makes two new filters
available inside any view. It depends only on core's **Views** module and supports
Drupal 8 through 11.

Two things are worth knowing before you rely on it in a report. First, period
boundaries are a **timezone** question: "this month" begins at midnight in
*someone's* timezone, and the site default, a user's setting, and UTC can give three
different answers — establish which one the filter uses before trusting a report
built on it. Second, relative filters interact with **caching**: a view whose result
changes at midnight needs cache metadata that expires then, or it will keep serving
yesterday's answer.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it alongside core Views.

There is **no configuration page** for this module — it has no settings form. You
use it entirely from within the Views UI, described in "How to use it" below.

## Where it lives in the admin menu

The module adds no admin page of its own. Its filters appear inside the Views UI at
**Structure → Views** (`/admin/structure/views`) when you edit a view.

## How to use it

1. Edit or create a view at **Structure → Views**.
2. In the **Filter criteria** section, click **Add**.
3. Search for and add **Month filter: Filter** and/or **Year filter: Filter** —
   these are the two filters this module provides.
4. Configure each filter as you would any Views filter (for example exposing it so
   visitors can pick a month or year themselves), then save the view.

The filters restrict results to content created within the chosen named period,
rather than requiring you to write a timestamp or offset by hand.
