---
name: confmax
description: select the option with the highest current subjective confidence. confmax is a speed-biased adjudication operator; it trades nuance for velocity. unlike expected-value reasoning or multi-criteria scoring, confmax greedily picks the option that feels most likely to work *right now*, given the available context.
---

## tl;dr

**confmax = conviction-greedy choice.**

- **judgementize** → integrates evidence, risks, reversibility, hinges, burden  
- **confmax** → skips all of that and picks the option that feels most correct  
- **diverge** → expands options  
- **reframe** → restates through one lens  
- **attack / antithesize** → generate critique/opposition  

confmax is the *fastest* decision operator.  
no ceremony, no burden-scaling, no deep synthesis — just:

> “which option do i currently believe in the most?”

---

## when to use

use **confmax** when:

- you need movement more than precision  
- the cost of being slightly wrong is low  
- you’re in a rapid iteration loop (experiments, debugging, prototyping)  
- the payoff distribution is narrow (low variance across options)  
- you’re triaging options to feed into deeper operators (e.g., testing, simulate)  
- you want to select a branch for further exploration, not commit long-term  

don’t use when:

- the decision has high irreversibility → use **judgementize**  
- you need explicit tradeoff mapping → **multi-criteria** or **expected value**  
- you’re dealing with asymmetric risks → attack → synthesize → judgementize  
- the problem is still mushy → decompose / reframe / diverge first

rule of thumb:  
**confmax = act on the strongest current belief.**

---

## what confmax produces

confmax outputs:

- the chosen option  
- its confidence score  
- (optional) ambiguity penalty  
- (optional) floor status (go / pause)  
- (optional) recheck condition  
- (optional) tie-break rule used  

it’s intentionally lightweight.  
the emphasis is **momentum**, not rigor.

---

## confmax modes (menu)

### **plain confmax**
choose the option with the highest raw subjective score.

---

### **ambiguity-aware confmax**
discount options with wide uncertainty or internal conflict.

---

### **floor-gated confmax**
require the top confidence to exceed a threshold; otherwise pause.

---

### **timeboxed confmax**
limit scoring time (e.g., 15s, 60s, 5m) to prevent overthinking.

---

### **horizon-adjusted confmax**
boost options that preserve future optionality or learning.

---

### **tie-broken confmax**
apply deterministic rule among near-equals (fastest, cheapest, safer).

---

## signature

confmax(options, scale?, floor?, ambiguity?, tie_rule?, timebox?, horizon?) → pick

- **options:** the candidate actions  
- **scale:** coarse/medium/fine scoring resolution  
- **floor:** minimum acceptable confidence  
- **ambiguity:** whether to penalize highly uncertain options  
- **tie_rule:** how to break near-ties  
- **timebox:** max time to produce scores  
- **horizon:** whether to weight future option-value  

output: a single pick + metadata.

---

## process (step by step)

### step 0: enumerate
list the live options A/B/C/…

---

### step 1: score
assign subjective confidence scores:

- coarse labels (hi/med/lo)  
- or numeric (0.0–1.0)  
- or tiered buckets (“likely”, “uncertain”, “longshot”)

apply **ambiguity penalties** if enabled.

---

### step 2: pick
select the maximum-confidence option.

if ambiguity-penalized, apply after discounting.

---

### step 3: apply floor (optional)
if top score < floor threshold:

- **pause**, not commit  
- optionally request quick probes (or switch to judgementize)

---

### step 4: tie-break (optional)
if several scores are within epsilon:

apply rule:

- fastest to execute  
- cheapest  
- reversible-first  
- random / coin-flip  
- alphabetical (the barbaric fallback)

---

### step 5: output recheck rule (optional)
define when confmax should be re-run:

- after new data arrives  
- after N minutes/hours  
- threshold change in key signals  

keeps things from ossifying.

---

## knobs

| knob              | values                         | effect                                     |
|-------------------|---------------------------------|---------------------------------------------|
| **scale**         | coarse/med/fine                 | coarser = less overfitting to noise        |
| **floor**         | off / soft (≥0.6) / hard (≥0.8) | blocks commits with weak conviction        |
| **ambiguity**     | off / mild / strong             | penalizes uncertain/conflicted options     |
| **tie_rule**      | fastest / cheapest / random     | resolves near-equal options cleanly        |
| **timebox**       | 15s / 60s / 5m                  | caps deliberation cost                     |
| **horizon**       | now / option-value              | boosts learning-preserving choices         |
| **recheck**       | none / trigger-based / periodic | prevents stale decisions                   |

---

## when confmax dominates

confmax is ideal when:

- differences between options are small  
- confidence is a good proxy for true value  
- you’re picking a default branch to explore further  
- cost of switching later is low  
- you’re fighting decision fatigue or analysis paralysis  
- you want velocity more than optimality  

---

## pitfalls & patches

| pitfall              | symptom                                          | patch                                      |
|----------------------|---------------------------------------------------|--------------------------------------------|
| payoff neglect       | low-conf high-payoff options ignored             | switch to EV or hybrid scoring             |
| overconfidence       | precise scores on weak evidence                  | use coarse scale + ambiguity penalty       |
| anchoring            | first-seen option inflates confidence            | reset and rescore                          |
| stale priors         | outdated beliefs dominate                        | add recency weight + recheck triggers      |
| churn                | rapid oscillation between picks                  | commit until new signal crosses threshold  |
| bias amplification   | confmax reflects existing blind spots            | run diverge or attack to widen the field   |

---

## contrasts

| operator            | difference                                        |
|---------------------|----------------------------------------------------|
| **judgementize**    | slow, thorough, risk-aware, reversible-aware       |
| **expected value**  | weighs payoff size; confmax ignores magnitude      |
| **probability match** | samples instead of greedily picking             |
| **robust satisficing** | picks first above threshold                     |
| **multi-criteria**  | sums across dimensions vs 1D confidence axis       |

---

## micro-example

**context:** choosing next quick experiment.

**options:**  
- strategy A  
- strategy B  
- strategy C

**scores after 45 seconds:**  
- A → 0.66  
- B → 0.54  
- C → 0.41  

**floor:** soft at 0.60 → A qualifies.  
**tie rule:** unused.  
**recheck:** rerun if new analytics cross threshold.

**pick:** **A** — fastest, clearest, highest conviction.

---

## meta-note

confmax is the **fast-path chooser**.  
it’s not meant to be wise — it’s meant to be *fast*.

use it when:

- you want motion  
- you want momentum  
- you want to explore a branch  
- you want to break indecision  
- you want to avoid overthinking  
- the stakes of error are low  

confmax is the operator you call when you want to stop spinning and **start doing**.

---