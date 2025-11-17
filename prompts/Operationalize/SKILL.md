---
name: operationalize
description: turn vague goals, intuitions, or claims into concrete, measurable, decision-ready specs. define observables, metrics, thresholds, and procedures so anyone (human or llm) can run the same test or track the same success condition.
---

## tl;dr

**operationalize ≠ explain, argue, or simulate.**

- **argue / antithesize** → change stance / worldview.  
- **evidence** → connect claim to the world via data.  
- **simulate** → unfold plausible futures.  
- **attack** → find failure modes.  

**operationalize** asks:

> “what, exactly, would we *look at*, *measure*, and *do* to know if this is working, true, or worth it?”

moves you’re doing:

- **disentangle** wishy language into distinct variables  
- **define observables** (what you can actually see/measure)  
- **specify metrics** (how you compress observables)  
- **set thresholds** (what counts as success/failure)  
- **define procedures** (how to collect, at what cadence, with what stop rule)  
- **fail-closed** (if you can’t define it, you mark it as “needs refinement,” not pretend)

canonicalize was about: “turn messy move doc → canonical spec.”  
operationalize is: “turn messy *intuition/goal/belief* → canonical **world-facing spec**.”

-----

## when to use (vs other ops)

use **operationalize** when:

- you have: *“i want rune to thrive”*, *“this job feels good”*, *“alpha seems scammy”*, *“this protocol works”*  
- you need: **clear success criteria**, **tests**, or **stop rules**  
- you want: to **reduce hand-wavy goals** into contracts you can check against reality

don’t use it when:

- you mainly want alternative worldviews → **antithesize**  
- you mainly want evidence search → **evidence**  
- you mainly want future arcs → **simulate**  
- you mainly want failure modes → **attack**

**pipeline view**:

1. **reframe** (pick representation)  
2. **decompose** (identify dimensions)  
3. **operationalize** (make metrics + tests)  
4. **evidence / simulate / attack** (now that it’s concrete, use other ops)

-----

## operationalization types (menu)

### **goal operationalization**
turn “i want X” into metrics + thresholds.

- vague: “i want garden leave to be successful”  
- operationalized: “success = (a) ≥3 robust career options with written dossiers; (b) ≥4/7 days where i feel ‘engaged’ on a 1–5 scale for 8 consecutive weeks; (c) finances within agreed runway band.”

---

### **hypothesis operationalization**
turn “i think X causes Y” into testable predictions.

- vague: “alpha improves outcomes”  
- operationalized: “if alpha works, we should see: (1) standardized test deltas ≥ p; (2) parent-reported stress ≤ q; (3) college placement in top-k vs matched peers in 5y. here’s how to measure.”

---

### **process / protocol operationalization**
turn “this routine works” into observable patterns + triggers.

- vague: “my migraine protocol helps”  
- operationalized: “over 90 days, frequency < N/month and severity < S using a 0–10 scale; track daily, note deviations; protocol ‘works’ iff this holds controlling for travel/stress events.”

---

### **standard / policy operationalization**
turn “we should do X” into concrete behavior + checks.

- vague: “we should prioritize family time”  
- operationalized: “≥3 evenings/week with 90min uninterrupted kid time; phone in drawer; quarterly review of adherence with wife; threshold: <2 evenings/week for 3 weeks triggers renegotiation.”

---

### **constraint / guardrail operationalization**
turn “don’t blow up” into crisp bounds.

- vague: “don’t overcommit”  
- operationalized: “no more than 2 concurrent ‘new’ projects with ≥5h/week load; any new yes requires explicit no elsewhere; weekly check-in.”

-----

## signature

operationalize(target, purpose) → spec

- **target:** vague goal / belief / plan / standard (“make alpha not a grift decision,” “decide if job A is worth it”)  
- **purpose:** `measure` | `decide` | `test` | `monitor` (optional, but helpful)

**output:** a structured spec:

- variables  
- observables  
- metrics  
- thresholds  
- procedures  
- failure/needs markers if something can’t yet be made concrete

**contract:** if some part cannot be made precise without lying, the spec MUST mark it as **needs-clarification** instead of faking precision (canonicalize-style fail-closed).

-----

## process (step by step)

### step 0: clarify the object and horizon

