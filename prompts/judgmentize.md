---
title: judgmentize
aka: rule, decision synthesis, balance-test
tier: 2
substrate: symbolic ↔ numeric (verbal-optional)
genre: adjudication
---

## what it is

**judgmentize** consumes **two opposing match-filter briefs** for a **fixed claim** `y` and produces a **posterior** and a **verdict** against a preregistered **burden**. it runs a **bounded cross-exam** to force mutual refutation of the strongest points, aggregates **residual Δllr**, and decides: approve / deny / probe.

- scope-locked, symmetry-first, preference-light.
- single operation: judgmentize **consumes** briefs; it does not author them.

---

## when to use

- there is a contested claim with credible **pro** and **con** cases.
- you need a **standard of proof**, not a utility-weighted optimum.
- you want an auditable **posterior + verdict + hinges** (what would change the call).

---

## inputs

- **y**: the fixed claim or choice hypothesis (verbatim; fidelity ≥ .9).
- **brief_pro**, **brief_con**: each a list of ≤ *k* evidence items, **sorted by |Δllr|**, with fields:  
  `sign (↑/↓) • bin (strong|med|weak) or explicit Δllr • source class • horizon • independence note`.
- **π**: prior probability for `y` (or base rate).
- **burden**: either  
  - **β**: explicit posterior threshold (e.g., 0.70), or  
  - **picker params**: **κ** = c_fn/c_fp (cost ratio), **r** ∈ [0,1] (reversibility), **b** ∈ {low,med,high} (blast).  
  judgmentize computes β from these if β not given.
- **δ**: abstain band half-width around β (default 0.05; 0.03 if b=high).
- **σ**: scope (admissible sources, window, units). locked pre-run.
- **m**: mapping from strength bins → Δllr (default: strong=±1.0, med=±0.5, weak=±0.2).
- **ρ**: independence model (cluster ids or per-item correlation penalty in [0,1]).
- **crossfire**: `{k_attack: 3–5, rebuttal: true|false}` (bounded mutual refutation).

optional:
- **viability tag**: `in | border | out` for safety/feasibility pre-screen (if out → auto deny).

---

## outputs

- **posterior**: `p = p(y | residual evidence)`.
- **verdict**: `approve | deny | probe` (probe = within δ of β or viability=border).
- **diagnostics**: top residual contributors; leave-one-out flip test; unrefuted-mass; max source share; cluster penalties.
- **hinges (1–3)**: cheapest probes most likely to flip the verdict.
- **audit**: β computation (or named standard), π, σ, m, ρ, crossfire settings, timestamp.

---

## invariants

- **one operation**: adjudicate only; do not rewrite briefs mid-run.
- **claim frozen**: exact text of `y` at top; no paraphrase drift.
- **symmetry**: both sides required; solo briefs → no ruling.
- **scope-locked**: out-of-σ citations are struck (weight → 0).
- **no double-counting**: correlated items clustered; cap any single lineage ≤ 30% total weight.

---

## how it runs

1) **normalize**  
   map bins to Δllr via **m**; apply independence penalties `(1−ρ)`; keep the top-*k* already supplied.

2) **cross-exam (bounded)**  
   for each side, attack the opponent’s **top `k_attack`** with labeled moves:  
   - **rebut** (counter-evidence): `Δ → Δ − rᵢ`  
   - **undercut** (weak link): `Δ → (1−uᵢ)·Δ`  
   - **undermine** (source/echo): `Δ → (1−mᵢ)·Δ`  
   short **rebuttal** window for the original side (≤ 2 bullets/item, in-scope only).  
   result: **residual Δllr** per item. compute **unrefuted-mass** (untouched top items).

3) **aggregate**  
   sum residuals with signs (pro − con) to get total Δllr; posterior log-odds  
   `ℓ' = logit(π) + Δ_total`. convert to **p** via logistic.

4) **burden check**  
   if explicit **β** provided → use it. else compute via **picker**:  
   - base threshold: `β_bayes = 1 / (1 + κ · (1−π)/π)`  
   - policy bumps: `β = clip( β_bayes + α(1−r) + β_b , 0.5, 0.99 )` with defaults `α=0.05`, `β_b ∈ {0, .05, .10}` for {low,med,high}.  
   compare **p** to **β** with band **δ**.

5) **decide**  
   - **approve** if `p ≥ β` and viability ∈ {in, unset}.  
   - **deny** if `p ≤ 1−β` or viability=out.  
   - **probe** otherwise: emit hinges; set expiry.

6) **emit**  
   posterior, verdict, diagnostics, hinges, audit log.

---

## parameters (knobs)

| knob | values | effect |
|---|---|---|
| **k** | 6–10 | brief granularity (set upstream; judgmentize consumes) |
| **k_attack** | 3–5 | cross-exam coverage of opponent’s strongest claims |
| **m** | {strong,med,weak} → {1.0,.5,.2} (default) | Δllr bin mapping |
| **ρ** | 0.0–1.0 per item/cluster | independence penalty / echo cap |
| **π** | 0–1 | prior; base rate / carry-over |
| **β** | 0.5–0.99 | explicit burden (overrides picker) |
| **κ, r, b** | see above | burden picker inputs when β not supplied |
| **δ** | 0.03–0.10 | abstain band; triggers probe/defer |

---

## dimensionalization (evaluate the run)

- **calibration**: historical brier/log loss of judgmentize outputs (0–1).  
- **stability**: verdict unchanged under leave-one-out and small **m**/ρ perturbations.  
- **independence**: fraction of total weight from independent clusters (↑ is better).  
- **coverage**: % of opponent’s top-`k_attack` actually attacked (target ≥ 80%).  
- **unrefuted-mass**: % of top-k left untouched (↓ is better).  
- **hinge clarity**: expected flip probability × cost for the top probe.  
- **transparency**: % items with sources + bin→Δ mapping disclosed.

---

## what it generalizes

- **judicial balancing tests** (weigh factors against a standard),  
- **bayesian evidence aggregation** (sum of Δllr),  
- **ach weighing** (minus spreadsheet pathologies),  
- **meta-analysis** with correlation handling (ρ) and near-threshold abstain rules (δ).

---

## minimal signature

```
judgmentize(y, brief_pro, brief_con,
            π, β | (κ,r,b), δ,
            m (bin→Δllr), ρ, crossfire)
→ {posterior, verdict, diagnostics, hinges, audit}
```

---

## prompts (for llm usage)

- **crossfire (con on pro)**  
  “attack the opponent’s top {k_attack} items. for each: ATTACK={rebut|undercut|undermine}, EFFECT={−r or ×(1−u)}, cite in-scope σ, return residual Δllr.”

- **rebuttal (pro on those attacks)**  
  “for each attacked item: RESPOND={satisfy|admit|clarify}; if satisfy, add in-σ evidence; update residual Δllr. max 2 bullets/item.”

- **judgmentize**  
  “aggregate **residual** Δllr with independence penalties ρ; compute posterior from π; compute or apply β (δ band); output verdict, top 3 residual contributors, unrefuted-mass, max source share, and 1–3 hinges.”

---

## done when

- opposing briefs were cross-examined within scope;  
- posterior and verdict are emitted with **β, δ** stated;  
- diagnostics show **coverage ≥ 80%**, **max lineage ≤ 30%**, **stability pass**;  
- hinges are concrete and cheap enough to run next.

---

## see also

**match-filter** (build briefs), **criterion control** (threshold policy), **viability** (in/border/out), **lattice** (pareto prune), **confmax** (optimize once a verdict needs sizing).
