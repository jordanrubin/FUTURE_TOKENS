---
title: metaphorization
tier: 3
substrate: symbolic (verbal-optional)
genre: abstracting
---

## what it is

**metaphorization** builds an explicit, high-coverage mapping from a familiar source **s** onto a live target **t** so that rules, heuristics, and intuitions from **s** can be systematically **ported** into testable hypotheses or prompts for **t**. heavier than tier-2 **rhyme**; lighter than a fully formal mapping. preserve as many invariants as are useful; fence off the rest. when **s** has math, **carry the math**: equations, units, objective functions, constraints, and standard metrics.

---

## how it runs

1. **select source (s)**  
   pick a domain with robust, worked rules that meaningfully fits **t**.

2. **list primitives**  
   enumerate entities, relations, operations in **s** that drive behavior.

3. **mine formalism & metrics (mandatory when available)**  
   harvest **s**’s named formulas, laws, and scorekeeping:  
   - equations & constraints (e.g., little’s law, bayes, pid, stock–flow, hazard, markov, s-curves, learning curves)  
   - objective/penalty functions (loss, regret, cost of delay)  
   - standard metrics (sla/slo, brier/log-loss/auc, throughput, wip, cycle time)  
   - units & dimensions (carry units; do dimensional analysis)  
   - parameter sets needing estimation (θ), priors/bounds, and data requirements

4. **draft mapping `m : s → t`**  
   name counterparts in **t** for each primitive in **s**. mark gaps. attach adapters with typed signatures, e.g.  
   - `priority_s:int → class_t:{p0…p3}`  
   - `severity_s → risk_t := p(event)×impact`  
   - `rate_s [1/time] → rate_t [items/day]`

5. **name invariants (make them checkable)**  
   specify transforms/constraints from **s** to preserve under **m**, **with units**. write as assertions or tests (queue discipline, conservation, budgets, escalation semantics, feedback/sign).

6. **metric plan**  
   define how success/failure will be measured in **t**: target metrics, baselines, acceptance thresholds, counter-metrics (what you refuse to optimize), and evaluation cadence.

7. **estimation & calibration**  
   lay out how θ will be identified/fit (mle, map, robust regression, bayesian updating). specify data needed, sampling window, and validation; predeclare error decomposition (bias/variance, aleatoric/epistemic).

8. **package**  
   compress into a table/diagram/substitution kit + a **formula shelf** others can apply without you.

9. **probe**  
   run representative rules from **s** through **m**; compute; compare to baselines; note failure modes at the seam.

---

## knobs

| knob                       | range / values                                  | effect                                                       |
|---------------------------|--------------------------------------------------|--------------------------------------------------------------|
| **tightness**             | loose ↔ strict                                   | similarity required to accept the map                        |
| **coverage**              | sparse ↔ broad                                   | fraction of **s** given counterparts in **t**                |
| **invariant count**       | few ↔ many (unbounded)                           | how much disciplined behavior is demanded                    |
| **invariant strength**    | soft hints ↔ hard constraints                    | how binding the invariants are during transfer               |
| **scope**                 | local element ↔ process ↔ system                 | region of **t** the map is allowed to touch                  |
| **directionality**        | s→t / t→s / bidirectional                        | where rules originate vs where they’re interrogated          |
| **claim strength**        | framing ↔ hypothesis ↔ provisional policy        | rhetorical weight of the mapping                             |
| **medium**                | words / diagram / table / code / **equations**   | packaging; affects reuse and error rate                      |
| **exclusion clarity**     | informal notes ↔ explicit exclusion set          | leak-prevention fidelity                                     |
| **test budget**           | quick spot-checks ↔ adversarial stress tests     | confidence in transfer                                       |
| **source maturity**       | folk schema ↔ codified playbook                  | reliability of imported intuition                            |
| **math depth**            | heuristics ↔ relabeled, unitful equations        | extent of formal carryover                                   |
| **unit fidelity**         | implicit ↔ explicit units + dim. analysis        | prevents type errors across the seam                         |
| **metric rigor**          | vanity counts ↔ decision-useful eval w/ baselines| quality of scorekeeping                                      |

---

## output

a compact **translation guide** `m(s → t)`—shareable and reusable—plus, optionally:

- **formula shelf**: relabeled equations/constraints with units and variable glossary  
- **hypothesis set**: what should be true in **t** if the map holds (quantified)  
- **rule-throughs**: worked examples `rule_s ⟶ rule_t` with numbers  
- **metric sheet**: primary/secondary metrics, targets, and review cadence

---

## micro-example

**target (t):** backlog of github issues  
**source (s):** hospital emergency-room triage (queueing + priority scheduling)

| s (er)                  | t (issues)                         |
|-------------------------|------------------------------------|
| patient                 | ticket                             |
| triage nurse            | intake bot                         |
| severity level          | priority class (p0–p3)             |
| attending physician     | ticket owner                       |
| beds / staff            | parallel servers (devs), `c`       |
| arrival rate `λ`        | issue inflow [issues/day]          |
| service rate `μ`        | resolve rate per dev [issues/day]  |
| utilization `ρ=λ/(cμ)`  | load factor                        |
| wait-time sla           | breach threshold                   |