- what **kind of thing** is this? (goal, hypothesis, protocol, policy, constraint)  
- what **time horizon** matters? (days, weeks, months, years)  
- what **stakes**? (low → high) influence granularity.

---

### step 1: decompose into dimensions

for the target, list 3–7 dimensions that matter. examples:

- for “good job”: money, learning, autonomy, stress, family impact, optionality  
- for “good school”: learning, social environment, kid affect, logistics, future options  
- for “migraine help”: frequency, severity, duration, recovery time, side effects

if you can’t list dimensions, you’re still at decompose/reframe, not operationalize.

---

### step 2: define observables for each dimension

observables = what you can *see or record*:

- counts (episodes/week, hours, events)  
- ratings (1–5 or 1–10 self-report)  
- binary flags (did it happen or not)  
- artifacts (docs written, offers obtained)  
- traces (messages, calendar events, sleep data, etc.)

for each dimension:  
> “what could we literally write down about this next week?”

if there is no plausible observable, mark that dimension as **latent** for now.

---

### step 3: turn observables into metrics

for each observable:

- define the **metric function**: how you aggregate over time / instances.  
  - mean, median, max, counts, proportion, streak length, etc.  
- define **measurement window**: per day/week/month, rolling window, etc.  
- define **directionality**: more is better, less is better, near target is better.

example:

- observable: “evenings with 90min uninterrupted kid time”  
- metric: count per week, rolling 4-week average  
- direction: higher is better, with a “good enough” zone.

---

### step 4: set thresholds & decision rules

now define:

- **success region** (e.g., “4–5 evenings/wk is success”)  
- **warning region** (e.g., “2–3 evenings/wk for 2 weeks triggers check-in”)  
- **failure region** (e.g., “<2 evenings/wk for 3 weeks = we’re off spec”)  
- **stop rules** (when to stop/adjust an experiment, change jobs, etc.)

for hypotheses:

- define what pattern counts as **evidence for** vs **evidence against** vs **inconclusive**.  
- don’t overspecify; often 2–3 simple conditions are enough.

---

### step 5: specify procedures

for each metric:

- **who** collects / logs? (you, alyson, app, model)  
- **when**? (daily, weekly, at decision gates)  
- **where**? (notion doc, spreadsheet, notebook)  
- **how long**? (minimum trial length)  
- **what tools**? (calendar tags, rating scales, wearable data, llm log summarization)

this is where canonicalize echoes: you’re effectively writing a tiny **run contract** for your life experiment.

---

### step 6: mark unknowns + failure of operationalization

for anything you can’t honestly operationalize:

- add a **needs_clarification** entry  
- optionally suggest **proxies** or **experiments** that might make it operationalizable later

example:

> “meaningfulness” → needs_clarification. tentative proxy: “days/wk i spontaneously talk about this work with enthusiasm.”

fail-closed beats fake clarity.

---

### step 7: assemble the spec

the final spec should look like:

- **object** (what we’re operationalizing)  
- **horizon**  
- **dimensions**  
- **metrics** (with definitions)  
- **thresholds / decision rules**  
- **procedures**  
- **needs_clarification** items  

optionally include a small **json-ish block** for machine use, but that’s extra.

-----

## quality criteria

**specificity**
- [ ] metrics are crisply defined (how to compute them is clear)  
- [ ] thresholds are ranges/conditions, not vibes  
- [ ] procedures tell a stranger how to collect

**relevance**
- [ ] metrics actually track what matters, not just what’s easy to count  
- [ ] at least one metric per important dimension

**parsimony**
- [ ] not more than ~3–7 top-level metrics (avoid dashboard sprawl)  
- [ ] trivial redundancies removed

**fail-closed honesty**
- [ ] ambiguous dimensions labeled as needs_clarification, not faked  
- [ ] no metric claims more precision than you can deliver

**decision-link**
- [ ] it’s obvious what you’d DO given the spec’s outputs  
- [ ] success/failure conditions inform real choices

-----

## genre-specific patterns

### career / job choice
- metrics: energy after work, dread-before-work, learning density, comp, family conflict events, optionality moves (recruiter pings, external offers).  
- thresholds: e.g. “if dread ≥4/5 for 3 weeks, we revisit; if learning density ≤2/5 for 3 months, it’s a ‘no-growth’ job.”

