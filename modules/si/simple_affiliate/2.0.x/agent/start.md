<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Affiliate — agent index

Basic referral system. Block outputs a per-user link to `/simple_affiliate/set-tracking-cookie/{uid}` which sets a 6-month `simple_affiliate` cookie and redirects to registration; `hook_user_insert` stores the cookie's uid into `field_simple_affiliate_referrals`. A View lists referrals. Version **2.0.1**, core 8–10.

Security: tracking route is `access content` (effectively public) and the referrer uid is stored unvalidated → referral spoofing/data-integrity (low). Redirect target is fixed (user.register); no open redirect.