**preserved structure (with math):**  
- little’s law `l = λ·w` → `backlog = inflow × avg time-in-system`  
- stability `ρ < 1` → if `λ ≥ cμ` the queue is unstable; must throttle or add capacity  
- preemptive priority reduces w for high class at cost to low class → explicit policy knob  
- handoff requires accountability → reassignment requires explicit owner ack

**rule-through (numerical):**  
assume `λ=5 issues/day`, `μ=2 issues/day/dev`, `c=2 devs` ⇒ `ρ=5/(2·2)=1.25>1` → unstable. options: (a) raise `c` to 3 ⇒ `ρ=5/(3·2)=0.833`; (b) reduce `λ` via intake gate; (c) increase `μ` via swarming or deferring non-work items. new sla: set `p(w>5 days) < 0.05` and monitor.

**metrics:**  
- primary: cycle time (days), breach rate, ρ, throughput, age-of-work-in-progress  
- secondary: preemption count, handoff latency, reopen rate  
- eval: weekly cfd; alert when `ρ` crosses 0.9 or `p0` cycle time slope ↑ two weeks running

**breakpoints (declare so the metaphor doesn’t mislead):**  
- mortality, consent, bedside ethics → not carried.

---

## dimensionalization of metaphorization

1. **pillar integrity**: do exclusions avoid cutting the beams the map stands on?  
   • 0.0 nukes a core transform • 0.5 some bleed • 1.0 exclusions orthogonal

2. **counterpart clarity**: unambiguous primitive mapping (1→1 or explicit 1→n with adapters)?  
   • 0.0 mushy “this ≈ that” • 0.5 mostly crisp • 1.0 crisp with documented degeneracy

3. **invariant set quality**: preserved bits are operators/constraints (queues, budgets, feedback), not motifs  
   • 0.0 ornaments • 0.5 roles/flows • 1.0 core transforms that do work

4. **formal leverage**: portable math/algos carried (little’s law, pid, bayes, stock–flow, hazard)  
   • 0.0 none • 0.5 heuristics + back-of-envelope • 1.0 named equations w/ units + glossary

5. **adapter load** (structural, not effort): how many/complex adapters to make types line up?  
   • 0.0 adapter spaghetti • 0.5 a few shims • 1.0 minimal, typed, local

6. **failure localization**: do errors surface at the seam they’re caused (good metaphors fail noisily)?  
   • 0.0 errors smear • 0.5 sometimes localized • 1.0 seam-tight: breakpoints catch misuse

7. **scope & edge crispness**: bounded region where the map holds + explicit edges  
   • 0.0 grand theory / toy slice • 0.5 process-level • 1.0 process↔system slice w/ borders

8. **metric rigor**: are we scoring what matters with baselines/thresholds?  
   • 0.0 vanity counts • 0.5 mixed • 1.0 decision-useful eval w/ counter-metrics

9. **unit discipline**: explicit units + dimensional checks?  
   • 0.0 unitless vibes • 0.5 partial • 1.0 unit-clean throughout

---

## formula shelf (starter kit to port)

- **queueing**: `l=λw`, m/m/1: `w_q = ρ/(μ−λ)`, m/m/c stability `ρ<1`  
- **bayes**: `p(h|d) ∝ p(d|h)p(h)`; calibration via brier/log-loss  
- **control**: pid `u(t)=k_p e + k_i ∫e dt + k_d de/dt` (map `e` to gap vs target metric)  
- **stock–flow**: `stock_{t+1}=stock_t + inflow − outflow` (units sanity)  
- **hazard/survival**: `s(t)=exp(−∫₀^t h(τ)dτ)` (time-to-event in retention/defect)  
- **learning/experience curve**: `cost ∝ n^{−β}` (map to throughput/quality improvements)

each entry should be relabeled: variables glossary, units, estimation plan.

---

## common pitfalls & patches

| pitfall              | symptom                                         | patch                                                                 |
|----------------------|--------------------------------------------------|-----------------------------------------------------------------------|
| underreach           | vibes-only mapping; no formulas/units/metrics   | run step 3–7; build a formula shelf; add unit checks + metric sheet   |
| leakage              | irrelevant parts of **s** infect **t**          | expand the exclusion set; make non-ports explicit                     |
| overreach            | mapping treated as truth                        | keep invariants listed; label mapping as provisional scaffold         |
| mushy primitives     | ambiguous counterparts                          | reduce coverage; redefine crisper primitives first                    |
| cliché drag          | stale metaphors bias attention                  | generate counter-maps; prefer cleaner, less-worn sources              |
| untested transfer    | no friction checks                              | run adversarial rule-throughs; hunt contradictions/edges              |

---

## downstreams & compounding

- **dimensionalize** — score the map’s complexity, leverage, fidelity; pick the best among alternatives.  
- **ramify** — unfold implications and second-order effects under `m`.  
- **instrument** — wire the metric plan into dashboards/alerts; close the loop.