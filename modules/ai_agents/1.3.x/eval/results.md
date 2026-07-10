# Eval results — ai_agents 1.3.x

Skill under test: `drupal-module-docs` · runs per cell: 3 · model: claude-opus-4-8 · effort: medium

`Correct` = live-state verify (execution cases) or text assertions (recipe cases). `n/a` = provider CLI not installed.

## aiagents-agent-plugin-type  (`recipe`)

> In the Drupal ai_agents module, what is the plugin type (and its Plugin/ namespace) for writing a code-based agent? Name it.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2958 | 85212 | 1230 | 26.5 | 0.1469 |
| claude | skill | 3/3 | 2958 | 77242 | 757 | 19.6 | 0.1239 |
| claude | memory | 3/3 | 2952 | 21149 | 68 | 5.1 | 0.0523 |

## aiagents-tool-plugin-type  (`recipe`)

> In ai_agents, agents act through 'tools'. What plugin type are those tools, and which module actually DEFINES that plugin type?

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2013 | 30667 | 779 | 65.8 | 0.3665 |
| claude | skill | 3/3 | 2956 | 55797 | 706 | 17.8 | 0.1097 |
| claude | memory | 3/3 | 2952 | 21147 | 136 | 6.7 | 0.0556 |

## aiagents-override-entity  (`recipe`)

> In ai_agents, which config entity type lets you modify an existing agent's prompt and tools WITHOUT forking or editing the original? Give the entity type id.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2955 | 47788 | 943 | 47.7 | 0.2518 |
| claude | skill | 3/3 | 2957 | 70091 | 610 | 17.4 | 0.1114 |
| claude | memory | 3/3 | 2952 | 21152 | 77 | 4.6 | 0.0525 |

## aiagents-admin-permission  (`recipe`)

> In ai_agents, which permission machine name gates administering AI agents? Give the exact permission.

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2956 | 54498 | 451 | 14.4 | 0.0915 |
| claude | skill | 3/3 | 2958 | 76876 | 604 | 18.7 | 0.1118 |
| claude | memory | 3/3 | 2952 | 21138 | 89 | 5.0 | 0.0527 |

## aiagents-explorer  (`recipe`)

> In the ai_agents ecosystem, how do I interactively RUN and DEBUG an agent from the UI — which submodule provides it and at what admin path?

| Provider | Arm | Correct | In tok | Cache-rd | Out tok | Time (s) | Cost $ |
|---|---|---|--:|--:|--:|--:|--:|
| claude | vanilla | 3/3 | 2955 | 48431 | 1362 | 49.3 | 0.2594 |
| claude | skill | 3/3 | 2960 | 99280 | 1394 | 32.8 | 0.1583 |
| claude | memory | 3/3 | 2952 | 21151 | 361 | 8.2 | 0.0613 |