### school choice
- metrics: kid affect before/after school, meltdown frequency, curiosity (spontaneous questions about school), commute time, parent stress.  
- thresholds: “if meltdown days >2/wk for 4 weeks, we intervene; if kid affect stays ≥4/5 and meltdown <1/wk, we treat as good fit.”

### health / protocols
- metrics: symptom frequency, severity, recovery time, treatment side-effects, adherence.  
- thresholds: define “protocol working” vs “tolerable” vs “abandon”.

### relationship / family
- metrics: repair speed after conflict, quality-time hours, bids for connection acknowledged, resentment self-rating.  
- thresholds: triggers for conversation or external help.

### projects / creative work
- metrics: hours of deep work, output units (drafts, commits), boredom/frustration ratings, flow episodes.  
- thresholds: decide when to pivot vs push through.

-----

## anti-patterns

### “metric cosplay”
symptom: lots of numbers that don’t drive decisions.  
fix: for each metric, ask “what choice does this inform?”

### “everything is a 1–10 scale”
symptom: overuse of generic ratings with no anchors.  
fix: define what 2, 5, 8 actually mean in concrete behaviors.

### fake precision
symptom: 2-decimal targets with no justification.  
fix: use ranges, medians, rough buckets unless you truly have tight control.

### under-specified procedures
symptom: “we’ll just track it” with no who/when/where.  
fix: treat each metric like an API: define the collection contract.

### collapsing operationalize into evidence
symptom: “the evidence says…” with no explicit metrics or rules.  
fix: evidence fills the spec; operationalize defines the spec.

-----

## integration with other ops

**upstream:**  
- reframe → pick a representation that makes operationalization natural (control, resource, game)  
- decompose → surface the relevant dimensions to operationalize  
- antithesize → operationalize both thesis and antithesis, compare what each actually demands

**downstream:**  
- evidence → fill the spec with real data; test hypotheses  
- simulate → use metrics/thresholds as state variables in future trajectories  
- attack → stress-test the spec (can metrics be gamed? thresholds mis-set?)  
- test → push metrics to extremes to see where they break  
- prioritize → allocate attention/effort to metrics that matter most

-----

## examples (mini)

### example 1: “i want garden leave to ‘be worth it’”

- horizon: 12 months  
- dimensions: financial runway, health, family, future options  
- metrics:
  - runway: cash months remaining at current burn (monthly)  
  - health: weekly fatigue + pain self-rating (1–5)  
  - family: evenings with full presence (count/wk)  
  - future options: # of serious paths with written 1–2 page dossiers  
- thresholds:
  - success: ≥3 serious options + stable health (avg ≤2/5 pain/fatigue) + ≥3 presence-evenings/wk  
  - warning: <2 options after 9 months or presence-evenings <2/wk for 3 weeks  
- procedure: update spreadsheet weekly; monthly review with alyson.

---

### example 2: “alpha should be clearly better than public”

- horizon: 3–5 years  
- dimensions: academic performance, kid affect, logistics, parental stress  
- metrics:
  - test gains vs matched peers  
  - affect: kid’s enjoyment rating (1–5, weekly)  
  - logistics: commute time; disruption events  
  - parental stress: weekly rating + “school-admin drama” incidents  
- thresholds:
  - alpha “wins” if ≥ modest academic gain + non-worse affect/stress/logistics  
- missing: long-run alumni data → mark as needs_clarification.

---

### example 3: “this migraine protocol works for alyson”

- horizon: 3–6 months  
- dimensions: frequency, severity, duration, recovery, side effects  
- metrics:
  - frequency: attacks/month  
  - severity: 0–10 scale per attack  
  - duration: hours/attack  
  - side effects: 0–5 burden scale  
- thresholds:
  - “working”: frequency ≤2/month and severity ≤6 and side-effect burden ≤2 for 3 consecutive months  
  - “tolerable”: looser band; triggers re-evaluation  
- procedure: daily log; monthly summary.

-----

## meta-note

operationalize is the **contract-writing op**.

canonicalize makes move specs executable by any llm.  
operationalize makes your *life claims* executable by reality.

once a wish/belief/plan is operationalized, you can:

- test it  
- monitor it  
- argue about it with much less bullshit  

and most importantly: you can **notice when it’s failing** in time to do something about it.