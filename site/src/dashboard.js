import './style.css';
import { groupedBar, seriesColor } from './charts.js';

const $ = (id) => document.getElementById(id);
const esc = (s) => String(s).replace(/[&<>"]/g, (c) => (
  { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]));

// Metrics to graph. `get` pulls the value from a results leaf (null = gap).
const METRICS = [
  { key: 'passrate', title: 'Pass rate', yLabel: '%', get: (l) => l.runs ? (l.correct / l.runs) * 100 : null, fmt: (v) => `${v.toFixed(0)}%` },
  { key: 'out_tokens', title: 'Output tokens', yLabel: 'tokens', get: (l) => l.out_tokens, fmt: (v) => v.toLocaleString() },
  { key: 'in_tokens', title: 'Input tokens (fresh)', yLabel: 'tokens', get: (l) => l.in_tokens, fmt: (v) => v.toLocaleString() },
  { key: 'cache_reads', title: 'Cache reads', yLabel: 'tokens', get: (l) => l.cache_reads, fmt: (v) => v.toLocaleString() },
  { key: 'time', title: 'Time', yLabel: 'seconds', get: (l) => l.time, fmt: (v) => `${v}s` },
  { key: 'cost', title: 'Cost', yLabel: 'USD', get: (l) => l.cost, fmt: (v) => `$${v.toFixed(4)}` },
];

const shortModel = (m) => m.replace(/^claude-/, '');
const ARM_ORDER = { vanilla: 0, skill: 1, memory: 2 };

let charts = [];
let DATA = {};

// Build the ordered list of series (arm × model:effort) present in a module's cases.
function seriesFor(cases) {
  const set = new Map(); // id -> {arm, run, label}
  for (const c of Object.values(cases)) {
    for (const [arm, runs] of Object.entries(c.results || {})) {
      for (const runKey of Object.keys(runs)) {
        const id = `${arm}::${runKey}`;
        if (!set.has(id)) set.set(id, { id, arm, runKey, label: `${arm} · ${shortModel(runKey)}` });
      }
    }
  }
  return [...set.values()].sort((a, b) =>
    (ARM_ORDER[a.arm] ?? 9) - (ARM_ORDER[b.arm] ?? 9) || a.runKey.localeCompare(b.runKey));
}

function renderModule(key) {
  charts.forEach((c) => c.destroy());
  charts = [];
  const container = $('charts');
  container.innerHTML = '';
  const mod = DATA[key];
  if (!mod) return;

  const cases = mod.cases;
  const caseIds = Object.keys(cases);
  const questions = Object.fromEntries(caseIds.map((id) => [id, cases[id].question || id]));
  const series = seriesFor(cases);
  const colorFor = Object.fromEntries(series.map((s, i) => [s.id, seriesColor(i)]));

  $('meta').textContent = `${caseIds.length} questions · ${series.length} run configs · skill: ${mod.skill_name}`;
  $('legendNote').innerHTML = `Series = <strong>arm × model:effort</strong>. `
    + series.map((s) => `<span style="color:${colorFor[s.id]}">■</span> ${esc(s.label)}`).join(' &nbsp; ');

  for (const metric of METRICS) {
    const datasets = series.map((s) => ({
      label: s.label,
      color: colorFor[s.id],
      data: caseIds.map((id) => {
        const leaf = cases[id].results?.[s.arm]?.[s.runKey];
        return leaf ? metric.get(leaf) : null;
      }),
    }));
    // Skip a metric entirely if every value is null (e.g. cache_reads on old runs).
    if (datasets.every((d) => d.data.every((v) => v == null))) continue;

    const card = document.createElement('div');
    card.className = 'chart-card';
    card.innerHTML = `<h3>${esc(metric.title)}</h3>
      <div class="sub">per question · ${metric.key === 'passrate' ? 'higher is better' : 'lower is better'}</div>
      <div class="chart-wrap"><canvas></canvas></div>`;
    container.appendChild(card);
    charts.push(groupedBar(card.querySelector('canvas'), {
      labels: caseIds,
      datasets,
      yLabel: metric.yLabel,
      questions,
      valueFmt: metric.fmt,
    }));
  }
}

async function main() {
  const res = await fetch('./data/eval-results.json');
  DATA = await res.json();
  const keys = Object.keys(DATA).sort();
  $('stat').textContent = `${keys.length} modules with results`;

  if (!keys.length) { $('empty').hidden = false; return; }

  const sel = $('module');
  sel.innerHTML = keys.map((k) => {
    const v = DATA[k].version ? ` (${DATA[k].version})` : '';
    return `<option value="${esc(k)}">${esc(k)}${esc(v)}</option>`;
  }).join('');

  const wanted = new URLSearchParams(location.search).get('module');
  const start = wanted && DATA[wanted] ? wanted : keys[0];
  sel.value = start;
  sel.addEventListener('change', () => {
    renderModule(sel.value);
    history.replaceState(null, '', `?module=${encodeURIComponent(sel.value)}`);
  });
  renderModule(start);
}

main().catch((e) => { $('charts').innerHTML = `<div class="empty">Failed to load results: ${esc(e.message)}</div>`; });
