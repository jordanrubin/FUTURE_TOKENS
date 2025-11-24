---
name: metaphorization
description: Build explicit, high-coverage mapping from familiar source domain onto target domain to systematically port rules, heuristics, formulas, and metrics. Heavier than rhyme, lighter than formal proof. When source has math, carry the math with units and dimensional analysis.
---

# Metaphorization

## Overview

**Metaphorization** builds an explicit, high-coverage mapping from a familiar source **s** onto a live target **t** so that rules, heuristics, and intuitions from **s** can be systematically **ported** into testable hypotheses or prompts for **t**. 

Heavier than tier-2 **rhyme**; lighter than a fully formal mapping. Preserve as many invariants as are useful; fence off the rest. When **s** has math, **carry the math**: equations, units, objective functions, constraints, and standard metrics.

Claude should use this Skill when the user:
- Explicitly asks to "metaphorize" something
- Has identified a good rhyme and wants complete structural mapping
- Needs to transfer strategy/rules from one domain to another systematically
- Wants to port mathematical formalism across domains
- Says "build the full mapping" or "what transfers from X to Y?"
- Needs testable hypotheses from cross-domain analogy

## How It Runs

### 1. Select Source (s)
Pick a domain with robust, worked rules that meaningfully fits **t**.

**Quality criteria:**
- Mature formalism (equations, metrics, known failure modes)
- Structural similarity to target (from rhyme analysis)
- Rich playbook of proven strategies
- Well-understood constraints and invariants

### 2. List Primitives
Enumerate entities, relations, operations in **s** that drive behavior.

**Entity types:**
- Objects/agents (patients, servers, tokens)
- Resources (capacity, budget, attention)
- States (waiting, processing, complete)
- Flows (arrival, departure, transformation)
- Control structures (gates, priorities, feedback loops)

### 3. Mine Formalism & Metrics (MANDATORY when available)
Harvest **s**'s named formulas, laws, and scorekeeping:

**Equations & Constraints:**
- Little's Law, Bayes' theorem, PID control
- Stock-flow equations, hazard functions
- Markov chains, S-curves, learning curves
- Conservation laws, balance equations

**Objective/Penalty Functions:**
- Loss functions, regret measures
- Cost of delay, opportunity cost
- Utility functions, risk premiums

**Standard Metrics:**
- SLA/SLO definitions
- Brier/log-loss/AUC scores
- Throughput, WIP, cycle time
- Quality gates, defect rates

**Units & Dimensions:**
- Carry units explicitly
- Perform dimensional analysis
- Check unit consistency across mapping

**Parameter Sets:**
- Parameters needing estimation (θ)
- Priors/bounds on parameters
- Data requirements for fitting
- Validation strategies

### 4. Draft Mapping `m : s → t`
Name counterparts in **t** for each primitive in **s**. Mark gaps. Attach adapters with typed signatures.

**Adapter examples:**
```
priority_s:int → class_t:{p0,p1,p2,p3}
severity_s → risk_t := p(event) × impact
rate_s [1/time] → rate_t [items/day]
capacity_s [beds] → capacity_t [parallel workers]
```

**Mapping table format:**
| Source (s) | Target (t) | Adapter | Units |
|------------|------------|---------|-------|
| Entity_s | Entity_t | Type signature | [units] |

### 5. Name Invariants (Make them checkable)
Specify transforms/constraints from **s** to preserve under **m**, **with units**. Write as assertions or tests.

**Invariant categories:**
- Queue discipline (FIFO, priority, preemptive)
- Conservation laws (mass, energy, tokens)
- Budget constraints (capacity, time, money)
- Escalation semantics (how priorities change)
- Feedback loops (positive/negative, sign)
- Stability conditions (ρ < 1, convergence)

**Format as testable assertions:**
```
ASSERT: λ < c·μ  (stability condition)
ASSERT: sum(inflow) = sum(outflow) + Δstock  (conservation)
ASSERT: high_priority_wait < low_priority_wait  (priority discipline)
```

### 6. Metric Plan
Define how success/failure will be measured in **t**:

