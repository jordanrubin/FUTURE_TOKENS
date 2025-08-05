---
title: ramify
tier: 3
substrate: symbolic
genre: reasoning
---

## what it is

**ramify** takes a seed claim, mapping, or rule and pushes its consequences outward—first order, second order, and so on—until the branches hit constraints or equilibria. not about proving truth; about *enumerating implications* and making the downstreams explicit enough to test or act on.

---

## how it runs (≈ 3–10 min per pass)

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

*(if you use the results to reprioritize or implement, that’s a compound with steering/control.)*

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