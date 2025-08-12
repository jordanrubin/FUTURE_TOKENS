---
title: ramify
tier: 3
substrate: symbolic
genre: reasoning
---

## what it is

**ramify** takes a bounded premise set **P**—assumptions you agree to treat as **axioms for this pass**—and forward-chains all logically/causally necessary consequences until closure (or your depth/time cap). the result is a **closure sheet**: predictions, constraints, edge cases, red flags that *must* hold if **P** holds. no relitigating the premises mid-run.

> mindset: “IF P, THEN everything that follows.”

---

## how it runs

1) **freeze P** — write the core statements crisply; note scope/horizon.  
2) **choose a rule kit** — e.g., { ⇒, ∧, ¬ }, causal propagation, stock–flow, feedback, queueing (little’s law), bayes updates, domain heuristics.  
3) **forward-chain** — apply rules to **P**, add any new sentence **Q** to the working set; iterate to fixed point or depth cap.  
4) **cluster fallout** — bucket derived sentences: *obvious · novel · actionable · edge-case*.  
5) **sanity filter** — eject trivial tautologies; flag contradictions (signals **P** clashes).  
6) **package closure** — one-page bullet sheet (see outputs).  
7) **(compound later)** — if you use the sheet to reprioritize or implement, that’s a separate *steering/control* compound.

---

## works from a sketch

you don’t need a full map. a **minimal seed** is enough:

- 2–4 **axioms** (e.g., invariants from a metaphor)  
- 1–2 **exclusions** (do-not-port)  
- scope + horizon

freeze that as **P** and chain. if you only have a rhyme, ask the model to propose **P** first (“extract 3 candidate invariants + 2 exclusions”), then ramify.

---

## outputs

**A. closure sheet (canonical)**  
- **predictions** (what you should observe first)  
- **constraints** (caps, conservation, budgets)  
- **edge cases** (where **P** breaks or flips sign)  
- **red flags** (high-hazard branches)  
- **tests** (leading indicators + falsifiers)

**B. blog packaging (optional)**  
- **obvious parallels to adopt now** (low risk, direct consequences)  
- **import candidates** (non-native practices implied by **P**)  
- **issues you’ll hit** (frictions/failure modes) + one-line mitigations

either way, include a **monitoring plan** (indicators + thresholds) and 2–3 **guardrails** (*if IND > THR within T → ACTION*).

---

## knobs

- **rule depth** — 1/2/3 hops; default 2.  
- **necessity strictness** — must-follow vs may-follow (keep “may” in a side list).  
- **operator mix** — logic vs causal vs stock–flow/feedback.  
- **equilibrium pass** — close obvious loops; note settle time.  
- **adversarial pass** — strategic agent responses + counter-moves.  
- **stop rule** — depth cap or marginal-gain cutoff.

---

## micro-example (tiny)

**P:** (1) worsening “vitals” preempt FIFO; (2) capacity finite; (3) every ticket has severity.  
**closure (snippet):**  
- prediction: queue length obeys little’s law (`L = λ W`).  
- constraint: without a vitals signal, preemption can’t fire ⇒ false negatives.  
- edge-case: capacity spikes force rationing or “deaths” (timeouts).  
- actionable: must log “time since last touch” to compute vitals.

---

## pitfalls & hygiene

- **combinatorial boom** — closure explodes → cap depth; narrow **P**.  
- **blind rules** — you forgot queueing or feedback → pick the right kit first.  
- **confirmation bias** — you toss unpleasant branches → add a red-team pass.

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