**Primary metrics:** Target values, acceptable ranges
**Secondary metrics:** Supporting indicators
**Counter-metrics:** What you refuse to optimize
**Baselines:** Current state, historical average
**Acceptance thresholds:** Pass/fail criteria
**Evaluation cadence:** How often to measure

### 7. Estimation & Calibration
Lay out how θ will be identified/fit:

**Estimation method:** MLE, MAP, robust regression, Bayesian updating
**Data needed:** Sample size, time window, granularity
**Sampling window:** Historical period for fitting
**Validation strategy:** Cross-validation, holdout, backtesting
**Error decomposition:** Bias/variance, aleatoric/epistemic

### 8. Package
Compress into a table/diagram/substitution kit + a **formula shelf** others can apply without you.

**Deliverables:**
- Primitive mapping table
- Formula shelf with relabeled equations
- Invariant list with units
- Metric plan with baselines
- Worked examples (rule-throughs)
- Explicit exclusion list

### 9. Probe
Run representative rules from **s** through **m**; compute; compare to baselines; note failure modes at the seam.

**Test protocol:**
- Select 3-5 core rules from **s**
- Apply mapping to translate to **t**
- Compute numerical predictions
- Compare to observed behavior in **t**
- Document where mapping breaks

## Parameters (Knobs)

| Knob | Range / Values | Effect |
|------|----------------|--------|
| **tightness** | loose ↔ strict | Similarity required to accept the map |
| **coverage** | sparse ↔ broad | Fraction of **s** given counterparts in **t** |
| **invariant count** | few ↔ many | How much disciplined behavior is demanded |
| **invariant strength** | soft hints ↔ hard constraints | How binding the invariants are during transfer |
| **scope** | local element ↔ process ↔ system | Region of **t** the map is allowed to touch |
| **directionality** | s→t / t→s / bidirectional | Where rules originate vs interrogated |
| **claim strength** | framing ↔ hypothesis ↔ provisional policy | Rhetorical weight of the mapping |
| **medium** | words / diagram / table / code / equations | Packaging; affects reuse and error rate |
| **exclusion clarity** | informal notes ↔ explicit exclusion set | Leak-prevention fidelity |
| **test budget** | quick spot-checks ↔ adversarial stress tests | Confidence in transfer |
| **source maturity** | folk schema ↔ codified playbook | Reliability of imported intuition |
| **math depth** | heuristics ↔ relabeled, unitful equations | Extent of formal carryover |
| **unit fidelity** | implicit ↔ explicit units + dim. analysis | Prevents type errors across the seam |
| **metric rigor** | vanity counts ↔ decision-useful eval w/ baselines | Quality of scorekeeping |

## Output Format

A compact **translation guide** `m(s → t)`—shareable and reusable—plus:

### Formula Shelf
Relabeled equations/constraints with units and variable glossary
```
[Formula Name]
Source: [equation in s notation]
Target: [equation in t notation]
Variables: [glossary with units]
Constraints: [parameter bounds]
Estimation: [how to fit θ]
```

### Hypothesis Set
What should be true in **t** if the map holds (quantified)
```
H1: [quantified prediction with units]
H2: [quantified prediction with units]
...
Test protocol: [how to validate]
```

### Rule-Throughs
Worked examples `rule_s ⟶ rule_t` with numbers
```
Rule in s: [description]
Numerical example in s: [with units]
Mapped to t: [description]
Numerical example in t: [with units]
Prediction: [what should happen]
```

### Metric Sheet
Primary/secondary metrics, targets, and review cadence

## Detailed Example: GitHub Issues ← ER Triage

**Target (t):** Backlog of GitHub issues  
**Source (s):** Hospital emergency-room triage (queueing + priority scheduling)

### Primitive Mapping

