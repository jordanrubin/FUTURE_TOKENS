---
title: metaphorization
tier: 3
substrate: symbolic (verbal-optional)
genre: abstracting
---

## what it is

**metaphorization** builds an explicit, high-coverage mapping from a familiar source **S** onto a live target **T** so that rules, heuristics, and intuitions from **S** can be systematically **ported** into testable hypotheses or prompts for **T**. heavier than tier-2 **rhyme**; lighter than a fully formal mapping. preserve as many invariants as are useful; fence off the rest.

---

## how it runs

1. **select source (s)**  
   pick a domain with robust, worked rules that meaningfully fits **t**.

2. **list primitives**  
   enumerate entities, relations, and operations in **s** that drive its behavior.

3. **draft mapping `m : s → t`**  
   name counterparts in **t** for each primitive in **s**. mark gaps and non-matches.

4. **name invariants**  
   specify the transforms/constraints from **s** to preserve under **m** (queue discipline, conservation, budgets, versioning, escalation semantics, etc.). write them as checkable statements.

5. **declare exclusions**  
   define an explicit do-not-port set (breakpoints, scope limits, taboo regions).

6. **package**  
   compress into a table/diagram/substitution kit others can apply without you.

7. **probe (optional)**  
   run representative rules from **s** through **m** to see what they predict/advise for **t**.

---

## knobs

| knob                    | range / values                                         | effect                                                       |
|-------------------------|---------------------------------------------------------|--------------------------------------------------------------|
| **tightness**           | loose ↔ strict                                          | similarity required to accept the map                        |
| **coverage**            | sparse ↔ broad                                          | fraction of **s** given counterparts in **t**                |
| **invariant count**     | few ↔ many (unbounded)                                  | how much disciplined behavior is demanded                    |
| **invariant strength**  | soft hints ↔ hard constraints                           | how binding the invariants are during transfer               |
| **scope**               | local element ↔ process ↔ system                        | region of **t** the map is allowed to touch                  |
| **directionality**      | s→t / t→s / bidirectional                               | where rules originate vs where they’re interrogated          |
| **claim strength**      | framing ↔ hypothesis ↔ provisional policy               | rhetorical weight of the mapping                             |
| **medium**              | words / diagram / table / code                          | packaging; affects reuse and error rate                      |
| **exclusion clarity**   | informal notes ↔ explicit exclusion set                 | leak-prevention fidelity                                     |
| **test budget**         | quick spot-checks ↔ adversarial stress tests            | confidence in transfer                                       |
| **source maturity**     | folk schema ↔ codified playbook                          | reliability of imported intuition                            |

---

## output

a compact **translation guide** `m(s → t)`—shareable and reusable—plus, optionally:

- **hypothesis set** (what should be true in **t** if the map holds)  
- **rule-throughs** (worked examples of `rule_s ⟶ rule_t`)

---

## micro-example

**target (t):** backlog of github issues  
**source (s):** hospital emergency-room triage

| s (er)              | t (issues)         |
|---------------------|--------------------|
| patient             | ticket             |
| triage nurse        | issue bot          |
| severity level      | priority label     |
| attending physician | ticket owner       |
| wait-time sla       | escalation trigger |

**preserved structure (examples):**  
- deteriorating vitals preempt fifo → rising error-rate preempts fifo  
- stabilize before transport → apply minimal fix before reassignment  
- handoff requires accountability → reassignment requires explicit owner ack

**breakpoints (declare so the metaphor doesn't mislead):**  
- mortality, legal consent, bedside ethics → not carried.

**dimensionalization of metaphorization**

	1.	pillar integrity: do exclusions avoid cutting the beams the map stands on?

	•	0.0 nukes a core transform
	•	0.5 some bleed
	•	1.0 exclusions are orthogonal to pillars

	2.	counterpart clarity: unambiguous primitive mapping (1→1 or explicit 1→N with adapters)?

	•	0.0 mushy “this ≈ that”
	•	0.5 mostly crisp, a few hacks
	•	1.0 crisp with documented degeneracy

	3.	invariant set quality: preserved bits are operators/constraints (queues, budgets, feedback), not motifs

	•	0.0 ornaments
	•	0.5 roles/flows
	•	1.0 core transforms that actually do work

	4.	formal leverage: portable math/algos you can carry (little’s law, pid, bayes, stock–flow, s-curves)

	•	0.0 none
	•	0.5 heuristics + back-of-envelope
	•	1.0 named equations/models relabeled cleanly

	5.	adapter load (structural, not effort): how many/complex adapters to make types line up?

	•	0.0 adapter spaghetti
	•	0.5 a few shims
	•	1.0 minimal, typed, local

	6.	failure localization: do errors surface at the seam they’re caused (good metaphors fail noisily)?

	•	0.0 errors smear everywhere
	•	0.5 sometimes localized
	•	1.0 seam-tight: breakpoints catch misuse

	7.	scope & edge crispness: bounded region where the map holds + explicit edges

	•	0.0 grand theory / toy slice
	•	0.5 process-level
	•	1.0 process↔system slice with named borders

---

## common pitfalls & patches

| pitfall            | symptom                                        | patch                                                         |
|--------------------|-----------------------------------------------|---------------------------------------------------------------|
| leakage            | irrelevant parts of **s** infect **t**        | expand the exclusion set; make non-ports explicit             |
| overreach          | mapping treated as truth                      | keep invariants listed; label mapping as provisional scaffold |
| mushy primitives   | ambiguous counterparts                         | reduce coverage; redefine crisper primitives first            |
| cliché drag        | stale metaphors bias attention                 | generate counter-maps; prefer cleaner, less-worn sources      |
| untested transfer  | no friction checks                             | run adversarial rule-throughs; hunt contradictions/edges      |

---

## downstreams & compounding

- **dimensionalize** — score the map’s complexity, leverage, fidelity; pick the best among alternatives.  
- **ramify** — unfold implications and second-order effects under `m`.  