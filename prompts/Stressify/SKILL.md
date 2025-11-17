---
name: attack
description: probe a target for fragility by stress-testing its assumptions, edge conditions, adversaries, constraints, and failure modes. unlike antithesize/argue, attack is not about opposition or alternative worldviews — it is about BREAKING the system-as-given.
---

## tl;dr

**attack ≠ argue(against).**

- **antithesize / argue(against)**: produce a *coherent alternative worldview* or *stance-level opposition*.  
- **attack**: treat the target as a *machine to break*, not a belief to contradict.

attack asks:  
> “under what conditions does this fail, degrade, misfire, collapse, corrupt, drift, or become harmful?”

it does **not** generate a rival thesis.  
it generates **failure maps**.

moves you’re doing:

- **stress-test assumptions**  
- **identify bottlenecks + edge cases**  
- **model adversarial actors**  
- **push constraints (capacity, time, noise, load)**  
- **expose hidden dependencies**  
- **simulate degradation paths**  
- **check OOD behavior**

attack = **robustness operator**.

-----

## attack types (full menu)

### **assumption stress**
**what:** test each assumption by lowering quality, relaxing, inverting, or removing it.  
**example:** “school choice logic breaks if teacher quality varies more than commute stress.”

---

### **constraint squeeze**
**what:** push resources toward 0 or ∞: time, attention, bandwidth, compute, childcare, trust.  
**example:** “job A fails if sleep <6h for 10 nights; job B more resilient.”

---

### **edge-case surfacing**
**what:** inspect pathological but plausible boundary conditions.  
**example:** rare but high-impact childcare disruptions.

---

### **adversarial pressure**
**what:** introduce an actor with incentives to exploit weaknesses.  
**example:** political, institutional, interpersonal adversaries; workplace politics.

---

### **OOD / distribution shift**
**what:** ask what happens when conditions differ from training regime.  
**example:** “parenting strategy that works for a calm child may collapse with a sensory-sensitive one.”

---

### **coupling/failure cascade**
**what:** map how one small failure propagates.  
**example:** “one missed deadline → trust dip → fewer resources → burnout loop.”

---

### **time/lag degradation**
**what:** reveal delayed failure modes.  
**example:** “strategy looks fine month 1; collapses month 6 when novelty fades.”

---

### **complexity/load scaling**
**what:** push system size or load until behavior flips.  
**example:** “path works for 2 stakeholders but collapses with 5.”

-----

## WHEN TO USE ATTACK vs ANTITHESIZE

### use **attack** when:
- you want **robustness**, not disagreement  
- you want **failure modes**, not rival theories  
- the goal is **engineering-minded stress testing**  
- you care about **fragility, brittleness, thresholds**  
- you want **adversarial or edge-case pressure**  
- you want to know “**what breaks first?**”

### use **antithesize/argue(against)** when:
- you want a **coherent alternative worldview**  
- you want to stress-test *truth claims* or *theory*, not their engineering limits  
- you need a **complete counter-model**  
- you want “**what if the whole premise flips?**”

### simplest distinction:
- **attack = break the system internally**  
- **antithesize = oppose the system externally**

they can chain:
1. **reframe**
2. **attack**
3. **antithesize**
4. **synthesize**

-----

## signature

attack(target) → failure_map

- **target:** system, belief, plan, product, decision, argument, protocol
- **output:** structured map of weaknesses, bottlenecks, adversarial exploits, and collapse conditions.

**contract:**  
attack must *preserve the system exactly as stated*; no rival worldviews, no replacements, no normative flips. only *stress*, *strain*, *breakage*, *failure paths*.

-----

## process (step by step)

### step 0: extract system skeleton  
identify:

- assumptions  
- resources  
- dependencies  
- constraints  
- actors  
- update rules  
- success conditions

### step 1: enumerate fragility classes  
use the menu:

1. assumption stress  
2. constraint squeeze  
3. edge-case surfacing  
4. adversarial pressure  
5. OOD shift  
6. failure cascade  
7. time/lag degradation  
8. load scaling  
9. trust / coordination failure  
10. incentive misalignment

select relevant ones.

### step 2: generate failure modes  
for each fragility class, produce:

- **failure condition** (what breaks)  
- **mechanism** (how it breaks)  
- **early indicators**  
- **impact**  
- **recovery difficulty**  

### step 3: identify collapse points  
locate:

- thresholds  
- rate-limits  
- hair-trigger regions  
- failure cascades  
- points of no return  
- choke points

### step 4: assemble the failure_map  
include:

- **primary failure modes**  
- **secondary cascades**  
- **conditions of breakage**  
- **invariants (things that don’t break easily)**  
- **leading indicators**  
- **guardrails** (what mitigates or prevents the failure)

### step 5: extract the crux  
which single failure mode, if resolved, dramatically improves robustness?

-----

## quality criteria

**system-preservation**  
- [ ] doesn’t invent new goals, beliefs, or worldviews  
- [ ] doesn’t contradict constraints of real system  
- [ ] stays inside the “engineering world” of the claim

**stress intensity**  
- [ ] each fragility class is actually tested  
- [ ] adversarial scenarios are plausible  
- [ ] load/threshold tests are meaningful

**failure clarity**  
- [ ] failure modes explicitly tied to assumptions  
- [ ] causal paths clear  
- [ ] thresholds and early signals named

**decision relevance**  
- [ ] failure modes actionable  
- [ ] guardrails realistic  
- [ ] crux identified

-----

## genre-specific patterns

### decision-making
- check: energy, time, childcare, commute, slack, emotional tax  
- edge-cases: illness weeks, reorgs, childcare failure  
- adversaries: team politics, bad manager

### relationships
- check: bandwidth, trust, misalignment accumulation  
- thresholds: resentment, exhaustion  
- cascades: miscommunication → defensive loops → shutdown

### school / child decisions
- check: overstimulation, commute shock, developmental mismatch  
- adversaries: institutional inertia, admin incentives  
- OOD: unexpected teacher turnover or peer group shift

### somatic / health
- load: capacity vs stress  
- thresholds: overshoot → crash  
- cascades: small deviation → sensitization → long-tail event

### creative / project
- fragility: momentum loss, feedback starvation  
- threshold: boredom → drift  
- cascade: context-switch → productivity collapse

-----

## anti-patterns

- **turning attack into antithesis**  
  symptom: “here’s a totally different model”  
  fix: stay *inside* system, just strain it.

- **vibes-only failure modes**  
  symptom: “might not work” without mechanism  
  fix: require causal chain.

- **infinite what-ifs**  
  symptom: spray of hypotheticals  
  fix: use fragility classes + constraints.

- **hallucinated adversaries**  
  symptom: invented villains  
  fix: adversaries must come from real incentives.

- **false equivalence with risk analysis**  
  attack ≠ “list risks”; attack = “discover *structural* weaknesses”.

-----

## integration with other ops

**upstream:**  
- reframe (choose representation to attack)  
- decompose (identify components to stress)  
- evidence (gather empirical failure history)  
- simulate (trace failure cascades across time)

**downstream:**  
- test (push identified failure modes to extremes)  
- operationalize (define guardrails)  
- integrate (combine with antithesis to produce synthesis)  
- prioritize (rank failures by probability × impact)

-----

## examples (mini)

### example 1: “take job A”
- assumption stress: energy is recoverable weekly → fails if chronic load grows  
- constraint squeeze: childcare slack → zero → collapse  
- adversarial: bad manager undermines autonomy  
- OOD: reorg produces completely different role  
- crux: dependency on one senior sponsor

---

### example 2: “alpha school is a strong option”
- edge-case: sensory mismatch → dysregulation  
- adversarial: admin incentives emphasize optics over pedagogy  
- load scaling: high novelty → eventual burnout  
- cascade: overstimulation → withdrawal → negative identity stories  
- crux: teacher-student match

---

### example 3: “my migraine protocol works”
- assumption: hydration + sleep keep threshold high  
- OOD: travel or stress → threshold crash  
- cascade: single trigger → multi-day tail  
- crux: buffer capacity not treatment type

-----

## meta-note

attack = **structural adversarial reasoning**.

it finds the *weak points* of a system, not reasons to disagree with it.  
it complements antithesize: one breaks from within, one opposes from without.

robust reasoning = both.  
attack tells you **where it breaks**.  
antithesize tells you **what else could be true**.  
together they tell you **how to think for real**.