| s (ER) | t (Issues) | Adapter | Units |
|--------|------------|---------|-------|
| patient | ticket | 1:1 | [entities] |
| triage nurse | intake bot | 1:1 | [agent] |
| severity level | priority class | severity:int → {p0,p1,p2,p3} | [class] |
| attending physician | ticket owner | 1:1 | [agent] |
| beds / staff | parallel servers (devs) | beds:int → devs:int, capacity `c` | [workers] |
| arrival rate `λ` | issue inflow | λ:[patients/hr] → λ:[issues/day] | [1/time] |
| service rate `μ` | resolve rate per dev | μ:[patients/hr/doc] → μ:[issues/day/dev] | [1/time/worker] |
| utilization `ρ=λ/(cμ)` | load factor | direct port | [dimensionless] |
| wait-time SLA | breach threshold | direct port with adapted time units | [time] |

### Preserved Structure (with Math)

**Little's Law:**
```
Source: L = λ·W  [patients = (patients/hr)·(hr)]
Target: Backlog = λ·W  [issues = (issues/day)·(days)]
Invariant: Conservation of items in system
```

**Stability Condition:**
```
Source: ρ = λ/(c·μ) < 1  (stable queue)
Target: ρ = λ/(c·μ) < 1  (stable backlog)
Invariant: If λ ≥ c·μ, queue grows without bound
Action: Must throttle intake or add capacity
```

**Priority Discipline:**
```
Source: Preemptive priority reduces W for high severity at cost to low
Target: P0 issues reduce cycle time for critical bugs at cost to P3 features
Invariant: W_high < W_low when priority enforced
```

**Handoff Protocol:**
```
Source: Patient reassignment requires explicit attending acknowledgment
Target: Issue reassignment requires explicit owner acceptance
Invariant: No orphaned work items
```

### Rule-Through (Numerical)

**Scenario:** Unstable queue

**Given parameters:**
- λ = 5 issues/day (measured from last 30 days)
- μ = 2 issues/day/dev (historical average)
- c = 2 devs (current team)

**Calculation:**
```
ρ = λ/(c·μ) = 5/(2·2) = 1.25 > 1  ⟹  UNSTABLE
```

**Interpretation:** Queue will grow without bound. Backlog accumulates faster than resolution.

**Options to restore stability (ρ < 1):**

(a) **Raise c to 3 devs:**
```
ρ = 5/(3·2) = 0.833 < 1  ✓ stable
Expected backlog reduction: ~40%
```

(b) **Reduce λ via intake gate:**
```
Target: λ = 3 issues/day
ρ = 3/(2·2) = 0.75 < 1  ✓ stable
Method: Stricter triage, merge similar issues
```

(c) **Increase μ via process improvement:**
```
Target: μ = 2.5 issues/day/dev
ρ = 5/(2·2.5) = 1.0  (marginal stability)
Method: Swarming, reduce non-work items, automation
```

**New SLA:** Set `P(W > 5 days) < 0.05` and monitor weekly

### Metrics

**Primary metrics:**
- Cycle time [days] - time from open to close
- Breach rate [%] - fraction exceeding SLA
- ρ [dimensionless] - utilization factor
- Throughput [issues/day] - completion rate
- Age of WIP [days] - time issues spend in progress

**Secondary metrics:**
- Preemption count [count/week] - priority overrides
- Handoff latency [hours] - time for owner acceptance
- Reopen rate [%] - fraction reopened after close

**Counter-metrics (refuse to optimize):**
- Issue close rate if quality drops
- Dev velocity if measured narrowly

**Evaluation:**
- Weekly CFD (cumulative flow diagram)
- Alert when ρ crosses 0.9
- Alert when P0 cycle time slope ↑ two weeks running

### Breakpoints (Explicit Exclusions)

**Does NOT port from ER to issues:**
- Mortality consequences (life/death stakes)
- Informed consent requirements
- Bedside manner / patient care ethics
- HIPAA compliance
- Physical resource constraints (ambulances, equipment)
- Triage under mass casualty protocols

**Why these matter:** Prevents overreach where high-stakes medical decision-making ethics get inappropriately mapped to software bug prioritization.

## Dimensionalization of Metaphorization Quality

Score mappings on these dimensions (0.0 → 1.0):

### 1. Pillar Integrity
Do exclusions avoid cutting the beams the map stands on?
- **0.0** = Nukes a core transform
- **0.5** = Some bleed between preserved/excluded
- **1.0** = Exclusions orthogonal to core structure

