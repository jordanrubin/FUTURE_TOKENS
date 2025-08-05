---
title: confmax
aliases: [credmax, conviction-greedy pick]
tier: 2
substrate: symbolic
genre: reasoning
---

## what it is

**confmax** is a fast heuristic: rank live options by *felt confidence* and commit to the top one. it’s a subjective-probability argmax—speed over nuance, motion over precision.

you’re not optimizing expected value. you’re just picking the option you believe in *most*, right now.

---

## how it runs (≈10–60 s)

1. **enumerate** — list candidates A, B, C…  
2. **score** — assign gut-level confidence (coarse labels or 0–1).  
3. **pick** — choose the highest-scoring option.  
4. **(optional) floor** — if the top score < threshold, pause instead of acting.  
5. **(optional) tie rule** — break near-equals by rule (e.g., fastest to execute).  

*if you proceed using the pick, that’s a steering compound; confmax itself just makes the choice.*

---

## knobs

| knob             | range / values                                   | effect                                                      |
|------------------|---------------------------------------------------|-------------------------------------------------------------|
| **scale**        | hi/med/lo ↔ 0–1                                   | scoring resolution; coarser reduces false precision         |
| **floor**        | none ↔ soft (≥0.6) ↔ hard (≥0.8)                   | prevents low-signal commits                                 |
| **tie rule**     | first / random / coin-flip / fastest-to-execute   | avoids dithering between equals                             |
| **ambiguity**    | no penalty ↔ discount wide-uncertainty options    | suppresses noisy/conflicted options                         |
| **timebox**      | 15 s / 60 s / 5 m                                 | bounds deliberation cost                                    |
| **horizon**      | now-weighted ↔ option-value-weighted              | favors enabling options vs. immediate payoff                |
| **recheck**      | never / trigger-based / periodic                  | when to re-run confmax as info shifts                       |

---

## when to use

- you need fast movement and payoff spread is low  
- you’re triaging hypotheses, metaphors, or bugfixes  
- you’re in a rapid loop and want quick, low-regret progress

---

## micro-example

**context:** choosing next product experiment.

**candidates:**  
- shorten sign-up form  
- add free-trial banner  
- replace hero video with static image

**gut scores after 60s metrics review:**  
- form: **0.68**  
- banner: **0.52**  
- video swap: **0.41**

**floor:** 0.60 → pass.  
**top pick:** *shorten form*  
**tie rule (unused):** fastest-to-execute.  
**recheck trigger:** re-run if bounce rate shifts by >5% or if new data arrives.

---

## contrasts

| move                         | key difference                                      |
|-----------------------------|------------------------------------------------------|
| expected-value maximization | also weighs payoff size; slower; tier 3             |
| multi-criteria scoring      | sums across dimensions, not just confidence          |
| probability matching        | samples by credence instead of greedy pick           |
| robust satisficing          | picks first ≥ threshold instead of the highest       |

---

## pitfalls & patches

| pitfall            | symptom                                   | patch                                             |
|--------------------|--------------------------------------------|---------------------------------------------------|
| payoff neglect     | low-confidence, high-payoff options ignored| switch to EV or hybrid scoring                    |
| overconfidence     | spurious precision drives bad picks        | use coarser scale; apply ambiguity penalty        |
| anchoring          | early score dominates                      | take a reset break, then rescore                 |
| stale priors       | outdated belief dominates                  | add recency weight; set recheck rule             |
| churn              | constant re-confmaxing                     | lock selection until new signal justifies review |

---

## outputs

- a single **pick** + its confidence score  
- (optional) **floor note** explaining pause or go  
- (optional) **recheck rule** (when the choice gets re-evaluated)

**use confmax when you want to move quickly, and you trust your sense of what’s likeliest to work.**