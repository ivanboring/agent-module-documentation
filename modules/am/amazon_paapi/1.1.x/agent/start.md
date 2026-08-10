<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Amazon PA-API — agent index

A **helper for the Amazon Product Advertising API (PA-API 5)** (search/item lookup). Provides permissions.
Version **1.1.7**. Core `^10.1||^11`.

Integration — requests are **AWS-signed** with **access + secret keys** (store as secrets, env/Key; HTTPS);
requests go to **Amazon** (egress). No access role beyond permission.