### 2. Counterpart Clarity  
Unambiguous primitive mapping (1→1 or explicit 1→n with adapters)?
- **0.0** = Mushy "this ≈ that"
- **0.5** = Mostly crisp
- **1.0** = Crisp with documented degeneracy

### 3. Invariant Set Quality
Preserved bits are operators/constraints (queues, budgets, feedback), not motifs
- **0.0** = Ornaments only
- **0.5** = Roles/flows align
- **1.0** = Core transforms that do computational work

### 4. Formal Leverage
Portable math/algorithms carried (Little's law, PID, Bayes, stock-flow, hazard)
- **0.0** = No formalism
- **0.5** = Heuristics + back-of-envelope
- **1.0** = Named equations with units + glossary

### 5. Adapter Load
How many/complex adapters to make types line up?
- **0.0** = Adapter spaghetti
- **0.5** = A few shims
- **1.0** = Minimal, typed, local adapters

### 6. Failure Localization
Do errors surface at the seam they're caused (good metaphors fail noisily)?
- **0.0** = Errors smear across domains
- **0.5** = Sometimes localized
- **1.0** = Seam-tight: breakpoints catch misuse

### 7. Scope & Edge Crispness
Bounded region where map holds + explicit edges
- **0.0** = Grand theory / toy slice
- **0.5** = Process-level scope
- **1.0** = Process↔system slice with clear borders

### 8. Metric Rigor
Are we scoring what matters with baselines/thresholds?
- **0.0** = Vanity counts
- **0.5** = Mixed useful/vanity
- **1.0** = Decision-useful eval with counter-metrics

### 9. Unit Discipline
Explicit units + dimensional checks?
- **0.0** = Unitless vibes
- **0.5** = Partial unit tracking
- **1.0** = Unit-clean throughout with dimensional analysis

**Quality threshold:** Strong metaphors score ≥0.7 on formal leverage, counterpart clarity, invariant set quality, and unit discipline.

## Formula Shelf (Starter Kit to Port)

### Queueing Theory
```
Little's Law: L = λ·W
  L: average items in system [items]
  λ: arrival rate [items/time]
  W: average time in system [time]

M/M/1 Queue Wait: W_q = ρ/(μ-λ)
  ρ: utilization = λ/μ [dimensionless]
  μ: service rate [items/time]
  
M/M/c Stability: ρ = λ/(c·μ) < 1
  c: number of servers [count]
```

### Bayesian Inference
```
Bayes' Theorem: P(H|D) ∝ P(D|H)·P(H)
  H: hypothesis
  D: data
  
Calibration metrics:
  Brier score: (1/N)Σ(f_i - o_i)²
  Log loss: -(1/N)Σ[o_i·log(f_i) + (1-o_i)·log(1-f_i)]
```

### Control Theory
```
PID Controller: u(t) = K_p·e(t) + K_i·∫e(t)dt + K_d·de/dt
  e(t): error = setpoint - measurement
  u(t): control signal
  K_p, K_i, K_d: tuning parameters
  
Map e to: gap vs target metric
```

### Stock-Flow Accounting
```
Stock Evolution: stock_{t+1} = stock_t + inflow - outflow
  All terms must have same units [items]
  Conservation: Δstock = ∫(inflow - outflow)dt
```

### Survival Analysis
```
Survival Function: S(t) = exp(-∫₀ᵗ h(τ)dτ)
  h(t): hazard rate [1/time]
  S(t): probability of surviving past time t
  
Applications: retention, time-to-defect, churn
```

### Learning Curves
```
Experience Curve: cost ∝ n^(-β)
  n: cumulative production [units]
  β: learning rate [dimensionless]
  
Map to: throughput/quality improvements over time
```

**Usage:** For each formula:
1. Relabel variables for target domain
2. Specify units explicitly
3. Document parameter estimation plan
4. List data requirements
5. Define validation tests

## Common Pitfalls & Patches

| Pitfall | Symptom | Patch |
|---------|---------|-------|
| **Underreach** | Vibes-only mapping; no formulas/units/metrics | Run steps 3-7; build formula shelf; add unit checks + metric sheet |
| **Leakage** | Irrelevant parts of **s** infect **t** | Expand exclusion set; make non-ports explicit |
| **Overreach** | Mapping treated as truth | Keep invariants listed; label as provisional scaffold |
| **Mushy primitives** | Ambiguous counterparts | Reduce coverage; redefine crisper primitives first |
| **Cliché drag** | Stale metaphors bias attention | Generate counter-maps; prefer cleaner, less-worn sources |
| **Untested transfer** | No friction checks | Run adversarial rule-throughs; hunt contradictions/edges |
| **Unit errors** | Dimensional mismatches | Add explicit unit tracking; run dimensional analysis |
| **Metric confusion** | Vanity metrics vs decision-useful | Add counter-metrics; demand baselines and thresholds |

## Downstream Moves & Compounding

### Dimensionalize
Score the map's complexity, leverage, fidelity; pick the best among alternative mappings

**Process:**
1. Generate 2-3 candidate metaphors
2. Score each on the 9 quality dimensions
3. Select highest-scoring map (≥0.7 on key dimensions)

## Integration Protocol

### Rhyme → Metaphorize Pipeline
1. Use Rhyme to identify 3-5 candidate source domains
2. Score candidates on quality dimensions from Rhyme skill
3. Select best source (high on parallel density, source maturity, transfer leverage)
4. Run full Metaphorization protocol on selected source
5. Validate with rule-throughs and numerical examples

### Metaphorize → Dimensionalize Pipeline
1. Complete metaphor mapping
2. Use Dimensionalize to evaluate mapping quality
3. Score on F·L·C criteria
4. Refine mapping based on dimension scores

## Quality Checklist

Before finalizing metaphorization:

- [ ] Primitive mapping table complete with adapters
- [ ] All carried formulas have explicit units
- [ ] Dimensional analysis performed (units consistent)
- [ ] Invariants listed as testable assertions
- [ ] Metric plan includes baselines and thresholds
- [ ] Counter-metrics identified (what not to optimize)
- [ ] Exclusion list explicit and documented
- [ ] 3+ rule-throughs with numerical examples
- [ ] Estimation/calibration plan for parameters
- [ ] Scored ≥0.7 on: formal leverage, counterpart clarity, invariant quality, unit discipline
- [ ] Probed for failure modes at domain seam
- [ ] Packaged for reuse (formula shelf, glossary, worked examples)

## When NOT to Use

Avoid metaphorization for:
- Domains without rich formalism (use rhyme instead)
- When precise formal proof required (use mathematical modeling)
- Source domain poorly understood (strengthen source knowledge first)
- Target domain too different (poor rhyme scores)
- Time-critical decisions (too heavyweight)
- When simple heuristics suffice

## Advanced Techniques

### Multi-Source Synthesis
Combine mappings from multiple source domains:
```
Domain A → [process flow]
Domain B → [resource allocation]  
Domain C → [failure modes]
Synthesized map: composite structure
```

### Bidirectional Mapping
Map s↔t instead of just s→t:
- Validates symmetry of structure
- Reveals hidden assumptions
- Tests for accidental complexity

### Adaptive Mapping
Evolve mapping over time as understanding deepens:
- Version mappings (v1.0, v1.1, etc.)
- Track which predictions held/failed
- Refine based on empirical validation

### Constraint-Based Mapping
Specify hard requirements on mapping:
- "Must preserve conservation laws"
- "Must carry at least 3 equations"
- "Exclusions must be orthogonal to core"

## References

Canonical definition:
https://github.com/jordanrubin/FUTURE_TOKENS/blob/main/metaphorize.md

Examples and workflows:
https://jordanmrubin.substack.com/p/conceptual-rhyme-and-metaphor

Related concepts:
- Structure mapping theory (Gentner)
- Analogical reasoning (Hofstadter)
- Dimensional analysis (Buckingham π theorem)
- Queueing theory (Kendall notation)