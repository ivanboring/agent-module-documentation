<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feature flags (featureflags) — agent index

`feature_flag` config entity + `FlagManager` service + `FeatureFlagContext` cache context +
`Plugin/Condition/FeatureFlagStatus`. Version **2.0.4**.
Core `^8.8 || ~9.0 || ^10 || ^11`. No dependencies.

Permission: `administer featureflag entities` — **not** `restrict access`. Note what it confers:
the holder can enable anything hidden behind a flag, including features hidden because they are
unfinished. Treat the flag list as control surface.

Flags are **config entities**, so they export, deploy and diff like any other config, and can be
switched per environment with a config override — the main reason to prefer this over `state`.

**The cache context is the part people miss.** Output that varies on a flag must declare
`FeatureFlagContext`, or the first-rendered variant is cached and served regardless of the flag.
The symptom is "flipping the flag does nothing".

Key classes: `FlagManager`, `FeatureFlagContext`, `Entity/FeatureFlag`, `Form/FeatureFlagForm`,
`Plugin/Condition/FeatureFlagStatus`.