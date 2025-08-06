---
title: ramify
tier: 3
substrate: symbolic
genre: reasoning
---

## what it is

**ramify** takes a seed claim, mapping, or rule and pushes its consequences outward—first order, second order, and so on—until the branches hit constraints or equilibria. not about proving truth; about *enumerating implications* and making the downstreams explicit enough to test or act on.

---

## how it runs

1. **seed**  
   choose the starting object: a hypothesis, policy tweak, metaphor map `m(s→t)`, or observed event.

2. **operators**  
   pick propagation tools appropriate to the seed:  
   - causal step (if `x↑` then `y↓`)  
   - accounting/stock–flow (inflow–outflow → level)  
   - feedback (reinforcing / balancing)  
   - substitution/displacement (pressure moves elsewhere)  
   - agent response (incentives → behavior change)

3. **branch**  
   generate immediate consequences (order-1). for each, repeat to order-2/3 as budget allows.

4. **check ceilings & frictions**  
   apply constraints: capacity, costs, latency, regulation, norms. prune impossible branches.

5. **equilibrate**  
   close obvious loops (partial or general equilibrium). note time-to-settle.

6. **rate & sort**  
   tag branches with {sign, magnitude, likelihood, latency, reversibility}. keep the top set.

7. **package**  
   output as a concise tree/list with assumptions and stop conditions.

---

## knobs

| knob                | range / values                                   | effect                                                   |
|---------------------|---------------------------------------------------|----------------------------------------------------------|
| **order depth**      | 1 → 2 → 3+                                        | how far consequences propagate                           |
| **breadth**          | narrow → wide                                     | branching factor per node                                |
| **mode**             | deterministic / probabilistic / adversarial       | inference stance                                         |
| **horizon**          | immediate → short → long                          | time window considered                                   |
| **equilibrium**      | none / partial / general                          | how much endogenous response you model                   |
| **adaptivity**       | agents frozen → reactive → strategic              | sophistication of actor responses                        |
| **constraints**      | soft hints → hard caps                            | strictness of ceilings/frictions                         |
| **granularity**      | coarse handles → quantified deltas                | resolution of consequences                               |
| **stop rule**        | depth cap / marginal-gain cutoff / contradiction  | when to halt propagation                                 |
| **evaluation**       | expected value / worst-case / regret / robustness | how branches are ranked                                  |

---

## when to use

- after a mapping or hypothesis, to see what it *forces*.  
- during planning, to pre-mortem policy changes.  
- in sensemaking, to surface non-obvious second-order effects.  
- before communication, to anticipate counterarguments and failure modes.

---
## dimensionalization of ramify

1) **seed crispness**  
   is the starting claim/map/policy precise enough to propagate?
   - 0.0 — vibe or multi-claim mush  
   - 0.5 — single claim but fuzzy terms  
   - 1.0 — one clear seed with defined scope & terms

2) **operator coverage**  
   use the right propagation tools (causal step, stock–flow, feedback, substitution/displacement, agent response)?
   - 0.0 — one operator only  
   - 0.5 — 2–3 operators used  
   - 1.0 — all relevant operators appear at least once

3) **constraints & ceilings**  
   capacity, costs, latency, regulation, and norms bind branches?
   - 0.0 — unconstrained fanfic  
   - 0.5 — a few caps named  
   - 1.0 — explicit ceilings on major branches + when they bind

4) **equilibrium closure**  
   close obvious loops (partial/general), not just forward-chain?
   - 0.0 — pure DAG of doom  
   - 0.5 — some loops closed  
   - 1.0 — key feedback loops closed with plausible settle times

5) **agent adaptivity (lucas check)**  
   do actors react strategically to the change?
   - 0.0 — agents frozen  
   - 0.5 — reactive but naive  
   - 1.0 — strategic responses + counter-moves modeled

6) **latency map**  
   timelines/lag structures explicit (what hits first vs later)?
   - 0.0 — timeless blob  
   - 0.5 — rough near/far tags  
   - 1.0 — per-branch latency notes + gating dependencies

7) **branch independence**  
   avoid double-counting or collapsing distinct branches?
   - 0.0 — duplicated stories, tangled edges  
   - 0.5 — some deduping  
   - 1.0 — orthogonalized branches; shared causes factored out

8) **measurement plan (leading indicators)**  
   detect reality early if a branch is real?
   - 0.0 — no observables  
   - 0.5 — qualitative tells  
   - 1.0 — ≥2 leading indicators per top branch with thresholds

9) **guardrails & mitigations**  
   attach do-this-if-that guardrails to risky branches?
   - 0.0 — shrug  
   - 0.5 — generic cautions  
   - 1.0 — branch-specific guardrails with triggers & actions

10) **ranking & decision orientation**  
    clear prioritization by EV/regret/minimax/robustness (pick one)?
    - 0.0 — no ranking  
    - 0.5 — hand-wavy ordering  
    - 1.0 — explicit regime + ranked shortlist + why

11) **uncertainty handling**  
    carry priors/ranges or scenario bounds (not fake precision)?
    - 0.0 — point guesses everywhere  
    - 0.5 — qualitative likelihoods  
    - 1.0 — ranges/priors or scenario buckets with notes

12) **stop rule discipline**  
    halt at a useful depth (or use marginal-gain cutoff)?
    - 0.0 — infinite tree / analysis paralysis  
    - 0.5 — arbitrary stop  
    - 1.0 — stated rule: depth cap, trigger, or diminishing-returns cutoff

---

## micro-example

**seed:** introduce a visible leaderboard for internal bug fixes.

**order-1:**  
- ↑ reporting rate; ↑ fix rate for easy bugs; ↑ attention to scoreable work.

**order-2:**  
- displacement: hard, ambiguous, or non-scoreable maintenance gets deferred.  
- gaming: split issues, label inflation, cherry-picking “near done” items.  
- morale bifurcation: race conditions between teams; blame-shifting on regressions.

**order-3 / equilibrate:**  
- counter-gaming rules spawn meta-work; throughput gains flatten at capacity.  
- hidden debt accumulates in unmeasured reliability; incident frequency later spikes.  

**constraints & ceilings:** reviewer bandwidth; CI minutes; human attention.  
**ranking:** high-likelihood negative at 6–12 week latency: reliability debt.  
**package:** short tree + monitoring plan: create “vitals” metrics for regressions, penalize splits, credit pair-work.

---

## outputs

- **ramification tree** (bulleted or diagram) with assumptions and stop rule.  
- **test list**: leading indicators keyed to branches (what would move *first* if this branch is real).  
- **risk/benefit table**: top branches by expected value or hazard.

---

## common pitfalls & patches

| pitfall              | symptom                                           | patch                                                        |
|----------------------|----------------------------------------------------|--------------------------------------------------------------|
| goodhart drift       | optimizing the proxy backfires                     | add counter-metrics; include adversarial agent responses     |
| lucas critique miss  | policy “works” in model, fails in reality          | raise adaptivity; re-ramify with strategic actors            |
| partial-eq bias      | ignores cross-market spillovers                    | step up equilibrium knob; include substitution pathways      |
| infinite trees       | analysis paralysis                                 | enforce stop rule; dimensionalize to keep only high-leverage |
| base-rate amnesia    | wild branches dominate                             | weight by priors; cap EV with uncertainty penalties          |

---

## downstreams & compounding

- **dimensionalize** — prioritize branches by leverage/clarity/EV; choose experiments.  
- **steering (compound)** — update attention and priorities to track top branches.  
- **control (compound)** — implement guardrails or pilots keyed to the test list.  
- **rhyme / metaphorization** — if stuck, import cleaner structures to improve operators.